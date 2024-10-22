; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude JointPose-request.msg.html

(cl:defclass <JointPose-request> (roslisp-msg-protocol:ros-message)
  ((jointNo
    :reader jointNo
    :initarg :jointNo
    :type cl:integer
    :initform 0)
   (isNeedCalibration
    :reader isNeedCalibration
    :initarg :isNeedCalibration
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JointPose-request (<JointPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<JointPose-request> is deprecated: use iserve_srvs-srv:JointPose-request instead.")))

(cl:ensure-generic-function 'jointNo-val :lambda-list '(m))
(cl:defmethod jointNo-val ((m <JointPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:jointNo-val is deprecated.  Use iserve_srvs-srv:jointNo instead.")
  (jointNo m))

(cl:ensure-generic-function 'isNeedCalibration-val :lambda-list '(m))
(cl:defmethod isNeedCalibration-val ((m <JointPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:isNeedCalibration-val is deprecated.  Use iserve_srvs-srv:isNeedCalibration instead.")
  (isNeedCalibration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointPose-request>) ostream)
  "Serializes a message object of type '<JointPose-request>"
  (cl:let* ((signed (cl:slot-value msg 'jointNo)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isNeedCalibration) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointPose-request>) istream)
  "Deserializes a message object of type '<JointPose-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jointNo) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'isNeedCalibration) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointPose-request>)))
  "Returns string type for a service object of type '<JointPose-request>"
  "iserve_srvs/JointPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPose-request)))
  "Returns string type for a service object of type 'JointPose-request"
  "iserve_srvs/JointPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointPose-request>)))
  "Returns md5sum for a message object of type '<JointPose-request>"
  "949fbcedff97c69401016e18f534c384")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointPose-request)))
  "Returns md5sum for a message object of type 'JointPose-request"
  "949fbcedff97c69401016e18f534c384")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointPose-request>)))
  "Returns full string definition for message of type '<JointPose-request>"
  (cl:format cl:nil "int32  jointNo~%bool isNeedCalibration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointPose-request)))
  "Returns full string definition for message of type 'JointPose-request"
  (cl:format cl:nil "int32  jointNo~%bool isNeedCalibration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointPose-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointPose-request
    (cl:cons ':jointNo (jointNo msg))
    (cl:cons ':isNeedCalibration (isNeedCalibration msg))
))
;//! \htmlinclude JointPose-response.msg.html

(cl:defclass <JointPose-response> (roslisp-msg-protocol:ros-message)
  ((reference_frame
    :reader reference_frame
    :initarg :reference_frame
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass JointPose-response (<JointPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<JointPose-response> is deprecated: use iserve_srvs-srv:JointPose-response instead.")))

(cl:ensure-generic-function 'reference_frame-val :lambda-list '(m))
(cl:defmethod reference_frame-val ((m <JointPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:reference_frame-val is deprecated.  Use iserve_srvs-srv:reference_frame instead.")
  (reference_frame m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <JointPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:success-val is deprecated.  Use iserve_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <JointPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:transform-val is deprecated.  Use iserve_srvs-srv:transform instead.")
  (transform m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointPose-response>) ostream)
  "Serializes a message object of type '<JointPose-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reference_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reference_frame))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointPose-response>) istream)
  "Deserializes a message object of type '<JointPose-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reference_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointPose-response>)))
  "Returns string type for a service object of type '<JointPose-response>"
  "iserve_srvs/JointPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPose-response)))
  "Returns string type for a service object of type 'JointPose-response"
  "iserve_srvs/JointPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointPose-response>)))
  "Returns md5sum for a message object of type '<JointPose-response>"
  "949fbcedff97c69401016e18f534c384")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointPose-response)))
  "Returns md5sum for a message object of type 'JointPose-response"
  "949fbcedff97c69401016e18f534c384")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointPose-response>)))
  "Returns full string definition for message of type '<JointPose-response>"
  (cl:format cl:nil "string reference_frame~%bool success~%geometry_msgs/Transform transform~%~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointPose-response)))
  "Returns full string definition for message of type 'JointPose-response"
  (cl:format cl:nil "string reference_frame~%bool success~%geometry_msgs/Transform transform~%~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointPose-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'reference_frame))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointPose-response
    (cl:cons ':reference_frame (reference_frame msg))
    (cl:cons ':success (success msg))
    (cl:cons ':transform (transform msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointPose)))
  'JointPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointPose)))
  'JointPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPose)))
  "Returns string type for a service object of type '<JointPose>"
  "iserve_srvs/JointPose")