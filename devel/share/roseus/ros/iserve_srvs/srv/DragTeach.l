;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::DragTeach)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'DragTeach (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::DRAGTEACH")
  (make-package "ISERVE_SRVS::DRAGTEACH"))
(unless (find-package "ISERVE_SRVS::DRAGTEACHREQUEST")
  (make-package "ISERVE_SRVS::DRAGTEACHREQUEST"))
(unless (find-package "ISERVE_SRVS::DRAGTEACHRESPONSE")
  (make-package "ISERVE_SRVS::DRAGTEACHRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::DragTeachRequest
  :super ros::object
  :slots (_timeStamp _describe_msg ))

(defmethod iserve_srvs::DragTeachRequest
  (:init
   (&key
    ((:timeStamp __timeStamp) 0.0)
    ((:describe_msg __describe_msg) "")
    )
   (send-super :init)
   (setq _timeStamp (float __timeStamp))
   (setq _describe_msg (string __describe_msg))
   self)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:describe_msg
   (&optional __describe_msg)
   (if __describe_msg (setq _describe_msg __describe_msg)) _describe_msg)
  (:serialization-length
   ()
   (+
    ;; float64 _timeStamp
    8
    ;; string _describe_msg
    4 (length _describe_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timeStamp
       (sys::poke _timeStamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _describe_msg
       (write-long (length _describe_msg) s) (princ _describe_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timeStamp
     (setq _timeStamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _describe_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _describe_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass iserve_srvs::DragTeachResponse
  :super ros::object
  :slots (_success _message ))

(defmethod iserve_srvs::DragTeachResponse
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

(defclass iserve_srvs::DragTeach
  :super ros::object
  :slots ())

(setf (get iserve_srvs::DragTeach :md5sum-) "0ec3616815302eee28b553178a1eed29")
(setf (get iserve_srvs::DragTeach :datatype-) "iserve_srvs/DragTeach")
(setf (get iserve_srvs::DragTeach :request) iserve_srvs::DragTeachRequest)
(setf (get iserve_srvs::DragTeach :response) iserve_srvs::DragTeachResponse)

(defmethod iserve_srvs::DragTeachRequest
  (:response () (instance iserve_srvs::DragTeachResponse :init)))

(setf (get iserve_srvs::DragTeachRequest :md5sum-) "0ec3616815302eee28b553178a1eed29")
(setf (get iserve_srvs::DragTeachRequest :datatype-) "iserve_srvs/DragTeachRequest")
(setf (get iserve_srvs::DragTeachRequest :definition-)
      "#absolute timestamp from start(0)
float64 timeStamp

#brief explain of the point
string describe_msg
---
bool success
string message

")

(setf (get iserve_srvs::DragTeachResponse :md5sum-) "0ec3616815302eee28b553178a1eed29")
(setf (get iserve_srvs::DragTeachResponse :datatype-) "iserve_srvs/DragTeachResponse")
(setf (get iserve_srvs::DragTeachResponse :definition-)
      "#absolute timestamp from start(0)
float64 timeStamp

#brief explain of the point
string describe_msg
---
bool success
string message

")



(provide :iserve_srvs/DragTeach "0ec3616815302eee28b553178a1eed29")


