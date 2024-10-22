;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::CommandTask)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'CommandTask (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::COMMANDTASK")
  (make-package "ISERVE_SRVS::COMMANDTASK"))
(unless (find-package "ISERVE_SRVS::COMMANDTASKREQUEST")
  (make-package "ISERVE_SRVS::COMMANDTASKREQUEST"))
(unless (find-package "ISERVE_SRVS::COMMANDTASKRESPONSE")
  (make-package "ISERVE_SRVS::COMMANDTASKRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::CommandTaskRequest
  :super ros::object
  :slots (_task_id _plan_type _commandVel _waypoints _timeStamps _operation_mode _isFileTask _isCartesian _directCommand _isWaitFinish ))

(defmethod iserve_srvs::CommandTaskRequest
  (:init
   (&key
    ((:task_id __task_id) "")
    ((:plan_type __plan_type) "")
    ((:commandVel __commandVel) 0.0)
    ((:waypoints __waypoints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:timeStamps __timeStamps) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:operation_mode __operation_mode) 0)
    ((:isFileTask __isFileTask) nil)
    ((:isCartesian __isCartesian) nil)
    ((:directCommand __directCommand) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:isWaitFinish __isWaitFinish) nil)
    )
   (send-super :init)
   (setq _task_id (string __task_id))
   (setq _plan_type (string __plan_type))
   (setq _commandVel (float __commandVel))
   (setq _waypoints __waypoints)
   (setq _timeStamps __timeStamps)
   (setq _operation_mode (round __operation_mode))
   (setq _isFileTask __isFileTask)
   (setq _isCartesian __isCartesian)
   (setq _directCommand __directCommand)
   (setq _isWaitFinish __isWaitFinish)
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:plan_type
   (&optional __plan_type)
   (if __plan_type (setq _plan_type __plan_type)) _plan_type)
  (:commandVel
   (&optional __commandVel)
   (if __commandVel (setq _commandVel __commandVel)) _commandVel)
  (:waypoints
   (&optional __waypoints)
   (if __waypoints (setq _waypoints __waypoints)) _waypoints)
  (:timeStamps
   (&optional __timeStamps)
   (if __timeStamps (setq _timeStamps __timeStamps)) _timeStamps)
  (:operation_mode
   (&optional __operation_mode)
   (if __operation_mode (setq _operation_mode __operation_mode)) _operation_mode)
  (:isFileTask
   (&optional (__isFileTask :null))
   (if (not (eq __isFileTask :null)) (setq _isFileTask __isFileTask)) _isFileTask)
  (:isCartesian
   (&optional (__isCartesian :null))
   (if (not (eq __isCartesian :null)) (setq _isCartesian __isCartesian)) _isCartesian)
  (:directCommand
   (&optional __directCommand)
   (if __directCommand (setq _directCommand __directCommand)) _directCommand)
  (:isWaitFinish
   (&optional (__isWaitFinish :null))
   (if (not (eq __isWaitFinish :null)) (setq _isWaitFinish __isWaitFinish)) _isWaitFinish)
  (:serialization-length
   ()
   (+
    ;; string _task_id
    4 (length _task_id)
    ;; string _plan_type
    4 (length _plan_type)
    ;; float64 _commandVel
    8
    ;; float64[] _waypoints
    (* 8    (length _waypoints)) 4
    ;; float64[] _timeStamps
    (* 8    (length _timeStamps)) 4
    ;; int32 _operation_mode
    4
    ;; bool _isFileTask
    1
    ;; bool _isCartesian
    1
    ;; float64[] _directCommand
    (* 8    (length _directCommand)) 4
    ;; bool _isWaitFinish
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_id
       (write-long (length _task_id) s) (princ _task_id s)
     ;; string _plan_type
       (write-long (length _plan_type) s) (princ _plan_type s)
     ;; float64 _commandVel
       (sys::poke _commandVel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _waypoints
     (write-long (length _waypoints) s)
     (dotimes (i (length _waypoints))
       (sys::poke (elt _waypoints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _timeStamps
     (write-long (length _timeStamps) s)
     (dotimes (i (length _timeStamps))
       (sys::poke (elt _timeStamps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _operation_mode
       (write-long _operation_mode s)
     ;; bool _isFileTask
       (if _isFileTask (write-byte -1 s) (write-byte 0 s))
     ;; bool _isCartesian
       (if _isCartesian (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _directCommand
     (write-long (length _directCommand) s)
     (dotimes (i (length _directCommand))
       (sys::poke (elt _directCommand i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _isWaitFinish
       (if _isWaitFinish (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _plan_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plan_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _commandVel
     (setq _commandVel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _waypoints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _timeStamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timeStamps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _timeStamps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32 _operation_mode
     (setq _operation_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _isFileTask
     (setq _isFileTask (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isCartesian
     (setq _isCartesian (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _directCommand
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _directCommand (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _directCommand i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _isWaitFinish
     (setq _isWaitFinish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iserve_srvs::CommandTaskResponse
  :super ros::object
  :slots (_success ))

(defmethod iserve_srvs::CommandTaskResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iserve_srvs::CommandTask
  :super ros::object
  :slots ())

(setf (get iserve_srvs::CommandTask :md5sum-) "b97ea1c2b9159c8055dbffd61ee371b9")
(setf (get iserve_srvs::CommandTask :datatype-) "iserve_srvs/CommandTask")
(setf (get iserve_srvs::CommandTask :request) iserve_srvs::CommandTaskRequest)
(setf (get iserve_srvs::CommandTask :response) iserve_srvs::CommandTaskResponse)

(defmethod iserve_srvs::CommandTaskRequest
  (:response () (instance iserve_srvs::CommandTaskResponse :init)))

(setf (get iserve_srvs::CommandTaskRequest :md5sum-) "b97ea1c2b9159c8055dbffd61ee371b9")
(setf (get iserve_srvs::CommandTaskRequest :datatype-) "iserve_srvs/CommandTaskRequest")
(setf (get iserve_srvs::CommandTaskRequest :definition-)
      "string task_id
string plan_type
float64 commandVel
float64[] waypoints
float64[] timeStamps
int32 operation_mode
# if move the arm according to the record file
bool isFileTask
bool isCartesian
float64[] directCommand
bool isWaitFinish
---
bool success

")

(setf (get iserve_srvs::CommandTaskResponse :md5sum-) "b97ea1c2b9159c8055dbffd61ee371b9")
(setf (get iserve_srvs::CommandTaskResponse :datatype-) "iserve_srvs/CommandTaskResponse")
(setf (get iserve_srvs::CommandTaskResponse :definition-)
      "string task_id
string plan_type
float64 commandVel
float64[] waypoints
float64[] timeStamps
int32 operation_mode
# if move the arm according to the record file
bool isFileTask
bool isCartesian
float64[] directCommand
bool isWaitFinish
---
bool success

")



(provide :iserve_srvs/CommandTask "b97ea1c2b9159c8055dbffd61ee371b9")


