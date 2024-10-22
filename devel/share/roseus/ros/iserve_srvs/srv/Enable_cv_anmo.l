;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::Enable_cv_anmo)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'Enable_cv_anmo (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::ENABLE_CV_ANMO")
  (make-package "ISERVE_SRVS::ENABLE_CV_ANMO"))
(unless (find-package "ISERVE_SRVS::ENABLE_CV_ANMOREQUEST")
  (make-package "ISERVE_SRVS::ENABLE_CV_ANMOREQUEST"))
(unless (find-package "ISERVE_SRVS::ENABLE_CV_ANMORESPONSE")
  (make-package "ISERVE_SRVS::ENABLE_CV_ANMORESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::Enable_cv_anmoRequest
  :super ros::object
  :slots (_Enable ))

(defmethod iserve_srvs::Enable_cv_anmoRequest
  (:init
   (&key
    ((:Enable __Enable) nil)
    )
   (send-super :init)
   (setq _Enable __Enable)
   self)
  (:Enable
   (&optional (__Enable :null))
   (if (not (eq __Enable :null)) (setq _Enable __Enable)) _Enable)
  (:serialization-length
   ()
   (+
    ;; bool _Enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Enable
       (if _Enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Enable
     (setq _Enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iserve_srvs::Enable_cv_anmoResponse
  :super ros::object
  :slots (_ok ))

(defmethod iserve_srvs::Enable_cv_anmoResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass iserve_srvs::Enable_cv_anmo
  :super ros::object
  :slots ())

(setf (get iserve_srvs::Enable_cv_anmo :md5sum-) "e1e111322e6a2085adde944da2f908ec")
(setf (get iserve_srvs::Enable_cv_anmo :datatype-) "iserve_srvs/Enable_cv_anmo")
(setf (get iserve_srvs::Enable_cv_anmo :request) iserve_srvs::Enable_cv_anmoRequest)
(setf (get iserve_srvs::Enable_cv_anmo :response) iserve_srvs::Enable_cv_anmoResponse)

(defmethod iserve_srvs::Enable_cv_anmoRequest
  (:response () (instance iserve_srvs::Enable_cv_anmoResponse :init)))

(setf (get iserve_srvs::Enable_cv_anmoRequest :md5sum-) "e1e111322e6a2085adde944da2f908ec")
(setf (get iserve_srvs::Enable_cv_anmoRequest :datatype-) "iserve_srvs/Enable_cv_anmoRequest")
(setf (get iserve_srvs::Enable_cv_anmoRequest :definition-)
      "bool Enable
---
bool ok

")

(setf (get iserve_srvs::Enable_cv_anmoResponse :md5sum-) "e1e111322e6a2085adde944da2f908ec")
(setf (get iserve_srvs::Enable_cv_anmoResponse :datatype-) "iserve_srvs/Enable_cv_anmoResponse")
(setf (get iserve_srvs::Enable_cv_anmoResponse :definition-)
      "bool Enable
---
bool ok

")



(provide :iserve_srvs/Enable_cv_anmo "e1e111322e6a2085adde944da2f908ec")


