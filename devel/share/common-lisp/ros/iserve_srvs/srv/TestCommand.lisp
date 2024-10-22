; Auto-generated. Do not edit!


(cl:in-package iserve_srvs-srv)


;//! \htmlinclude TestCommand-request.msg.html

(cl:defclass <TestCommand-request> (roslisp-msg-protocol:ros-message)
  ((testItem
    :reader testItem
    :initarg :testItem
    :type cl:string
    :initform "")
   (isLoad
    :reader isLoad
    :initarg :isLoad
    :type cl:boolean
    :initform cl:nil)
   (isSingleJoint
    :reader isSingleJoint
    :initarg :isSingleJoint
    :type cl:boolean
    :initform cl:nil)
   (jointNo
    :reader jointNo
    :initarg :jointNo
    :type cl:integer
    :initform 0)
   (cycleTimes
    :reader cycleTimes
    :initarg :cycleTimes
    :type cl:integer
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (pointIndex
    :reader pointIndex
    :initarg :pointIndex
    :type cl:integer
    :initform 0)
   (segmentNo
    :reader segmentNo
    :initarg :segmentNo
    :type cl:string
    :initform "")
   (startIndex
    :reader startIndex
    :initarg :startIndex
    :type cl:integer
    :initform 0)
   (endIndex
    :reader endIndex
    :initarg :endIndex
    :type cl:integer
    :initform 0))
)

(cl:defclass TestCommand-request (<TestCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<TestCommand-request> is deprecated: use iserve_srvs-srv:TestCommand-request instead.")))

(cl:ensure-generic-function 'testItem-val :lambda-list '(m))
(cl:defmethod testItem-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:testItem-val is deprecated.  Use iserve_srvs-srv:testItem instead.")
  (testItem m))

(cl:ensure-generic-function 'isLoad-val :lambda-list '(m))
(cl:defmethod isLoad-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:isLoad-val is deprecated.  Use iserve_srvs-srv:isLoad instead.")
  (isLoad m))

(cl:ensure-generic-function 'isSingleJoint-val :lambda-list '(m))
(cl:defmethod isSingleJoint-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:isSingleJoint-val is deprecated.  Use iserve_srvs-srv:isSingleJoint instead.")
  (isSingleJoint m))

(cl:ensure-generic-function 'jointNo-val :lambda-list '(m))
(cl:defmethod jointNo-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:jointNo-val is deprecated.  Use iserve_srvs-srv:jointNo instead.")
  (jointNo m))

(cl:ensure-generic-function 'cycleTimes-val :lambda-list '(m))
(cl:defmethod cycleTimes-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:cycleTimes-val is deprecated.  Use iserve_srvs-srv:cycleTimes instead.")
  (cycleTimes m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:velocity-val is deprecated.  Use iserve_srvs-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'pointIndex-val :lambda-list '(m))
(cl:defmethod pointIndex-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:pointIndex-val is deprecated.  Use iserve_srvs-srv:pointIndex instead.")
  (pointIndex m))

(cl:ensure-generic-function 'segmentNo-val :lambda-list '(m))
(cl:defmethod segmentNo-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:segmentNo-val is deprecated.  Use iserve_srvs-srv:segmentNo instead.")
  (segmentNo m))

(cl:ensure-generic-function 'startIndex-val :lambda-list '(m))
(cl:defmethod startIndex-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:startIndex-val is deprecated.  Use iserve_srvs-srv:startIndex instead.")
  (startIndex m))

(cl:ensure-generic-function 'endIndex-val :lambda-list '(m))
(cl:defmethod endIndex-val ((m <TestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:endIndex-val is deprecated.  Use iserve_srvs-srv:endIndex instead.")
  (endIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestCommand-request>) ostream)
  "Serializes a message object of type '<TestCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'testItem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'testItem))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isLoad) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSingleJoint) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'jointNo)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cycleTimes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'pointIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'segmentNo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'segmentNo))
  (cl:let* ((signed (cl:slot-value msg 'startIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'endIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestCommand-request>) istream)
  "Deserializes a message object of type '<TestCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'testItem) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'testItem) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'isLoad) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isSingleJoint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jointNo) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cycleTimes) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointIndex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segmentNo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'segmentNo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'startIndex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'endIndex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestCommand-request>)))
  "Returns string type for a service object of type '<TestCommand-request>"
  "iserve_srvs/TestCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestCommand-request)))
  "Returns string type for a service object of type 'TestCommand-request"
  "iserve_srvs/TestCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestCommand-request>)))
  "Returns md5sum for a message object of type '<TestCommand-request>"
  "56cbc0917dc3153d523ed8899f37edfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestCommand-request)))
  "Returns md5sum for a message object of type 'TestCommand-request"
  "56cbc0917dc3153d523ed8899f37edfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestCommand-request>)))
  "Returns full string definition for message of type '<TestCommand-request>"
  (cl:format cl:nil "#noiseTest, motionStabilityTest, loadTest, jointAngleTest, accuracyTest, powTest, breakTest, motionTest, goHome~%string testItem~%~%bool isLoad~%bool isSingleJoint~%~%#0, 1, 2, 3, 4, 5~%int32 jointNo~%~%# at least 1~%int32 cycleTimes~%float64 velocity~%~%# 1, 2, 3, 4, 5~%int32 pointIndex~%~%#toShelf, toLocker, goHome~%string segmentNo~%~%int32 startIndex~%int32 endIndex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestCommand-request)))
  "Returns full string definition for message of type 'TestCommand-request"
  (cl:format cl:nil "#noiseTest, motionStabilityTest, loadTest, jointAngleTest, accuracyTest, powTest, breakTest, motionTest, goHome~%string testItem~%~%bool isLoad~%bool isSingleJoint~%~%#0, 1, 2, 3, 4, 5~%int32 jointNo~%~%# at least 1~%int32 cycleTimes~%float64 velocity~%~%# 1, 2, 3, 4, 5~%int32 pointIndex~%~%#toShelf, toLocker, goHome~%string segmentNo~%~%int32 startIndex~%int32 endIndex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'testItem))
     1
     1
     4
     4
     8
     4
     4 (cl:length (cl:slot-value msg 'segmentNo))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestCommand-request
    (cl:cons ':testItem (testItem msg))
    (cl:cons ':isLoad (isLoad msg))
    (cl:cons ':isSingleJoint (isSingleJoint msg))
    (cl:cons ':jointNo (jointNo msg))
    (cl:cons ':cycleTimes (cycleTimes msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':pointIndex (pointIndex msg))
    (cl:cons ':segmentNo (segmentNo msg))
    (cl:cons ':startIndex (startIndex msg))
    (cl:cons ':endIndex (endIndex msg))
))
;//! \htmlinclude TestCommand-response.msg.html

(cl:defclass <TestCommand-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (testItem
    :reader testItem
    :initarg :testItem
    :type cl:string
    :initform "")
   (isLoad
    :reader isLoad
    :initarg :isLoad
    :type cl:boolean
    :initform cl:nil)
   (cycleTimes
    :reader cycleTimes
    :initarg :cycleTimes
    :type cl:integer
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (isSingleJoint
    :reader isSingleJoint
    :initarg :isSingleJoint
    :type cl:boolean
    :initform cl:nil)
   (jointNo
    :reader jointNo
    :initarg :jointNo
    :type cl:integer
    :initform 0)
   (segmentNo
    :reader segmentNo
    :initarg :segmentNo
    :type cl:string
    :initform "")
   (pointIndex
    :reader pointIndex
    :initarg :pointIndex
    :type cl:integer
    :initform 0)
   (startIndex
    :reader startIndex
    :initarg :startIndex
    :type cl:integer
    :initform 0)
   (endIndex
    :reader endIndex
    :initarg :endIndex
    :type cl:integer
    :initform 0))
)

(cl:defclass TestCommand-response (<TestCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iserve_srvs-srv:<TestCommand-response> is deprecated: use iserve_srvs-srv:TestCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:success-val is deprecated.  Use iserve_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'testItem-val :lambda-list '(m))
(cl:defmethod testItem-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:testItem-val is deprecated.  Use iserve_srvs-srv:testItem instead.")
  (testItem m))

(cl:ensure-generic-function 'isLoad-val :lambda-list '(m))
(cl:defmethod isLoad-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:isLoad-val is deprecated.  Use iserve_srvs-srv:isLoad instead.")
  (isLoad m))

(cl:ensure-generic-function 'cycleTimes-val :lambda-list '(m))
(cl:defmethod cycleTimes-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:cycleTimes-val is deprecated.  Use iserve_srvs-srv:cycleTimes instead.")
  (cycleTimes m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:velocity-val is deprecated.  Use iserve_srvs-srv:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'isSingleJoint-val :lambda-list '(m))
(cl:defmethod isSingleJoint-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:isSingleJoint-val is deprecated.  Use iserve_srvs-srv:isSingleJoint instead.")
  (isSingleJoint m))

(cl:ensure-generic-function 'jointNo-val :lambda-list '(m))
(cl:defmethod jointNo-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:jointNo-val is deprecated.  Use iserve_srvs-srv:jointNo instead.")
  (jointNo m))

(cl:ensure-generic-function 'segmentNo-val :lambda-list '(m))
(cl:defmethod segmentNo-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:segmentNo-val is deprecated.  Use iserve_srvs-srv:segmentNo instead.")
  (segmentNo m))

(cl:ensure-generic-function 'pointIndex-val :lambda-list '(m))
(cl:defmethod pointIndex-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:pointIndex-val is deprecated.  Use iserve_srvs-srv:pointIndex instead.")
  (pointIndex m))

(cl:ensure-generic-function 'startIndex-val :lambda-list '(m))
(cl:defmethod startIndex-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:startIndex-val is deprecated.  Use iserve_srvs-srv:startIndex instead.")
  (startIndex m))

(cl:ensure-generic-function 'endIndex-val :lambda-list '(m))
(cl:defmethod endIndex-val ((m <TestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iserve_srvs-srv:endIndex-val is deprecated.  Use iserve_srvs-srv:endIndex instead.")
  (endIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestCommand-response>) ostream)
  "Serializes a message object of type '<TestCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'testItem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'testItem))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isLoad) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cycleTimes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSingleJoint) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'jointNo)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'segmentNo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'segmentNo))
  (cl:let* ((signed (cl:slot-value msg 'pointIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'startIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'endIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestCommand-response>) istream)
  "Deserializes a message object of type '<TestCommand-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'testItem) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'testItem) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'isLoad) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cycleTimes) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isSingleJoint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jointNo) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segmentNo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'segmentNo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointIndex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'startIndex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'endIndex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestCommand-response>)))
  "Returns string type for a service object of type '<TestCommand-response>"
  "iserve_srvs/TestCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestCommand-response)))
  "Returns string type for a service object of type 'TestCommand-response"
  "iserve_srvs/TestCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestCommand-response>)))
  "Returns md5sum for a message object of type '<TestCommand-response>"
  "56cbc0917dc3153d523ed8899f37edfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestCommand-response)))
  "Returns md5sum for a message object of type 'TestCommand-response"
  "56cbc0917dc3153d523ed8899f37edfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestCommand-response>)))
  "Returns full string definition for message of type '<TestCommand-response>"
  (cl:format cl:nil "bool success~%string testItem~%bool isLoad~%int32 cycleTimes~%float64 velocity~%bool isSingleJoint~%int32 jointNo~%string segmentNo~%int32 pointIndex~%int32 startIndex~%int32 endIndex~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestCommand-response)))
  "Returns full string definition for message of type 'TestCommand-response"
  (cl:format cl:nil "bool success~%string testItem~%bool isLoad~%int32 cycleTimes~%float64 velocity~%bool isSingleJoint~%int32 jointNo~%string segmentNo~%int32 pointIndex~%int32 startIndex~%int32 endIndex~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestCommand-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'testItem))
     1
     4
     8
     1
     4
     4 (cl:length (cl:slot-value msg 'segmentNo))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':testItem (testItem msg))
    (cl:cons ':isLoad (isLoad msg))
    (cl:cons ':cycleTimes (cycleTimes msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':isSingleJoint (isSingleJoint msg))
    (cl:cons ':jointNo (jointNo msg))
    (cl:cons ':segmentNo (segmentNo msg))
    (cl:cons ':pointIndex (pointIndex msg))
    (cl:cons ':startIndex (startIndex msg))
    (cl:cons ':endIndex (endIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestCommand)))
  'TestCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestCommand)))
  'TestCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestCommand)))
  "Returns string type for a service object of type '<TestCommand>"
  "iserve_srvs/TestCommand")