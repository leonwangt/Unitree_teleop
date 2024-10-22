
(cl:in-package :asdf)

(defsystem "iserve_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "JointCommand" :depends-on ("_package_JointCommand"))
    (:file "_package_JointCommand" :depends-on ("_package"))
    (:file "JointState" :depends-on ("_package_JointState"))
    (:file "_package_JointState" :depends-on ("_package"))
    (:file "ManipulationCommand" :depends-on ("_package_ManipulationCommand"))
    (:file "_package_ManipulationCommand" :depends-on ("_package"))
    (:file "Position_cv_anmo" :depends-on ("_package_Position_cv_anmo"))
    (:file "_package_Position_cv_anmo" :depends-on ("_package"))
    (:file "TaskStatus" :depends-on ("_package_TaskStatus"))
    (:file "_package_TaskStatus" :depends-on ("_package"))
  ))