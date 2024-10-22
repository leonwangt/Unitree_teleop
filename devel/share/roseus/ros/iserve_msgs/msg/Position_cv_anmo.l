;; Auto-generated. Do not edit!


(when (boundp 'iserve_msgs::Position_cv_anmo)
  (if (not (find-package "ISERVE_MSGS"))
    (make-package "ISERVE_MSGS"))
  (shadow 'Position_cv_anmo (find-package "ISERVE_MSGS")))
(unless (find-package "ISERVE_MSGS::POSITION_CV_ANMO")
  (make-package "ISERVE_MSGS::POSITION_CV_ANMO"))

(in-package "ROS")
;;//! \htmlinclude Position_cv_anmo.msg.html


(defclass iserve_msgs::Position_cv_anmo
  :super ros::object
  :slots (_stamp _isdone _x _y _z ))

(defmethod iserve_msgs::Position_cv_anmo
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:isdone __isdone) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _isdone (float __isdone))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:isdone
   (&optional __isdone)
   (if __isdone (setq _isdone __isdone)) _isdone)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _isdone
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _isdone
       (sys::poke _isdone (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _isdone
     (setq _isdone (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get iserve_msgs::Position_cv_anmo :md5sum-) "4564bfea93f9586cd3dad5d4be058467")
(setf (get iserve_msgs::Position_cv_anmo :datatype-) "iserve_msgs/Position_cv_anmo")
(setf (get iserve_msgs::Position_cv_anmo :definition-)
      "time stamp
float32 isdone
float32 x
float32 y
float32 z

")



(provide :iserve_msgs/Position_cv_anmo "4564bfea93f9586cd3dad5d4be058467")


