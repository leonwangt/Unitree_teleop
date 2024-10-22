; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude ImpedanceTask-request.msg.html

(cl:defclass <ImpedanceTask-request> (roslisp-msg-protocol:ros-message)
  ((swith_on
    :reader swith_on
    :initarg :swith_on
    :type cl:boolean
    :initform cl:nil)
   (control_flag
    :reader control_flag
    :initarg :control_flag
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ImpedanceTask-request (<ImpedanceTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImpedanceTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImpedanceTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<ImpedanceTask-request> is deprecated: use iserve_srvs-srv:ImpedanceTask-request instead.")))

(cl:ensure-generic-function 'swith_on-val :lambda-list '(m))
(cl:defmethod swith_on-val ((m <ImpedanceTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:swith_on-val is deprecated.  Use iserve_srvs-srv:swith_on instead.")
  (swith_on m))

(cl:ensure-generic-function 'control_flag-val :lambda-list '(m))
(cl:defmethod control_flag-val ((m <ImpedanceTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:control_flag-val is deprecated.  Use iserve_srvs-srv:control_flag instead.")
  (control_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImpedanceTask-request>) ostream)
  "Serializes a message object of type '<ImpedanceTask-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'swith_on) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'control_flag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'control_flag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImpedanceTask-request>) istream)
  "Deserializes a message object of type '<ImpedanceTask-request>"
    (cl:setf (cl:slot-value msg 'swith_on) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'control_flag) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'control_flag)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImpedanceTask-request>)))
  "Returns string type for a service object of type '<ImpedanceTask-request>"
  "iserve_srvs/ImpedanceTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImpedanceTask-request)))
  "Returns string type for a service object of type 'ImpedanceTask-request"
  "iserve_srvs/ImpedanceTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImpedanceTask-request>)))
  "Returns md5sum for a message object of type '<ImpedanceTask-request>"
  "21908f874f4e6cb2dd60a1908a933187")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImpedanceTask-request)))
  "Returns md5sum for a message object of type 'ImpedanceTask-request"
  "21908f874f4e6cb2dd60a1908a933187")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImpedanceTask-request>)))
  "Returns full string definition for message of type '<ImpedanceTask-request>"
  (cl:format cl:nil "bool swith_on~%int32[] control_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImpedanceTask-request)))
  "Returns full string definition for message of type 'ImpedanceTask-request"
  (cl:format cl:nil "bool swith_on~%int32[] control_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImpedanceTask-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'control_flag) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImpedanceTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ImpedanceTask-request
    (cl:cons ':swith_on (swith_on msg))
    (cl:cons ':control_flag (control_flag msg))
))
;//! \htmlinclude ImpedanceTask-response.msg.html

(cl:defclass <ImpedanceTask-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ImpedanceTask-response (<ImpedanceTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImpedanceTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImpedanceTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<ImpedanceTask-response> is deprecated: use iserve_srvs-srv:ImpedanceTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ImpedanceTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:success-val is deprecated.  Use iserve_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ImpedanceTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:message-val is deprecated.  Use iserve_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImpedanceTask-response>) ostream)
  "Serializes a message object of type '<ImpedanceTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImpedanceTask-response>) istream)
  "Deserializes a message object of type '<ImpedanceTask-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImpedanceTask-response>)))
  "Returns string type for a service object of type '<ImpedanceTask-response>"
  "iserve_srvs/ImpedanceTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImpedanceTask-response)))
  "Returns string type for a service object of type 'ImpedanceTask-response"
  "iserve_srvs/ImpedanceTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImpedanceTask-response>)))
  "Returns md5sum for a message object of type '<ImpedanceTask-response>"
  "21908f874f4e6cb2dd60a1908a933187")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImpedanceTask-response)))
  "Returns md5sum for a message object of type 'ImpedanceTask-response"
  "21908f874f4e6cb2dd60a1908a933187")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImpedanceTask-response>)))
  "Returns full string definition for message of type '<ImpedanceTask-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImpedanceTask-response)))
  "Returns full string definition for message of type 'ImpedanceTask-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImpedanceTask-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImpedanceTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ImpedanceTask-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ImpedanceTask)))
  'ImpedanceTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ImpedanceTask)))
  'ImpedanceTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImpedanceTask)))
  "Returns string type for a service object of type '<ImpedanceTask>"
  "iserve_srvs/ImpedanceTask")