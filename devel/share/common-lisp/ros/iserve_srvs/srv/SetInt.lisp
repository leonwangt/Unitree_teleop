; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude SetInt-request.msg.html

(cl:defclass <SetInt-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:integer
    :initform 0))
)

(cl:defclass SetInt-request (<SetInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<SetInt-request> is deprecated: use iserve_srvs-srv:SetInt-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <SetInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:input-val is deprecated.  Use iserve_srvs-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt-request>) ostream)
  "Serializes a message object of type '<SetInt-request>"
  (cl:let* ((signed (cl:slot-value msg 'input)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt-request>) istream)
  "Deserializes a message object of type '<SetInt-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt-request>)))
  "Returns string type for a service object of type '<SetInt-request>"
  "iserve_srvs/SetIntRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt-request)))
  "Returns string type for a service object of type 'SetInt-request"
  "iserve_srvs/SetIntRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt-request>)))
  "Returns md5sum for a message object of type '<SetInt-request>"
  "9cc62145209219f185101e72e3ae5c65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt-request)))
  "Returns md5sum for a message object of type 'SetInt-request"
  "9cc62145209219f185101e72e3ae5c65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt-request>)))
  "Returns full string definition for message of type '<SetInt-request>"
  (cl:format cl:nil "int64 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt-request)))
  "Returns full string definition for message of type 'SetInt-request"
  (cl:format cl:nil "int64 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude SetInt-response.msg.html

(cl:defclass <SetInt-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:integer
    :initform 0))
)

(cl:defclass SetInt-response (<SetInt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<SetInt-response> is deprecated: use iserve_srvs-srv:SetInt-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <SetInt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:output-val is deprecated.  Use iserve_srvs-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt-response>) ostream)
  "Serializes a message object of type '<SetInt-response>"
  (cl:let* ((signed (cl:slot-value msg 'output)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt-response>) istream)
  "Deserializes a message object of type '<SetInt-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt-response>)))
  "Returns string type for a service object of type '<SetInt-response>"
  "iserve_srvs/SetIntResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt-response)))
  "Returns string type for a service object of type 'SetInt-response"
  "iserve_srvs/SetIntResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt-response>)))
  "Returns md5sum for a message object of type '<SetInt-response>"
  "9cc62145209219f185101e72e3ae5c65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt-response)))
  "Returns md5sum for a message object of type 'SetInt-response"
  "9cc62145209219f185101e72e3ae5c65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt-response>)))
  "Returns full string definition for message of type '<SetInt-response>"
  (cl:format cl:nil "int64 output~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt-response)))
  "Returns full string definition for message of type 'SetInt-response"
  (cl:format cl:nil "int64 output~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInt)))
  'SetInt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInt)))
  'SetInt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt)))
  "Returns string type for a service object of type '<SetInt>"
  "iserve_srvs/SetInt")