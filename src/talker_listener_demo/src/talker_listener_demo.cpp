#include <stdio.h>
#include <ros/ros.h>
#include <iostream>
#include <random>  // 导入随机数库
#include <chrono>  // 用于获取系统时间
#include <thread>
#include <csignal>
#include <lcm/lcm-cpp.hpp>
#include "exlcm/unitree_h1_lcm.hpp"  
#include "MotorCommandLcm/MotorCommand.hpp"  
#include "MotorCommandLcm/MotorState.hpp"  

#include <sensor_msgs/JointState.h>
#include <iserve_msgs/JointCommand.h>

// int main(int argc, char **argv)
// {
//     lcm::LCM lcm;
//     if (!lcm.good()) {
//         return 1;
//     }

//     exlcm::example_t msg;
//     msg.timestamp = 0;
//     msg.position[0] = 1.0;
//     msg.position[1] = 2.0;
//     msg.position[2] = 3.0;
//     msg.orientation[0] = 1.0;
//     msg.orientation[1] = 0.0;
//     msg.orientation[2] = 0.0;
//     msg.orientation[3] = 0.0;
//     msg.num_ranges = 5;
//     msg.ranges.resize(msg.num_ranges);
//     for (int i = 0; i < msg.num_ranges; i++) {
//         msg.ranges[i] = i;
//     }
 
//     while (1)
//     {
//         printf("aaaaa\n");
//         lcm.publish("EXAMPLE_CHANNEL", &msg);
//     }


//     return 0;
// }
/*******************************example*****************************/
// class ExampleHandler
// {
//     public:
//         ExampleHandler(const lcm::LCM& lcm, const std::string& channel) : lcm_(lcm) {
//             lcm_.subscribe(channel, &ExampleHandler::handleMessage, this);
//         }

//         void handleMessage(const lcm::ReceiveBuffer* rbuf,
//                         const std::string& channel,
//                         const exlcm::example_t* msg) {
//             // 处理接收到的消息
//             std::cout << "Received message:" << std::endl;
//             std::cout << "Timestamp: " << msg->timestamp << std::endl;
//             std::cout << "Position: [" << msg->position[0] << ", " << msg->position[1] << ", " << msg->position[2] << "]" << std::endl;
//             std::cout << "Orientation: [" << msg->orientation[0] << ", " << msg->orientation[1] << ", " << msg->orientation[2] << ", " << msg->orientation[3] << "]" << std::endl;
//             std::cout << "Ranges: ";
//             for (int i = 0; i < msg->num_ranges; i++) {
//                 std::cout << msg->ranges[i] << " ";
//             }
//             std::cout << std::endl;
//         }

//     private:
//         lcm::LCM lcm_;//
// };

// int main(int argc, char** argv) {
//     lcm::LCM lcm;
//     if (!lcm.good()) {
//         std::cerr << "LCM not initialized" << std::endl;
//         return 1;
//     }

//     ExampleHandler handler(lcm, "EXAMPLE_CHANNEL");
//     std::cout << "Listening for messages on channel 'EXAMPLE_CHANNEL'..." << std::endl;

//     while (0 == lcm.handle());
//     return 0;
// }
/************************************example***************************** */

class MotorStateHandler
{
    public:
        MotorStateHandler(const lcm::LCM& lcm, const std::string& channel,ros::Publisher& joint_pub) : lcm_(lcm),joint_pub_(joint_pub) {
            lcm_.subscribe(channel, &MotorStateHandler::handleMessage, this);
        }

