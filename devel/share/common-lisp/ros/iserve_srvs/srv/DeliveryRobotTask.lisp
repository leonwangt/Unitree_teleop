; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude DeliveryRobotTask-request.msg.html

(cl:defclass <DeliveryRobotTask-request> (roslisp-msg-protocol:ros-message)
  ((switch_on
    :reader switch_on
    :initarg :switch_on
    :type cl:boolean
    :initform cl:nil)
   (scene_id
    :reader scene_id
    :initarg :scene_id
    :type cl:integer
    :initform 0)
   (look_id
    :reader look_id
    :initarg :look_id
    :type cl:integer
    :initform 0)
   (place_id
    :reader place_id
    :initarg :place_id
    :type cl:integer
    :initform 0)
   (object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (speed_scale
    :reader speed_scale
    :initarg :speed_scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass DeliveryRobotTask-request (<DeliveryRobotTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeliveryRobotTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeliveryRobotTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<DeliveryRobotTask-request> is deprecated: use iserve_srvs-srv:DeliveryRobotTask-request instead.")))

(cl:ensure-generic-function 'switch_on-val :lambda-list '(m))
(cl:defmethod switch_on-val ((m <DeliveryRobotTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:switch_on-val is deprecated.  Use iserve_srvs-srv:switch_on instead.")
  (switch_on m))

(cl:ensure-generic-function 'scene_id-val :lambda-list '(m))
(cl:defmethod scene_id-val ((m <DeliveryRobotTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:scene_id-val is deprecated.  Use iserve_srvs-srv:scene_id instead.")
  (scene_id m))

(cl:ensure-generic-function 'look_id-val :lambda-list '(m))
(cl:defmethod look_id-val ((m <DeliveryRobotTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:look_id-val is deprecated.  Use iserve_srvs-srv:look_id instead.")
  (look_id m))

(cl:ensure-generic-function 'place_id-val :lambda-list '(m))
(cl:defmethod place_id-val ((m <DeliveryRobotTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:place_id-val is deprecated.  Use iserve_srvs-srv:place_id instead.")
  (place_id m))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <DeliveryRobotTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:object_name-val is deprecated.  Use iserve_srvs-srv:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'speed_scale-val :lambda-list '(m))
(cl:defmethod speed_scale-val ((m <DeliveryRobotTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:speed_scale-val is deprecated.  Use iserve_srvs-srv:speed_scale instead.")
  (speed_scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeliveryRobotTask-request>) ostream)
  "Serializes a message object of type '<DeliveryRobotTask-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switch_on) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'scene_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'look_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'place_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeliveryRobotTask-request>) istream)
  "Deserializes a message object of type '<DeliveryRobotTask-request>"
    (cl:setf (cl:slot-value msg 'switch_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scene_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'look_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_scale) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeliveryRobotTask-request>)))
  "Returns string type for a service object of type '<DeliveryRobotTask-request>"
  "iserve_srvs/DeliveryRobotTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeliveryRobotTask-request)))
  "Returns string type for a service object of type 'DeliveryRobotTask-request"
  "iserve_srvs/DeliveryRobotTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeliveryRobotTask-request>)))
  "Returns md5sum for a message object of type '<DeliveryRobotTask-request>"
  "1d4bbb7bd00384e7a69a86662cfc883c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeliveryRobotTask-request)))
  "Returns md5sum for a message object of type 'DeliveryRobotTask-request"
  "1d4bbb7bd00384e7a69a86662cfc883c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeliveryRobotTask-request>)))
  "Returns full string definition for message of type '<DeliveryRobotTask-request>"
  (cl:format cl:nil "bool switch_on       #该次服务调用是否有效~%int32 scene_id       #场景id~%int32 look_id      #对几号抽屉进行抓放~%int32 place_id       #对抽屉的几号放置位进行放置~%string object_name   #抓取物体的名称~%float64 speed_scale  #用于调速，高中低三挡~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeliveryRobotTask-request)))
  "Returns full string definition for message of type 'DeliveryRobotTask-request"
  (cl:format cl:nil "bool switch_on       #该次服务调用是否有效~%int32 scene_id       #场景id~%int32 look_id      #对几号抽屉进行抓放~%int32 place_id       #对抽屉的几号放置位进行放置~%string object_name   #抓取物体的名称~%float64 speed_scale  #用于调速，高中低三挡~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeliveryRobotTask-request>))
  (cl:+ 0
     1
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'object_name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeliveryRobotTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeliveryRobotTask-request
    (cl:cons ':switch_on (switch_on msg))
    (cl:cons ':scene_id (scene_id msg))
    (cl:cons ':look_id (look_id msg))
    (cl:cons ':place_id (place_id msg))
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':speed_scale (speed_scale msg))
))
;//! \htmlinclude DeliveryRobotTask-response.msg.html

(cl:defclass <DeliveryRobotTask-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeliveryRobotTask-response (<DeliveryRobotTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeliveryRobotTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeliveryRobotTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<DeliveryRobotTask-response> is deprecated: use iserve_srvs-srv:DeliveryRobotTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeliveryRobotTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:success-val is deprecated.  Use iserve_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeliveryRobotTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:message-val is deprecated.  Use iserve_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeliveryRobotTask-response>) ostream)
  "Serializes a message object of type '<DeliveryRobotTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeliveryRobotTask-response>) istream)
  "Deserializes a message object of type '<DeliveryRobotTask-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeliveryRobotTask-response>)))
  "Returns string type for a service object of type '<DeliveryRobotTask-response>"
  "iserve_srvs/DeliveryRobotTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeliveryRobotTask-response)))
  "Returns string type for a service object of type 'DeliveryRobotTask-response"
  "iserve_srvs/DeliveryRobotTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeliveryRobotTask-response>)))
  "Returns md5sum for a message object of type '<DeliveryRobotTask-response>"
  "1d4bbb7bd00384e7a69a86662cfc883c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeliveryRobotTask-response)))
  "Returns md5sum for a message object of type 'DeliveryRobotTask-response"
  "1d4bbb7bd00384e7a69a86662cfc883c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeliveryRobotTask-response>)))
  "Returns full string definition for message of type '<DeliveryRobotTask-response>"
  (cl:format cl:nil "bool success         #反馈服务是否调用成功~%string message       #相关的comment~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeliveryRobotTask-response)))
  "Returns full string definition for message of type 'DeliveryRobotTask-response"
  (cl:format cl:nil "bool success         #反馈服务是否调用成功~%string message       #相关的comment~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeliveryRobotTask-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeliveryRobotTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeliveryRobotTask-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeliveryRobotTask)))
  'DeliveryRobotTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeliveryRobotTask)))
  'DeliveryRobotTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeliveryRobotTask)))
  "Returns string type for a service object of type '<DeliveryRobotTask>"
  "iserve_srvs/DeliveryRobotTask")