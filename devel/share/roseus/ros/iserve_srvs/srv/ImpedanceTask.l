;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::ImpedanceTask)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'ImpedanceTask (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::IMPEDANCETASK")
  (make-package "ISERVE_SRVS::IMPEDANCETASK"))
(unless (find-package "ISERVE_SRVS::IMPEDANCETASKREQUEST")
  (make-package "ISERVE_SRVS::IMPEDANCETASKREQUEST"))
(unless (find-package "ISERVE_SRVS::IMPEDANCETASKRESPONSE")
  (make-package "ISERVE_SRVS::IMPEDANCETASKRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::ImpedanceTaskRequest
  :super ros::object
  :slots (_swith_on _control_flag ))

(defmethod iserve_srvs::ImpedanceTaskRequest
  (:init
   (&key
    ((:swith_on __swith_on) nil)
    ((:control_flag __control_flag) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _swith_on __swith_on)
   (setq _control_flag __control_flag)
   self)
  (:swith_on
   (&optional (__swith_on :null))
   (if (not (eq __swith_on :null)) (setq _swith_on __swith_on)) _swith_on)
  (:control_flag
   (&optional __control_flag)
   (if __control_flag (setq _control_flag __control_flag)) _control_flag)
  (:serialization-length
   ()
   (+
    ;; bool _swith_on
    1
    ;; int32[] _control_flag
    (* 4    (length _control_flag)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _swith_on
       (if _swith_on (write-byte -1 s) (write-byte 0 s))
     ;; int32[] _control_flag
     (write-long (length _control_flag) s)
     (dotimes (i (length _control_flag))
       (write-long (elt _control_flag i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _swith_on
     (setq _swith_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32[] _control_flag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _control_flag (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _control_flag i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass iserve_srvs::ImpedanceTaskResponse
  :super ros::object
  :slots (_success _message ))

(defmethod iserve_srvs::ImpedanceTaskResponse
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

(defclass iserve_srvs::ImpedanceTask
  :super ros::object
  :slots ())

(setf (get iserve_srvs::ImpedanceTask :md5sum-) "21908f874f4e6cb2dd60a1908a933187")
(setf (get iserve_srvs::ImpedanceTask :datatype-) "iserve_srvs/ImpedanceTask")
(setf (get iserve_srvs::ImpedanceTask :request) iserve_srvs::ImpedanceTaskRequest)
(setf (get iserve_srvs::ImpedanceTask :response) iserve_srvs::ImpedanceTaskResponse)

(defmethod iserve_srvs::ImpedanceTaskRequest
  (:response () (instance iserve_srvs::ImpedanceTaskResponse :init)))

(setf (get iserve_srvs::ImpedanceTaskRequest :md5sum-) "21908f874f4e6cb2dd60a1908a933187")
(setf (get iserve_srvs::ImpedanceTaskRequest :datatype-) "iserve_srvs/ImpedanceTaskRequest")
(setf (get iserve_srvs::ImpedanceTaskRequest :definition-)
      "bool swith_on
int32[] control_flag
---
bool success
string message

")

(setf (get iserve_srvs::ImpedanceTaskResponse :md5sum-) "21908f874f4e6cb2dd60a1908a933187")
(setf (get iserve_srvs::ImpedanceTaskResponse :datatype-) "iserve_srvs/ImpedanceTaskResponse")
(setf (get iserve_srvs::ImpedanceTaskResponse :definition-)
      "bool swith_on
int32[] control_flag
---
bool success
string message

")



(provide :iserve_srvs/ImpedanceTask "21908f874f4e6cb2dd60a1908a933187")


