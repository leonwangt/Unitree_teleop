;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::DeliveryRobotTask)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'DeliveryRobotTask (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::DELIVERYROBOTTASK")
  (make-package "ISERVE_SRVS::DELIVERYROBOTTASK"))
(unless (find-package "ISERVE_SRVS::DELIVERYROBOTTASKREQUEST")
  (make-package "ISERVE_SRVS::DELIVERYROBOTTASKREQUEST"))
(unless (find-package "ISERVE_SRVS::DELIVERYROBOTTASKRESPONSE")
  (make-package "ISERVE_SRVS::DELIVERYROBOTTASKRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::DeliveryRobotTaskRequest
  :super ros::object
  :slots (_switch_on _scene_id _look_id _place_id _object_name _speed_scale ))

(defmethod iserve_srvs::DeliveryRobotTaskRequest
  (:init
   (&key
    ((:switch_on __switch_on) nil)
    ((:scene_id __scene_id) 0)
    ((:look_id __look_id) 0)
    ((:place_id __place_id) 0)
    ((:object_name __object_name) "")
    ((:speed_scale __speed_scale) 0.0)
    )
   (send-super :init)
   (setq _switch_on __switch_on)
   (setq _scene_id (round __scene_id))
   (setq _look_id (round __look_id))
   (setq _place_id (round __place_id))
   (setq _object_name (string __object_name))
   (setq _speed_scale (float __speed_scale))
   self)
  (:switch_on
   (&optional (__switch_on :null))
   (if (not (eq __switch_on :null)) (setq _switch_on __switch_on)) _switch_on)
  (:scene_id
   (&optional __scene_id)
   (if __scene_id (setq _scene_id __scene_id)) _scene_id)
  (:look_id
   (&optional __look_id)
   (if __look_id (setq _look_id __look_id)) _look_id)
  (:place_id
   (&optional __place_id)
   (if __place_id (setq _place_id __place_id)) _place_id)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:speed_scale
   (&optional __speed_scale)
   (if __speed_scale (setq _speed_scale __speed_scale)) _speed_scale)
  (:serialization-length
   ()
   (+
    ;; bool _switch_on
    1
    ;; int32 _scene_id
    4
    ;; int32 _look_id
    4
    ;; int32 _place_id
    4
    ;; string _object_name
    4 (length _object_name)
    ;; float64 _speed_scale
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _switch_on
       (if _switch_on (write-byte -1 s) (write-byte 0 s))
     ;; int32 _scene_id
       (write-long _scene_id s)
     ;; int32 _look_id
       (write-long _look_id s)
     ;; int32 _place_id
       (write-long _place_id s)
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; float64 _speed_scale
       (sys::poke _speed_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _switch_on
     (setq _switch_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _scene_id
     (setq _scene_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _look_id
     (setq _look_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _place_id
     (setq _place_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _speed_scale
     (setq _speed_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass iserve_srvs::DeliveryRobotTaskResponse
  :super ros::object
  :slots (_success _message ))

(defmethod iserve_srvs::DeliveryRobotTaskResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iserve_srvs::DeliveryRobotTask
  :super ros::object
  :slots ())

(setf (get iserve_srvs::DeliveryRobotTask :md5sum-) "1d4bbb7bd00384e7a69a86662cfc883c")
(setf (get iserve_srvs::DeliveryRobotTask :datatype-) "iserve_srvs/DeliveryRobotTask")
(setf (get iserve_srvs::DeliveryRobotTask :request) iserve_srvs::DeliveryRobotTaskRequest)
(setf (get iserve_srvs::DeliveryRobotTask :response) iserve_srvs::DeliveryRobotTaskResponse)

(defmethod iserve_srvs::DeliveryRobotTaskRequest
  (:response () (instance iserve_srvs::DeliveryRobotTaskResponse :init)))

(setf (get iserve_srvs::DeliveryRobotTaskRequest :md5sum-) "1d4bbb7bd00384e7a69a86662cfc883c")
(setf (get iserve_srvs::DeliveryRobotTaskRequest :datatype-) "iserve_srvs/DeliveryRobotTaskRequest")
(setf (get iserve_srvs::DeliveryRobotTaskRequest :definition-)
      "bool switch_on       #该次服务调用是否有效
int32 scene_id       #场景id
int32 look_id      #对几号抽屉进行抓放
int32 place_id       #对抽屉的几号放置位进行放置
string object_name   #抓取物体的名称
float64 speed_scale  #用于调速，高中低三挡
---
bool success         #反馈服务是否调用成功
string message       #相关的comment

")

(setf (get iserve_srvs::DeliveryRobotTaskResponse :md5sum-) "1d4bbb7bd00384e7a69a86662cfc883c")
(setf (get iserve_srvs::DeliveryRobotTaskResponse :datatype-) "iserve_srvs/DeliveryRobotTaskResponse")
(setf (get iserve_srvs::DeliveryRobotTaskResponse :definition-)
      "bool switch_on       #该次服务调用是否有效
int32 scene_id       #场景id
int32 look_id      #对几号抽屉进行抓放
int32 place_id       #对抽屉的几号放置位进行放置
string object_name   #抓取物体的名称
float64 speed_scale  #用于调速，高中低三挡
---
bool success         #反馈服务是否调用成功
string message       #相关的comment

")



(provide :iserve_srvs/DeliveryRobotTask "1d4bbb7bd00384e7a69a86662cfc883c")


