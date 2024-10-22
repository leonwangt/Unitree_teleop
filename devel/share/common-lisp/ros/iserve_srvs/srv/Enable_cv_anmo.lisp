; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude Enable_cv_anmo-request.msg.html

(cl:defclass <Enable_cv_anmo-request> (roslisp-msg-protocol:ros-message)
  ((Enable
    :reader Enable
    :initarg :Enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Enable_cv_anmo-request (<Enable_cv_anmo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Enable_cv_anmo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Enable_cv_anmo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<Enable_cv_anmo-request> is deprecated: use iserve_srvs-srv:Enable_cv_anmo-request instead.")))

(cl:ensure-generic-function 'Enable-val :lambda-list '(m))
(cl:defmethod Enable-val ((m <Enable_cv_anmo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:Enable-val is deprecated.  Use iserve_srvs-srv:Enable instead.")
  (Enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Enable_cv_anmo-request>) ostream)
  "Serializes a message object of type '<Enable_cv_anmo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Enable_cv_anmo-request>) istream)
  "Deserializes a message object of type '<Enable_cv_anmo-request>"
    (cl:setf (cl:slot-value msg 'Enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Enable_cv_anmo-request>)))
  "Returns string type for a service object of type '<Enable_cv_anmo-request>"
  "iserve_srvs/Enable_cv_anmoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Enable_cv_anmo-request)))
  "Returns string type for a service object of type 'Enable_cv_anmo-request"
  "iserve_srvs/Enable_cv_anmoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Enable_cv_anmo-request>)))
  "Returns md5sum for a message object of type '<Enable_cv_anmo-request>"
  "e1e111322e6a2085adde944da2f908ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Enable_cv_anmo-request)))
  "Returns md5sum for a message object of type 'Enable_cv_anmo-request"
  "e1e111322e6a2085adde944da2f908ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Enable_cv_anmo-request>)))
  "Returns full string definition for message of type '<Enable_cv_anmo-request>"
  (cl:format cl:nil "bool Enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Enable_cv_anmo-request)))
  "Returns full string definition for message of type 'Enable_cv_anmo-request"
  (cl:format cl:nil "bool Enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Enable_cv_anmo-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Enable_cv_anmo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Enable_cv_anmo-request
    (cl:cons ':Enable (Enable msg))
))
;//! \htmlinclude Enable_cv_anmo-response.msg.html

(cl:defclass <Enable_cv_anmo-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Enable_cv_anmo-response (<Enable_cv_anmo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Enable_cv_anmo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Enable_cv_anmo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<Enable_cv_anmo-response> is deprecated: use iserve_srvs-srv:Enable_cv_anmo-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <Enable_cv_anmo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:ok-val is deprecated.  Use iserve_srvs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Enable_cv_anmo-response>) ostream)
  "Serializes a message object of type '<Enable_cv_anmo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Enable_cv_anmo-response>) istream)
  "Deserializes a message object of type '<Enable_cv_anmo-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Enable_cv_anmo-response>)))
  "Returns string type for a service object of type '<Enable_cv_anmo-response>"
  "iserve_srvs/Enable_cv_anmoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Enable_cv_anmo-response)))
  "Returns string type for a service object of type 'Enable_cv_anmo-response"
  "iserve_srvs/Enable_cv_anmoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Enable_cv_anmo-response>)))
  "Returns md5sum for a message object of type '<Enable_cv_anmo-response>"
  "e1e111322e6a2085adde944da2f908ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Enable_cv_anmo-response)))
  "Returns md5sum for a message object of type 'Enable_cv_anmo-response"
  "e1e111322e6a2085adde944da2f908ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Enable_cv_anmo-response>)))
  "Returns full string definition for message of type '<Enable_cv_anmo-response>"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Enable_cv_anmo-response)))
  "Returns full string definition for message of type 'Enable_cv_anmo-response"
  (cl:format cl:nil "bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Enable_cv_anmo-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Enable_cv_anmo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Enable_cv_anmo-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Enable_cv_anmo)))
  'Enable_cv_anmo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Enable_cv_anmo)))
  'Enable_cv_anmo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Enable_cv_anmo)))
  "Returns string type for a service object of type '<Enable_cv_anmo>"
  "iserve_srvs/Enable_cv_anmo")