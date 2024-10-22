;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::GripperTask)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'GripperTask (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::GRIPPERTASK")
  (make-package "ISERVE_SRVS::GRIPPERTASK"))
(unless (find-package "ISERVE_SRVS::GRIPPERTASKREQUEST")
  (make-package "ISERVE_SRVS::GRIPPERTASKREQUEST"))
(unless (find-package "ISERVE_SRVS::GRIPPERTASKRESPONSE")
  (make-package "ISERVE_SRVS::GRIPPERTASKRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::GripperTaskRequest
  :super ros::object
  :slots (_isWaitFinish _gripper_mode _command_cur _command_pos ))

(defmethod iserve_srvs::GripperTaskRequest
  (:init
   (&key
    ((:isWaitFinish __isWaitFinish) nil)
    ((:gripper_mode __gripper_mode) 0)
    ((:command_cur __command_cur) 0.0)
    ((:command_pos __command_pos) 0.0)
    )
   (send-super :init)
   (setq _isWaitFinish __isWaitFinish)
   (setq _gripper_mode (round __gripper_mode))
   (setq _command_cur (float __command_cur))
   (setq _command_pos (float __command_pos))
   self)
  (:isWaitFinish
   (&optional (__isWaitFinish :null))
   (if (not (eq __isWaitFinish :null)) (setq _isWaitFinish __isWaitFinish)) _isWaitFinish)
  (:gripper_mode
   (&optional __gripper_mode)
   (if __gripper_mode (setq _gripper_mode __gripper_mode)) _gripper_mode)
  (:command_cur
   (&optional __command_cur)
   (if __command_cur (setq _command_cur __command_cur)) _command_cur)
  (:command_pos
   (&optional __command_pos)
   (if __command_pos (setq _command_pos __command_pos)) _command_pos)
  (:serialization-length
   ()
   (+
    ;; bool _isWaitFinish
    1
    ;; int32 _gripper_mode
    4
    ;; float64 _command_cur
    8
    ;; float64 _command_pos
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isWaitFinish
       (if _isWaitFinish (write-byte -1 s) (write-byte 0 s))
     ;; int32 _gripper_mode
       (write-long _gripper_mode s)
     ;; float64 _command_cur
       (sys::poke _command_cur (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _command_pos
       (sys::poke _command_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isWaitFinish
     (setq _isWaitFinish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _gripper_mode
     (setq _gripper_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _command_cur
     (setq _command_cur (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _command_pos
     (setq _command_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass iserve_srvs::GripperTaskResponse
  :super ros::object
  :slots (_success ))

(defmethod iserve_srvs::GripperTaskResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iserve_srvs::GripperTask
  :super ros::object
  :slots ())

(setf (get iserve_srvs::GripperTask :md5sum-) "007f99435ca61cac594944ddc645a469")
(setf (get iserve_srvs::GripperTask :datatype-) "iserve_srvs/GripperTask")
(setf (get iserve_srvs::GripperTask :request) iserve_srvs::GripperTaskRequest)
(setf (get iserve_srvs::GripperTask :response) iserve_srvs::GripperTaskResponse)

(defmethod iserve_srvs::GripperTaskRequest
  (:response () (instance iserve_srvs::GripperTaskResponse :init)))

(setf (get iserve_srvs::GripperTaskRequest :md5sum-) "007f99435ca61cac594944ddc645a469")
(setf (get iserve_srvs::GripperTaskRequest :datatype-) "iserve_srvs/GripperTaskRequest")
(setf (get iserve_srvs::GripperTaskRequest :definition-)
      "bool isWaitFinish
int32 gripper_mode
float64 command_cur
float64 command_pos
---
bool success

")

(setf (get iserve_srvs::GripperTaskResponse :md5sum-) "007f99435ca61cac594944ddc645a469")
(setf (get iserve_srvs::GripperTaskResponse :datatype-) "iserve_srvs/GripperTaskResponse")
(setf (get iserve_srvs::GripperTaskResponse :definition-)
      "bool isWaitFinish
int32 gripper_mode
float64 command_cur
float64 command_pos
---
bool success

")



(provide :iserve_srvs/GripperTask "007f99435ca61cac594944ddc645a469")


