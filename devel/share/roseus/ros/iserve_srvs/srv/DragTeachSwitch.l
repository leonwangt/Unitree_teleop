;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::DragTeachSwitch)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'DragTeachSwitch (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::DRAGTEACHSWITCH")
  (make-package "ISERVE_SRVS::DRAGTEACHSWITCH"))
(unless (find-package "ISERVE_SRVS::DRAGTEACHSWITCHREQUEST")
  (make-package "ISERVE_SRVS::DRAGTEACHSWITCHREQUEST"))
(unless (find-package "ISERVE_SRVS::DRAGTEACHSWITCHRESPONSE")
  (make-package "ISERVE_SRVS::DRAGTEACHSWITCHRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::DragTeachSwitchRequest
  :super ros::object
  :slots (_swith_on _task_id ))

(defmethod iserve_srvs::DragTeachSwitchRequest
  (:init
   (&key
    ((:swith_on __swith_on) nil)
    ((:task_id __task_id) "")
    )
   (send-super :init)
   (setq _swith_on __swith_on)
   (setq _task_id (string __task_id))
   self)
  (:swith_on
   (&optional (__swith_on :null))
   (if (not (eq __swith_on :null)) (setq _swith_on __swith_on)) _swith_on)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:serialization-length
   ()
   (+
    ;; bool _swith_on
    1
    ;; string _task_id
    4 (length _task_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _swith_on
       (if _swith_on (write-byte -1 s) (write-byte 0 s))
     ;; string _task_id
       (write-long (length _task_id) s) (princ _task_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _swith_on
     (setq _swith_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _task_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iserve_srvs::DragTeachSwitchResponse
  :super ros::object
  :slots (_success _message ))

(defmethod iserve_srvs::DragTeachSwitchResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iserve_srvs::DragTeachSwitch
  :super ros::object
  :slots ())

(setf (get iserve_srvs::DragTeachSwitch :md5sum-) "a0242dfc470bd214b12fa79aa2a5ee54")
(setf (get iserve_srvs::DragTeachSwitch :datatype-) "iserve_srvs/DragTeachSwitch")
(setf (get iserve_srvs::DragTeachSwitch :request) iserve_srvs::DragTeachSwitchRequest)
(setf (get iserve_srvs::DragTeachSwitch :response) iserve_srvs::DragTeachSwitchResponse)

(defmethod iserve_srvs::DragTeachSwitchRequest
  (:response () (instance iserve_srvs::DragTeachSwitchResponse :init)))

(setf (get iserve_srvs::DragTeachSwitchRequest :md5sum-) "a0242dfc470bd214b12fa79aa2a5ee54")
(setf (get iserve_srvs::DragTeachSwitchRequest :datatype-) "iserve_srvs/DragTeachSwitchRequest")
(setf (get iserve_srvs::DragTeachSwitchRequest :definition-)
      "#indicate start or stop drag teach
bool swith_on

#record file name
string task_id

---
bool success
string message

")

(setf (get iserve_srvs::DragTeachSwitchResponse :md5sum-) "a0242dfc470bd214b12fa79aa2a5ee54")
(setf (get iserve_srvs::DragTeachSwitchResponse :datatype-) "iserve_srvs/DragTeachSwitchResponse")
(setf (get iserve_srvs::DragTeachSwitchResponse :definition-)
      "#indicate start or stop drag teach
bool swith_on

#record file name
string task_id

---
bool success
string message

")



(provide :iserve_srvs/DragTeachSwitch "a0242dfc470bd214b12fa79aa2a5ee54")


