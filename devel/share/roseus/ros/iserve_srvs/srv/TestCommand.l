;; Auto-generated. Do not edit!


(when (boundp 'iserve_srvs::TestCommand)
  (if (not (find-package "ISERVE_SRVS"))
    (make-package "ISERVE_SRVS"))
  (shadow 'TestCommand (find-package "ISERVE_SRVS")))
(unless (find-package "ISERVE_SRVS::TESTCOMMAND")
  (make-package "ISERVE_SRVS::TESTCOMMAND"))
(unless (find-package "ISERVE_SRVS::TESTCOMMANDREQUEST")
  (make-package "ISERVE_SRVS::TESTCOMMANDREQUEST"))
(unless (find-package "ISERVE_SRVS::TESTCOMMANDRESPONSE")
  (make-package "ISERVE_SRVS::TESTCOMMANDRESPONSE"))

(in-package "ROS")





(defclass iserve_srvs::TestCommandRequest
  :super ros::object
  :slots (_testItem _isLoad _isSingleJoint _jointNo _cycleTimes _velocity _pointIndex _segmentNo _startIndex _endIndex ))

(defmethod iserve_srvs::TestCommandRequest
  (:init
   (&key
    ((:testItem __testItem) "")
    ((:isLoad __isLoad) nil)
    ((:isSingleJoint __isSingleJoint) nil)
    ((:jointNo __jointNo) 0)
    ((:cycleTimes __cycleTimes) 0)
    ((:velocity __velocity) 0.0)
    ((:pointIndex __pointIndex) 0)
    ((:segmentNo __segmentNo) "")
    ((:startIndex __startIndex) 0)
    ((:endIndex __endIndex) 0)
    )
   (send-super :init)
   (setq _testItem (string __testItem))
   (setq _isLoad __isLoad)
   (setq _isSingleJoint __isSingleJoint)
   (setq _jointNo (round __jointNo))
   (setq _cycleTimes (round __cycleTimes))
   (setq _velocity (float __velocity))
   (setq _pointIndex (round __pointIndex))
   (setq _segmentNo (string __segmentNo))
   (setq _startIndex (round __startIndex))
   (setq _endIndex (round __endIndex))
   self)
  (:testItem
   (&optional __testItem)
   (if __testItem (setq _testItem __testItem)) _testItem)
  (:isLoad
   (&optional (__isLoad :null))
   (if (not (eq __isLoad :null)) (setq _isLoad __isLoad)) _isLoad)
  (:isSingleJoint
   (&optional (__isSingleJoint :null))
   (if (not (eq __isSingleJoint :null)) (setq _isSingleJoint __isSingleJoint)) _isSingleJoint)
  (:jointNo
   (&optional __jointNo)
   (if __jointNo (setq _jointNo __jointNo)) _jointNo)
  (:cycleTimes
   (&optional __cycleTimes)
   (if __cycleTimes (setq _cycleTimes __cycleTimes)) _cycleTimes)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:pointIndex
   (&optional __pointIndex)
   (if __pointIndex (setq _pointIndex __pointIndex)) _pointIndex)
  (:segmentNo
   (&optional __segmentNo)
   (if __segmentNo (setq _segmentNo __segmentNo)) _segmentNo)
  (:startIndex
   (&optional __startIndex)
   (if __startIndex (setq _startIndex __startIndex)) _startIndex)
  (:endIndex
   (&optional __endIndex)
   (if __endIndex (setq _endIndex __endIndex)) _endIndex)
  (:serialization-length
   ()
   (+
    ;; string _testItem
    4 (length _testItem)
    ;; bool _isLoad
    1
    ;; bool _isSingleJoint
    1
    ;; int32 _jointNo
    4
    ;; int32 _cycleTimes
    4
    ;; float64 _velocity
    8
    ;; int32 _pointIndex
    4
    ;; string _segmentNo
    4 (length _segmentNo)
    ;; int32 _startIndex
    4
    ;; int32 _endIndex
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _testItem
       (write-long (length _testItem) s) (princ _testItem s)
     ;; bool _isLoad
       (if _isLoad (write-byte -1 s) (write-byte 0 s))
     ;; bool _isSingleJoint
       (if _isSingleJoint (write-byte -1 s) (write-byte 0 s))
     ;; int32 _jointNo
       (write-long _jointNo s)
     ;; int32 _cycleTimes
       (write-long _cycleTimes s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _pointIndex
       (write-long _pointIndex s)
     ;; string _segmentNo
       (write-long (length _segmentNo) s) (princ _segmentNo s)
     ;; int32 _startIndex
       (write-long _startIndex s)
     ;; int32 _endIndex
       (write-long _endIndex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _testItem
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _testItem (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _isLoad
     (setq _isLoad (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isSingleJoint
     (setq _isSingleJoint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _jointNo
     (setq _jointNo (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cycleTimes
     (setq _cycleTimes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _pointIndex
     (setq _pointIndex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _segmentNo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _segmentNo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _startIndex
     (setq _startIndex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _endIndex
     (setq _endIndex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass iserve_srvs::TestCommandResponse
  :super ros::object
  :slots (_success _testItem _isLoad _cycleTimes _velocity _isSingleJoint _jointNo _segmentNo _pointIndex _startIndex _endIndex ))

(defmethod iserve_srvs::TestCommandResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:testItem __testItem) "")
    ((:isLoad __isLoad) nil)
    ((:cycleTimes __cycleTimes) 0)
    ((:velocity __velocity) 0.0)
    ((:isSingleJoint __isSingleJoint) nil)
    ((:jointNo __jointNo) 0)
    ((:segmentNo __segmentNo) "")
    ((:pointIndex __pointIndex) 0)
    ((:startIndex __startIndex) 0)
    ((:endIndex __endIndex) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _testItem (string __testItem))
   (setq _isLoad __isLoad)
   (setq _cycleTimes (round __cycleTimes))
   (setq _velocity (float __velocity))
   (setq _isSingleJoint __isSingleJoint)
   (setq _jointNo (round __jointNo))
   (setq _segmentNo (string __segmentNo))
   (setq _pointIndex (round __pointIndex))
   (setq _startIndex (round __startIndex))
   (setq _endIndex (round __endIndex))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:testItem
   (&optional __testItem)
   (if __testItem (setq _testItem __testItem)) _testItem)
  (:isLoad
   (&optional (__isLoad :null))
   (if (not (eq __isLoad :null)) (setq _isLoad __isLoad)) _isLoad)
  (:cycleTimes
   (&optional __cycleTimes)
   (if __cycleTimes (setq _cycleTimes __cycleTimes)) _cycleTimes)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:isSingleJoint
   (&optional (__isSingleJoint :null))
   (if (not (eq __isSingleJoint :null)) (setq _isSingleJoint __isSingleJoint)) _isSingleJoint)
  (:jointNo
   (&optional __jointNo)
   (if __jointNo (setq _jointNo __jointNo)) _jointNo)
  (:segmentNo
   (&optional __segmentNo)
   (if __segmentNo (setq _segmentNo __segmentNo)) _segmentNo)
  (:pointIndex
   (&optional __pointIndex)
   (if __pointIndex (setq _pointIndex __pointIndex)) _pointIndex)
  (:startIndex
   (&optional __startIndex)
   (if __startIndex (setq _startIndex __startIndex)) _startIndex)
  (:endIndex
   (&optional __endIndex)
   (if __endIndex (setq _endIndex __endIndex)) _endIndex)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _testItem
    4 (length _testItem)
    ;; bool _isLoad
    1
    ;; int32 _cycleTimes
    4
    ;; float64 _velocity
    8
    ;; bool _isSingleJoint
    1
    ;; int32 _jointNo
    4
    ;; string _segmentNo
    4 (length _segmentNo)
    ;; int32 _pointIndex
    4
    ;; int32 _startIndex
    4
    ;; int32 _endIndex
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _testItem
       (write-long (length _testItem) s) (princ _testItem s)
     ;; bool _isLoad
       (if _isLoad (write-byte -1 s) (write-byte 0 s))
     ;; int32 _cycleTimes
       (write-long _cycleTimes s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _isSingleJoint
       (if _isSingleJoint (write-byte -1 s) (write-byte 0 s))
     ;; int32 _jointNo
       (write-long _jointNo s)
     ;; string _segmentNo
       (write-long (length _segmentNo) s) (princ _segmentNo s)
     ;; int32 _pointIndex
       (write-long _pointIndex s)
     ;; int32 _startIndex
       (write-long _startIndex s)
     ;; int32 _endIndex
       (write-long _endIndex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _testItem
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _testItem (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _isLoad
     (setq _isLoad (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _cycleTimes
     (setq _cycleTimes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _isSingleJoint
     (setq _isSingleJoint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _jointNo
     (setq _jointNo (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _segmentNo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _segmentNo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _pointIndex
     (setq _pointIndex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _startIndex
     (setq _startIndex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _endIndex
     (setq _endIndex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass iserve_srvs::TestCommand
  :super ros::object
  :slots ())

(setf (get iserve_srvs::TestCommand :md5sum-) "56cbc0917dc3153d523ed8899f37edfb")
(setf (get iserve_srvs::TestCommand :datatype-) "iserve_srvs/TestCommand")
(setf (get iserve_srvs::TestCommand :request) iserve_srvs::TestCommandRequest)
(setf (get iserve_srvs::TestCommand :response) iserve_srvs::TestCommandResponse)

(defmethod iserve_srvs::TestCommandRequest
  (:response () (instance iserve_srvs::TestCommandResponse :init)))

(setf (get iserve_srvs::TestCommandRequest :md5sum-) "56cbc0917dc3153d523ed8899f37edfb")
(setf (get iserve_srvs::TestCommandRequest :datatype-) "iserve_srvs/TestCommandRequest")
(setf (get iserve_srvs::TestCommandRequest :definition-)
      "#noiseTest, motionStabilityTest, loadTest, jointAngleTest, accuracyTest, powTest, breakTest, motionTest, goHome
string testItem

bool isLoad
bool isSingleJoint

#0, 1, 2, 3, 4, 5
int32 jointNo

# at least 1
int32 cycleTimes
float64 velocity

# 1, 2, 3, 4, 5
int32 pointIndex

#toShelf, toLocker, goHome
string segmentNo

int32 startIndex
int32 endIndex
---
bool success
string testItem
bool isLoad
int32 cycleTimes
float64 velocity
bool isSingleJoint
int32 jointNo
string segmentNo
int32 pointIndex
int32 startIndex
int32 endIndex



")

(setf (get iserve_srvs::TestCommandResponse :md5sum-) "56cbc0917dc3153d523ed8899f37edfb")
(setf (get iserve_srvs::TestCommandResponse :datatype-) "iserve_srvs/TestCommandResponse")
(setf (get iserve_srvs::TestCommandResponse :definition-)
      "#noiseTest, motionStabilityTest, loadTest, jointAngleTest, accuracyTest, powTest, breakTest, motionTest, goHome
string testItem

bool isLoad
bool isSingleJoint

#0, 1, 2, 3, 4, 5
int32 jointNo

# at least 1
int32 cycleTimes
float64 velocity

# 1, 2, 3, 4, 5
int32 pointIndex

#toShelf, toLocker, goHome
string segmentNo

int32 startIndex
int32 endIndex
---
bool success
string testItem
bool isLoad
int32 cycleTimes
float64 velocity
bool isSingleJoint
int32 jointNo
string segmentNo
int32 pointIndex
int32 startIndex
int32 endIndex



")



(provide :iserve_srvs/TestCommand "56cbc0917dc3153d523ed8899f37edfb")


