; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude PlanSwitch-request.msg.html

(cl:defclass <PlanSwitch-request> (roslisp-msg-protocol:ros-message)
  ((swith_on
    :reader swith_on
    :initarg :swith_on
    :type cl:boolean
    :initform cl:nil)
   (end_pose
    :reader end_pose
    :initarg :end_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joint_pos
    :reader joint_pos
    :initarg :joint_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PlanSwitch-request (<PlanSwitch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanSwitch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanSwitch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<PlanSwitch-request> is deprecated: use iserve_srvs-srv:PlanSwitch-request instead.")))

(cl:ensure-generic-function 'swith_on-val :lambda-list '(m))
(cl:defmethod swith_on-val ((m <PlanSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:swith_on-val is deprecated.  Use iserve_srvs-srv:swith_on instead.")
  (swith_on m))

(cl:ensure-generic-function 'end_pose-val :lambda-list '(m))
(cl:defmethod end_pose-val ((m <PlanSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:end_pose-val is deprecated.  Use iserve_srvs-srv:end_pose instead.")
  (end_pose m))

(cl:ensure-generic-function 'joint_pos-val :lambda-list '(m))
(cl:defmethod joint_pos-val ((m <PlanSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:joint_pos-val is deprecated.  Use iserve_srvs-srv:joint_pos instead.")
  (joint_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanSwitch-request>) ostream)
  "Serializes a message object of type '<PlanSwitch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'swith_on) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'end_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'end_pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_pos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanSwitch-request>) istream)
  "Deserializes a message object of type '<PlanSwitch-request>"
    (cl:setf (cl:slot-value msg 'swith_on) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'end_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'end_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanSwitch-request>)))
  "Returns string type for a service object of type '<PlanSwitch-request>"
  "iserve_srvs/PlanSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanSwitch-request)))
  "Returns string type for a service object of type 'PlanSwitch-request"
  "iserve_srvs/PlanSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanSwitch-request>)))
  "Returns md5sum for a message object of type '<PlanSwitch-request>"
  "cfeabc4c78e5fd8d5dc411ef1421855a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanSwitch-request)))
  "Returns md5sum for a message object of type 'PlanSwitch-request"
  "cfeabc4c78e5fd8d5dc411ef1421855a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanSwitch-request>)))
  "Returns full string definition for message of type '<PlanSwitch-request>"
  (cl:format cl:nil "#indicate start or stop plan~%bool swith_on~%float64[] end_pose~%float64[] joint_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanSwitch-request)))
  "Returns full string definition for message of type 'PlanSwitch-request"
  (cl:format cl:nil "#indicate start or stop plan~%bool swith_on~%float64[] end_pose~%float64[] joint_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanSwitch-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'end_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanSwitch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanSwitch-request
    (cl:cons ':swith_on (swith_on msg))
    (cl:cons ':end_pose (end_pose msg))
    (cl:cons ':joint_pos (joint_pos msg))
))
;//! \htmlinclude PlanSwitch-response.msg.html

(cl:defclass <PlanSwitch-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PlanSwitch-response (<PlanSwitch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanSwitch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanSwitch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<PlanSwitch-response> is deprecated: use iserve_srvs-srv:PlanSwitch-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlanSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:success-val is deprecated.  Use iserve_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PlanSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:message-val is deprecated.  Use iserve_srvs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <PlanSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:waypoints-val is deprecated.  Use iserve_srvs-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanSwitch-response>) ostream)
  "Serializes a message object of type '<PlanSwitch-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanSwitch-response>) istream)
  "Deserializes a message object of type '<PlanSwitch-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanSwitch-response>)))
  "Returns string type for a service object of type '<PlanSwitch-response>"
  "iserve_srvs/PlanSwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanSwitch-response)))
  "Returns string type for a service object of type 'PlanSwitch-response"
  "iserve_srvs/PlanSwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanSwitch-response>)))
  "Returns md5sum for a message object of type '<PlanSwitch-response>"
  "cfeabc4c78e5fd8d5dc411ef1421855a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanSwitch-response)))
  "Returns md5sum for a message object of type 'PlanSwitch-response"
  "cfeabc4c78e5fd8d5dc411ef1421855a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanSwitch-response>)))
  "Returns full string definition for message of type '<PlanSwitch-response>"
  (cl:format cl:nil "bool success~%string message~%float64[] waypoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanSwitch-response)))
  "Returns full string definition for message of type 'PlanSwitch-response"
  (cl:format cl:nil "bool success~%string message~%float64[] waypoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanSwitch-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanSwitch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanSwitch-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':waypoints (waypoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanSwitch)))
  'PlanSwitch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanSwitch)))
  'PlanSwitch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanSwitch)))
  "Returns string type for a service object of type '<PlanSwitch>"
  "iserve_srvs/PlanSwitch")