; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude DragTeach-request.msg.html

(cl:defclass <DragTeach-request> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:float
    :initform 0.0)
   (describe_msg
    :reader describe_msg
    :initarg :describe_msg
    :type cl:string
    :initform ""))
)

(cl:defclass DragTeach-request (<DragTeach-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DragTeach-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DragTeach-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<DragTeach-request> is deprecated: use iserve_srvs-srv:DragTeach-request instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <DragTeach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:timeStamp-val is deprecated.  Use iserve_srvs-srv:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'describe_msg-val :lambda-list '(m))
(cl:defmethod describe_msg-val ((m <DragTeach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:describe_msg-val is deprecated.  Use iserve_srvs-srv:describe_msg instead.")
  (describe_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DragTeach-request>) ostream)
  "Serializes a message object of type '<DragTeach-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeStamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'describe_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'describe_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DragTeach-request>) istream)
  "Deserializes a message object of type '<DragTeach-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeStamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'describe_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'describe_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DragTeach-request>)))
  "Returns string type for a service object of type '<DragTeach-request>"
  "iserve_srvs/DragTeachRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DragTeach-request)))
  "Returns string type for a service object of type 'DragTeach-request"
  "iserve_srvs/DragTeachRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DragTeach-request>)))
  "Returns md5sum for a message object of type '<DragTeach-request>"
  "0ec3616815302eee28b553178a1eed29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DragTeach-request)))
  "Returns md5sum for a message object of type 'DragTeach-request"
  "0ec3616815302eee28b553178a1eed29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DragTeach-request>)))
  "Returns full string definition for message of type '<DragTeach-request>"
  (cl:format cl:nil "#absolute timestamp from start(0)~%float64 timeStamp~%~%#brief explain of the point~%string describe_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DragTeach-request)))
  "Returns full string definition for message of type 'DragTeach-request"
  (cl:format cl:nil "#absolute timestamp from start(0)~%float64 timeStamp~%~%#brief explain of the point~%string describe_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DragTeach-request>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'describe_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DragTeach-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DragTeach-request
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':describe_msg (describe_msg msg))
))
;//! \htmlinclude DragTeach-response.msg.html

(cl:defclass <DragTeach-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DragTeach-response (<DragTeach-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DragTeach-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DragTeach-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<DragTeach-response> is deprecated: use iserve_srvs-srv:DragTeach-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DragTeach-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:success-val is deprecated.  Use iserve_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DragTeach-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:message-val is deprecated.  Use iserve_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DragTeach-response>) ostream)
  "Serializes a message object of type '<DragTeach-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DragTeach-response>) istream)
  "Deserializes a message object of type '<DragTeach-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DragTeach-response>)))
  "Returns string type for a service object of type '<DragTeach-response>"
  "iserve_srvs/DragTeachResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DragTeach-response)))
  "Returns string type for a service object of type 'DragTeach-response"
  "iserve_srvs/DragTeachResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DragTeach-response>)))
  "Returns md5sum for a message object of type '<DragTeach-response>"
  "0ec3616815302eee28b553178a1eed29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DragTeach-response)))
  "Returns md5sum for a message object of type 'DragTeach-response"
  "0ec3616815302eee28b553178a1eed29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DragTeach-response>)))
  "Returns full string definition for message of type '<DragTeach-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DragTeach-response)))
  "Returns full string definition for message of type 'DragTeach-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DragTeach-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DragTeach-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DragTeach-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DragTeach)))
  'DragTeach-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DragTeach)))
  'DragTeach-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DragTeach)))
  "Returns string type for a service object of type '<DragTeach>"
  "iserve_srvs/DragTeach")