        void handleMessage(const lcm::ReceiveBuffer* rbuf, const std::string& channel, const MotorCommandLcm::MotorState* msg) {
            
            // 处理接收到的消息
            std::cout << "Received message:" << std::endl;
            std::cout << "Timestamp: " << msg->timestamp << std::endl;
            std::cout << "Left_arm pos:  [" << msg->q[0] << ", " << msg->q[1] << ", " << msg->q[2] <<" , " << msg->q[6]<< "]" << std::endl;
            std::cout << "Right_arm_pos: [" << msg->q[3] << ", " << msg->q[4] << ", " << msg->q[5] << ", " << msg->q[7] << "]" << std::endl;
            std::cout << "Ranges: ";
            for (int i = 0; i < msg->num_ranges; i++) {
                std::cout << msg->ranges[i] << " ";
            }
            std::cout << std::endl;
            

            /**************转化为ros话题发布**************/

            // 将接收到的LCM消息存储在类的成员变量中
            joint_state_.header.stamp = ros::Time::now();
            
            // 设置关节名称
            joint_state_.jointNames = {
                "left_shoulder_yaw", "left_shoulder_pitch", "left_shoulder_roll","left_elbow_yaw" ,
                "right_shoulder_pitch", "right_shoulder_roll","right_shoulder_yaw","right_elbow_yaw"
            };

            // 从LCM消息更新关节位置数据
            joint_state_.position.resize(8);

            for (int i = 0; i < 8; i++){
                // 创建随机数生成器并用当前时间作为种子
                std::default_random_engine generator(std::chrono::system_clock::now().time_since_epoch().count());

                // 设置随机数范围（假设关节角度范围是 -3.14 到 3.14）
                std::uniform_real_distribution<double> distribution(-3.14, 3.14);

                // 生成并赋值给 position[i]
                joint_state_.position[i] = distribution(generator);
                std::cout << "----------------------" << std::endl;
                std::cout << joint_state_.position[i] << std::endl;
            }

 
            // joint_state_.position = {
            //     msg->q[4], msg->q[5], msg->q[6], msg->q[7], // Right 
            //     msg->q[1], msg->q[2], msg->q[0], msg->q[3]  // Left
            // };
        
            // 发布ROS话题
            joint_pub_.publish(joint_state_);

            // 打印接收到的关节数据（用于调试）
            // std::cout << "Received and published joint state:" << std::endl;
            // std::cout << "Left_arm pos:  [" << msg->q[0] << ", " << msg->q[1] 
            //         << ", " << msg->q[2] << ", " << msg->q[6] << "]" << std::endl;
            // std::cout << "Right_arm pos: [" << msg->q[3] << ", " << msg->q[4] 
            //         << ", " << msg->q[5] << ", " << msg->q[7] << "]" << std::endl;
        }
    private:
        lcm::LCM lcm_;
        ros::Publisher& joint_pub_;
        iserve_msgs::JointCommand joint_state_;  
};

        
void teleoperation_joint_command_pub(ros::Publisher& joint_pub) {
        iserve_msgs::JointCommand joint_command;  

        joint_command.header.stamp = ros::Time::now();
        
        joint_command.jointNames = {
            "left_shoulder_yaw", "left_shoulder_pitch", "left_shoulder_roll","left_elbow_yaw" ,
            "right_shoulder_pitch", "right_shoulder_roll","right_shoulder_yaw","right_elbow_yaw"
        };

        joint_command.position.resize(8);

        for (int i = 0; i < 8; i++){
            std::default_random_engine generator(std::chrono::system_clock::now().time_since_epoch().count());
            std::uniform_real_distribution<double> distribution(-3.14, 3.14);
            joint_command.position[i] = distribution(generator);
            std::cout << "----------------------" << std::endl;
            std::cout << joint_command.position[i] << std::endl;
        }
        // 发布ROS话题
        joint_pub.publish(joint_command);
}

int main(int argc, char** argv) {
    // lcm::LCM lcm;
    // if (!lcm.good()) {
    //     std::cerr << "LCM not initialized" << std::endl;
    //     return 1;
    // }
    /*********************ROS********************/
    ros::init(argc, argv, "sim_joint_publisher");
    ros::NodeHandle nh;

    ros::Publisher joint_pub = nh.advertise<iserve_msgs::JointCommand>("/teleop/armJoint/joint_command", 10); 
    // MotorStateHandler handler(lcm, "EXAMPLE_CHANNEL",joint_pub);

    // std::thread lcm_thread([&lcm]() {
    //     while (0 == lcm.handle());  
    // });

    ros::Rate loop_rate(1000);  // 设置发布频率

    while (ros::ok()) {
        teleoperation_joint_command_pub(joint_pub);
        ros::spinOnce();
        loop_rate.sleep();
    }

    /*********************ROS********************/
    // std::cout << "Listening for messages on channel 'EXAMPLE_CHANNEL'..." << std::endl;
    // lcm_thread.join();

    return 0;
}