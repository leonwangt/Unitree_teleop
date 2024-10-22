; Auto-generated. Do not edit!


(cl:in-package iserve_msgs-msg)


;//! \htmlinclude ManipulationCommand.msg.html

(cl:defclass <ManipulationCommand> (roslisp-msg-protocol:ros-message)
  ((drawer_id
    :reader drawer_id
    :initarg :drawer_id
    :type cl:integer
    :initform 0)
   (object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (operation_type
    :reader operation_type
    :initarg :operation_type
    :type cl:string
    :initform "")
   (grasp_milk
    :reader grasp_milk
    :initarg :grasp_milk
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ManipulationCommand (<ManipulationCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulationCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulationCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_msgs-msg:<ManipulationCommand> is deprecated: use iserve_msgs-msg:ManipulationCommand instead.")))

(cl:ensure-generic-function 'drawer_id-val :lambda-list '(m))
(cl:defmethod drawer_id-val ((m <ManipulationCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_msgs-msg:drawer_id-val is deprecated.  Use iserve_msgs-msg:drawer_id instead.")
  (drawer_id m))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <ManipulationCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_msgs-msg:object_name-val is deprecated.  Use iserve_msgs-msg:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'operation_type-val :lambda-list '(m))
(cl:defmethod operation_type-val ((m <ManipulationCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_msgs-msg:operation_type-val is deprecated.  Use iserve_msgs-msg:operation_type instead.")
  (operation_type m))

(cl:ensure-generic-function 'grasp_milk-val :lambda-list '(m))
(cl:defmethod grasp_milk-val ((m <ManipulationCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_msgs-msg:grasp_milk-val is deprecated.  Use iserve_msgs-msg:grasp_milk instead.")
  (grasp_milk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulationCommand>) ostream)
  "Serializes a message object of type '<ManipulationCommand>"
  (cl:let* ((signed (cl:slot-value msg 'drawer_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'grasp_milk) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulationCommand>) istream)
  "Deserializes a message object of type '<ManipulationCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drawer_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'grasp_milk) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulationCommand>)))
  "Returns string type for a message object of type '<ManipulationCommand>"
  "iserve_msgs/ManipulationCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulationCommand)))
  "Returns string type for a message object of type 'ManipulationCommand"
  "iserve_msgs/ManipulationCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulationCommand>)))
  "Returns md5sum for a message object of type '<ManipulationCommand>"
  "7bd5aa1378690e7afd00443d907131aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulationCommand)))
  "Returns md5sum for a message object of type 'ManipulationCommand"
  "7bd5aa1378690e7afd00443d907131aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulationCommand>)))
  "Returns full string definition for message of type '<ManipulationCommand>"
  (cl:format cl:nil "int32 drawer_id          #对几号抽屉进行抓放~%string object_name       #抓取物体的名称~%string operation_type    #操作模式，loading or unloading~%bool grasp_milk          #是否抓取牛奶~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulationCommand)))
  "Returns full string definition for message of type 'ManipulationCommand"
  (cl:format cl:nil "int32 drawer_id          #对几号抽屉进行抓放~%string object_name       #抓取物体的名称~%string operation_type    #操作模式，loading or unloading~%bool grasp_milk          #是否抓取牛奶~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulationCommand>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'object_name))
     4 (cl:length (cl:slot-value msg 'operation_type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulationCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulationCommand
    (cl:cons ':drawer_id (drawer_id msg))
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':operation_type (operation_type msg))
    (cl:cons ':grasp_milk (grasp_milk msg))
))
