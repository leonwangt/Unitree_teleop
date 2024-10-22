;; Auto-generated. Do not edit!


(when (boundp 'iserve_msgs::ManipulationCommand)
  (if (not (find-package "ISERVE_MSGS"))
    (make-package "ISERVE_MSGS"))
  (shadow 'ManipulationCommand (find-package "ISERVE_MSGS")))
(unless (find-package "ISERVE_MSGS::MANIPULATIONCOMMAND")
  (make-package "ISERVE_MSGS::MANIPULATIONCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ManipulationCommand.msg.html


(defclass iserve_msgs::ManipulationCommand
  :super ros::object
  :slots (_drawer_id _object_name _operation_type _grasp_milk ))

(defmethod iserve_msgs::ManipulationCommand
  (:init
   (&key
    ((:drawer_id __drawer_id) 0)
    ((:object_name __object_name) "")
    ((:operation_type __operation_type) "")
    ((:grasp_milk __grasp_milk) nil)
    )
   (send-super :init)
   (setq _drawer_id (round __drawer_id))
   (setq _object_name (string __object_name))
   (setq _operation_type (string __operation_type))
   (setq _grasp_milk __grasp_milk)
   self)
  (:drawer_id
   (&optional __drawer_id)
   (if __drawer_id (setq _drawer_id __drawer_id)) _drawer_id)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:operation_type
   (&optional __operation_type)
   (if __operation_type (setq _operation_type __operation_type)) _operation_type)
  (:grasp_milk
   (&optional (__grasp_milk :null))
   (if (not (eq __grasp_milk :null)) (setq _grasp_milk __grasp_milk)) _grasp_milk)
  (:serialization-length
   ()
   (+
    ;; int32 _drawer_id
    4
    ;; string _object_name
    4 (length _object_name)
    ;; string _operation_type
    4 (length _operation_type)
    ;; bool _grasp_milk
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _drawer_id
       (write-long _drawer_id s)
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; string _operation_type
       (write-long (length _operation_type) s) (princ _operation_type s)
     ;; bool _grasp_milk
       (if _grasp_milk (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _drawer_id
     (setq _drawer_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _operation_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operation_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _grasp_milk
     (setq _grasp_milk (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iserve_msgs::ManipulationCommand :md5sum-) "7bd5aa1378690e7afd00443d907131aa")
(setf (get iserve_msgs::ManipulationCommand :datatype-) "iserve_msgs/ManipulationCommand")
(setf (get iserve_msgs::ManipulationCommand :definition-)
      "int32 drawer_id          #对几号抽屉进行抓放
string object_name       #抓取物体的名称
string operation_type    #操作模式，loading or unloading
bool grasp_milk          #是否抓取牛奶

")



(provide :iserve_msgs/ManipulationCommand "7bd5aa1378690e7afd00443d907131aa")


