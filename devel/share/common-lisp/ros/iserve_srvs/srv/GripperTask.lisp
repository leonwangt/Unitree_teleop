; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude GripperTask-request.msg.html

(cl:defclass <GripperTask-request> (roslisp-msg-protocol:ros-message)
  ((isWaitFinish
    :reader isWaitFinish
    :initarg :isWaitFinish
    :type cl:boolean
    :initform cl:nil)
   (gripper_mode
    :reader gripper_mode
    :initarg :gripper_mode
    :type cl:integer
    :initform 0)
   (command_cur
    :reader command_cur
    :initarg :command_cur
    :type cl:float
    :initform 0.0)
   (command_pos
    :reader command_pos
    :initarg :command_pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperTask-request (<GripperTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<GripperTask-request> is deprecated: use iserve_srvs-srv:GripperTask-request instead.")))

(cl:ensure-generic-function 'isWaitFinish-val :lambda-list '(m))
(cl:defmethod isWaitFinish-val ((m <GripperTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:isWaitFinish-val is deprecated.  Use iserve_srvs-srv:isWaitFinish instead.")
  (isWaitFinish m))

(cl:ensure-generic-function 'gripper_mode-val :lambda-list '(m))
(cl:defmethod gripper_mode-val ((m <GripperTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:gripper_mode-val is deprecated.  Use iserve_srvs-srv:gripper_mode instead.")
  (gripper_mode m))

(cl:ensure-generic-function 'command_cur-val :lambda-list '(m))
(cl:defmethod command_cur-val ((m <GripperTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:command_cur-val is deprecated.  Use iserve_srvs-srv:command_cur instead.")
  (command_cur m))

(cl:ensure-generic-function 'command_pos-val :lambda-list '(m))
(cl:defmethod command_pos-val ((m <GripperTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:command_pos-val is deprecated.  Use iserve_srvs-srv:command_pos instead.")
  (command_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperTask-request>) ostream)
  "Serializes a message object of type '<GripperTask-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isWaitFinish) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gripper_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'command_cur))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'command_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperTask-request>) istream)
  "Deserializes a message object of type '<GripperTask-request>"
    (cl:setf (cl:slot-value msg 'isWaitFinish) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'command_cur) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'command_pos) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperTask-request>)))
  "Returns string type for a service object of type '<GripperTask-request>"
  "iserve_srvs/GripperTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperTask-request)))
  "Returns string type for a service object of type 'GripperTask-request"
  "iserve_srvs/GripperTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperTask-request>)))
  "Returns md5sum for a message object of type '<GripperTask-request>"
  "007f99435ca61cac594944ddc645a469")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperTask-request)))
  "Returns md5sum for a message object of type 'GripperTask-request"
  "007f99435ca61cac594944ddc645a469")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperTask-request>)))
  "Returns full string definition for message of type '<GripperTask-request>"
  (cl:format cl:nil "bool isWaitFinish~%int32 gripper_mode~%float64 command_cur~%float64 command_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperTask-request)))
  "Returns full string definition for message of type 'GripperTask-request"
  (cl:format cl:nil "bool isWaitFinish~%int32 gripper_mode~%float64 command_cur~%float64 command_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperTask-request>))
  (cl:+ 0
     1
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperTask-request
    (cl:cons ':isWaitFinish (isWaitFinish msg))
    (cl:cons ':gripper_mode (gripper_mode msg))
    (cl:cons ':command_cur (command_cur msg))
    (cl:cons ':command_pos (command_pos msg))
))
;//! \htmlinclude GripperTask-response.msg.html

(cl:defclass <GripperTask-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GripperTask-response (<GripperTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<GripperTask-response> is deprecated: use iserve_srvs-srv:GripperTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GripperTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:success-val is deprecated.  Use iserve_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperTask-response>) ostream)
  "Serializes a message object of type '<GripperTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperTask-response>) istream)
  "Deserializes a message object of type '<GripperTask-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperTask-response>)))
  "Returns string type for a service object of type '<GripperTask-response>"
  "iserve_srvs/GripperTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperTask-response)))
  "Returns string type for a service object of type 'GripperTask-response"
  "iserve_srvs/GripperTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperTask-response>)))
  "Returns md5sum for a message object of type '<GripperTask-response>"
  "007f99435ca61cac594944ddc645a469")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperTask-response)))
  "Returns md5sum for a message object of type 'GripperTask-response"
  "007f99435ca61cac594944ddc645a469")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperTask-response>)))
  "Returns full string definition for message of type '<GripperTask-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperTask-response)))
  "Returns full string definition for message of type 'GripperTask-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperTask-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperTask-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GripperTask)))
  'GripperTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GripperTask)))
  'GripperTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperTask)))
  "Returns string type for a service object of type '<GripperTask>"
  "iserve_srvs/GripperTask")