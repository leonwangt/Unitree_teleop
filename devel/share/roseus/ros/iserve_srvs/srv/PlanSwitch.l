;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::PlanSwitch)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'PlanSwitch (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::PLANSWITCH")
  (make-package "ISERVE_SRVS::PLANSWITCH"))
(unless (find-package "ISERVE_SRVS::PLANSWITCHREQUEST")
  (make-package "ISERVE_SRVS::PLANSWITCHREQUEST"))
(unless (find-package "ISERVE_SRVS::PLANSWITCHRESPONSE")
  (make-package "ISERVE_SRVS::PLANSWITCHRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::PlanSwitchRequest
  :super ros::object
  :slots (_swith_on _end_pose _joint_pos ))

(defmethod iserve_srvs::PlanSwitchRequest
  (:init
   (&key
    ((:swith_on __swith_on) nil)
    ((:end_pose __end_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_pos __joint_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _swith_on __swith_on)
   (setq _end_pose __end_pose)
   (setq _joint_pos __joint_pos)
   self)
  (:swith_on
   (&optional (__swith_on :null))
   (if (not (eq __swith_on :null)) (setq _swith_on __swith_on)) _swith_on)
  (:end_pose
   (&optional __end_pose)
   (if __end_pose (setq _end_pose __end_pose)) _end_pose)
  (:joint_pos
   (&optional __joint_pos)
   (if __joint_pos (setq _joint_pos __joint_pos)) _joint_pos)
  (:serialization-length
   ()
   (+
    ;; bool _swith_on
    1
    ;; float64[] _end_pose
    (* 8    (length _end_pose)) 4
    ;; float64[] _joint_pos
    (* 8    (length _joint_pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _swith_on
       (if _swith_on (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _end_pose
     (write-long (length _end_pose) s)
     (dotimes (i (length _end_pose))
       (sys::poke (elt _end_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_pos
     (write-long (length _joint_pos) s)
     (dotimes (i (length _joint_pos))
       (sys::poke (elt _joint_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _swith_on
     (setq _swith_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _end_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _end_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass iserve_srvs::PlanSwitchResponse
  :super ros::object
  :slots (_success _message _waypoints ))

(defmethod iserve_srvs::PlanSwitchResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:waypoints __waypoints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _waypoints __waypoints)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:waypoints
   (&optional __waypoints)
   (if __waypoints (setq _waypoints __waypoints)) _waypoints)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; float64[] _waypoints
    (* 8    (length _waypoints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float64[] _waypoints
     (write-long (length _waypoints) s)
     (dotimes (i (length _waypoints))
       (sys::poke (elt _waypoints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _waypoints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass iserve_srvs::PlanSwitch
  :super ros::object
  :slots ())

(setf (get iserve_srvs::PlanSwitch :md5sum-) "cfeabc4c78e5fd8d5dc411ef1421855a")
(setf (get iserve_srvs::PlanSwitch :datatype-) "iserve_srvs/PlanSwitch")
(setf (get iserve_srvs::PlanSwitch :request) iserve_srvs::PlanSwitchRequest)
(setf (get iserve_srvs::PlanSwitch :response) iserve_srvs::PlanSwitchResponse)

(defmethod iserve_srvs::PlanSwitchRequest
  (:response () (instance iserve_srvs::PlanSwitchResponse :init)))

(setf (get iserve_srvs::PlanSwitchRequest :md5sum-) "cfeabc4c78e5fd8d5dc411ef1421855a")
(setf (get iserve_srvs::PlanSwitchRequest :datatype-) "iserve_srvs/PlanSwitchRequest")
(setf (get iserve_srvs::PlanSwitchRequest :definition-)
      "#indicate start or stop plan
bool swith_on
float64[] end_pose
float64[] joint_pos
---
bool success
string message
float64[] waypoints
")

(setf (get iserve_srvs::PlanSwitchResponse :md5sum-) "cfeabc4c78e5fd8d5dc411ef1421855a")
(setf (get iserve_srvs::PlanSwitchResponse :datatype-) "iserve_srvs/PlanSwitchResponse")
(setf (get iserve_srvs::PlanSwitchResponse :definition-)
      "#indicate start or stop plan
bool swith_on
float64[] end_pose
float64[] joint_pos
---
bool success
string message
float64[] waypoints
")



(provide :iserve_srvs/PlanSwitch "cfeabc4c78e5fd8d5dc411ef1421855a")


