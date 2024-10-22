; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude DragTeachSwitch-request.msg.html

(cl:defclass <DragTeachSwitch-request> (roslisp-msg-protocol:ros-message)
  ((swith_on
    :reader swith_on
    :initarg :swith_on
    :type cl:boolean
    :initform cl:nil)
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:string
    :initform ""))
)

(cl:defclass DragTeachSwitch-request (<DragTeachSwitch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DragTeachSwitch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DragTeachSwitch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<DragTeachSwitch-request> is deprecated: use iserve_srvs-srv:DragTeachSwitch-request instead.")))

(cl:ensure-generic-function 'swith_on-val :lambda-list '(m))
(cl:defmethod swith_on-val ((m <DragTeachSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:swith_on-val is deprecated.  Use iserve_srvs-srv:swith_on instead.")
  (swith_on m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <DragTeachSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:task_id-val is deprecated.  Use iserve_srvs-srv:task_id instead.")
  (task_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DragTeachSwitch-request>) ostream)
  "Serializes a message object of type '<DragTeachSwitch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'swith_on) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DragTeachSwitch-request>) istream)
  "Deserializes a message object of type '<DragTeachSwitch-request>"
    (cl:setf (cl:slot-value msg 'swith_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DragTeachSwitch-request>)))
  "Returns string type for a service object of type '<DragTeachSwitch-request>"
  "iserve_srvs/DragTeachSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DragTeachSwitch-request)))
  "Returns string type for a service object of type 'DragTeachSwitch-request"
  "iserve_srvs/DragTeachSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DragTeachSwitch-request>)))
  "Returns md5sum for a message object of type '<DragTeachSwitch-request>"
  "a0242dfc470bd214b12fa79aa2a5ee54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DragTeachSwitch-request)))
  "Returns md5sum for a message object of type 'DragTeachSwitch-request"
  "a0242dfc470bd214b12fa79aa2a5ee54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DragTeachSwitch-request>)))
  "Returns full string definition for message of type '<DragTeachSwitch-request>"
  (cl:format cl:nil "#indicate start or stop drag teach~%bool swith_on~%~%#record file name~%string task_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DragTeachSwitch-request)))
  "Returns full string definition for message of type 'DragTeachSwitch-request"
  (cl:format cl:nil "#indicate start or stop drag teach~%bool swith_on~%~%#record file name~%string task_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DragTeachSwitch-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'task_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DragTeachSwitch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DragTeachSwitch-request
    (cl:cons ':swith_on (swith_on msg))
    (cl:cons ':task_id (task_id msg))
))
;//! \htmlinclude DragTeachSwitch-response.msg.html

(cl:defclass <DragTeachSwitch-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass DragTeachSwitch-response (<DragTeachSwitch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DragTeachSwitch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DragTeachSwitch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<DragTeachSwitch-response> is deprecated: use iserve_srvs-srv:DragTeachSwitch-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DragTeachSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:success-val is deprecated.  Use iserve_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DragTeachSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:message-val is deprecated.  Use iserve_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DragTeachSwitch-response>) ostream)
  "Serializes a message object of type '<DragTeachSwitch-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DragTeachSwitch-response>) istream)
  "Deserializes a message object of type '<DragTeachSwitch-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DragTeachSwitch-response>)))
  "Returns string type for a service object of type '<DragTeachSwitch-response>"
  "iserve_srvs/DragTeachSwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DragTeachSwitch-response)))
  "Returns string type for a service object of type 'DragTeachSwitch-response"
  "iserve_srvs/DragTeachSwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DragTeachSwitch-response>)))
  "Returns md5sum for a message object of type '<DragTeachSwitch-response>"
  "a0242dfc470bd214b12fa79aa2a5ee54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DragTeachSwitch-response)))
  "Returns md5sum for a message object of type 'DragTeachSwitch-response"
  "a0242dfc470bd214b12fa79aa2a5ee54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DragTeachSwitch-response>)))
  "Returns full string definition for message of type '<DragTeachSwitch-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DragTeachSwitch-response)))
  "Returns full string definition for message of type 'DragTeachSwitch-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DragTeachSwitch-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DragTeachSwitch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DragTeachSwitch-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DragTeachSwitch)))
  'DragTeachSwitch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DragTeachSwitch)))
  'DragTeachSwitch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DragTeachSwitch)))
  "Returns string type for a service object of type '<DragTeachSwitch>"
  "iserve_srvs/DragTeachSwitch")