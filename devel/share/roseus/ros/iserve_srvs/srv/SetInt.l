;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::SetInt)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'SetInt (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::SETINT")
  (make-package "ISERVE_SRVS::SETINT"))
(unless (find-package "ISERVE_SRVS::SETINTREQUEST")
  (make-package "ISERVE_SRVS::SETINTREQUEST"))
(unless (find-package "ISERVE_SRVS::SETINTRESPONSE")
  (make-package "ISERVE_SRVS::SETINTRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::SetIntRequest
  :super ros::object
  :slots (_input ))

(defmethod iserve_srvs::SetIntRequest
  (:init
   (&key
    ((:input __input) 0)
    )
   (send-super :init)
   (setq _input (round __input))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; int64 _input
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _input
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _input (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _input) (= (length (_input . bv)) 2)) ;; bignum
              (write-long (ash (elt (_input . bv) 0) 0) s)
              (write-long (ash (elt (_input . bv) 1) -1) s))
             ((and (class _input) (= (length (_input . bv)) 1)) ;; big1
              (write-long (elt (_input . bv) 0) s)
              (write-long (if (>= _input 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _input s)(write-long (if (>= _input 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _input
#+(or :alpha :irix6 :x86_64)
      (setf _input (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _input (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass iserve_srvs::SetIntResponse
  :super ros::object
  :slots (_output ))

(defmethod iserve_srvs::SetIntResponse
  (:init
   (&key
    ((:output __output) 0)
    )
   (send-super :init)
   (setq _output (round __output))
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; int64 _output
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _output
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _output (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _output) (= (length (_output . bv)) 2)) ;; bignum
              (write-long (ash (elt (_output . bv) 0) 0) s)
              (write-long (ash (elt (_output . bv) 1) -1) s))
             ((and (class _output) (= (length (_output . bv)) 1)) ;; big1
              (write-long (elt (_output . bv) 0) s)
              (write-long (if (>= _output 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _output s)(write-long (if (>= _output 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _output
#+(or :alpha :irix6 :x86_64)
      (setf _output (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _output (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass iserve_srvs::SetInt
  :super ros::object
  :slots ())

(setf (get iserve_srvs::SetInt :md5sum-) "9cc62145209219f185101e72e3ae5c65")
(setf (get iserve_srvs::SetInt :datatype-) "iserve_srvs/SetInt")
(setf (get iserve_srvs::SetInt :request) iserve_srvs::SetIntRequest)
(setf (get iserve_srvs::SetInt :response) iserve_srvs::SetIntResponse)

(defmethod iserve_srvs::SetIntRequest
  (:response () (instance iserve_srvs::SetIntResponse :init)))

(setf (get iserve_srvs::SetIntRequest :md5sum-) "9cc62145209219f185101e72e3ae5c65")
(setf (get iserve_srvs::SetIntRequest :datatype-) "iserve_srvs/SetIntRequest")
(setf (get iserve_srvs::SetIntRequest :definition-)
      "int64 input
---
int64 output


")

(setf (get iserve_srvs::SetIntResponse :md5sum-) "9cc62145209219f185101e72e3ae5c65")
(setf (get iserve_srvs::SetIntResponse :datatype-) "iserve_srvs/SetIntResponse")
(setf (get iserve_srvs::SetIntResponse :definition-)
      "int64 input
---
int64 output


")



(provide :iserve_srvs/SetInt "9cc62145209219f185101e72e3ae5c65")


