;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::JointPose)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'JointPose (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::JOINTPOSE")
  (make-package "ISERVE_SRVS::JOINTPOSE"))
(unless (find-package "ISERVE_SRVS::JOINTPOSEREQUEST")
  (make-package "ISERVE_SRVS::JOINTPOSEREQUEST"))
(unless (find-package "ISERVE_SRVS::JOINTPOSERESPONSE")
  (make-package "ISERVE_SRVS::JOINTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass iserve_srvs::JointPoseRequest
  :super ros::object
  :slots (_jointNo _isNeedCalibration ))

(defmethod iserve_srvs::JointPoseRequest
  (:init
   (&key
    ((:jointNo __jointNo) 0)
    ((:isNeedCalibration __isNeedCalibration) nil)
    )
   (send-super :init)
   (setq _jointNo (round __jointNo))
   (setq _isNeedCalibration __isNeedCalibration)
   self)
  (:jointNo
   (&optional __jointNo)
   (if __jointNo (setq _jointNo __jointNo)) _jointNo)
  (:isNeedCalibration
   (&optional (__isNeedCalibration :null))
   (if (not (eq __isNeedCalibration :null)) (setq _isNeedCalibration __isNeedCalibration)) _isNeedCalibration)
  (:serialization-length
   ()
   (+
    ;; int32 _jointNo
    4
    ;; bool _isNeedCalibration
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _jointNo
       (write-long _jointNo s)
     ;; bool _isNeedCalibration
       (if _isNeedCalibration (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _jointNo
     (setq _jointNo (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _isNeedCalibration
     (setq _isNeedCalibration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iserve_srvs::JointPoseResponse
  :super ros::object
  :slots (_reference_frame _success _transform ))

(defmethod iserve_srvs::JointPoseResponse
  (:init
   (&key
    ((:reference_frame __reference_frame) "")
    ((:success __success) nil)
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _reference_frame (string __reference_frame))
   (setq _success __success)
   (setq _transform __transform)
   self)
  (:reference_frame
   (&optional __reference_frame)
   (if __reference_frame (setq _reference_frame __reference_frame)) _reference_frame)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; string _reference_frame
    4 (length _reference_frame)
    ;; bool _success
    1
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _reference_frame
       (write-long (length _reference_frame) s) (princ _reference_frame s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _reference_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reference_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(defclass iserve_srvs::JointPose
  :super ros::object
  :slots ())

(setf (get iserve_srvs::JointPose :md5sum-) "949fbcedff97c69401016e18f534c384")
(setf (get iserve_srvs::JointPose :datatype-) "iserve_srvs/JointPose")
(setf (get iserve_srvs::JointPose :request) iserve_srvs::JointPoseRequest)
(setf (get iserve_srvs::JointPose :response) iserve_srvs::JointPoseResponse)

(defmethod iserve_srvs::JointPoseRequest
  (:response () (instance iserve_srvs::JointPoseResponse :init)))

(setf (get iserve_srvs::JointPoseRequest :md5sum-) "949fbcedff97c69401016e18f534c384")
(setf (get iserve_srvs::JointPoseRequest :datatype-) "iserve_srvs/JointPoseRequest")
(setf (get iserve_srvs::JointPoseRequest :definition-)
      "int32  jointNo
bool isNeedCalibration
---
string reference_frame
bool success
geometry_msgs/Transform transform



================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get iserve_srvs::JointPoseResponse :md5sum-) "949fbcedff97c69401016e18f534c384")
(setf (get iserve_srvs::JointPoseResponse :datatype-) "iserve_srvs/JointPoseResponse")
(setf (get iserve_srvs::JointPoseResponse :definition-)
      "int32  jointNo
bool isNeedCalibration
---
string reference_frame
bool success
geometry_msgs/Transform transform



================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :iserve_srvs/JointPose "949fbcedff97c69401016e18f534c384")


