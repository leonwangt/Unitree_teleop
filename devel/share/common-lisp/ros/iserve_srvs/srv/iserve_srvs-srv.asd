
(cl:in-package :asdf)

(defsystem "iserve_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CommandTask" :depends-on ("_package_CommandTask"))
    (:file "_package_CommandTask" :depends-on ("_package"))
    (:file "DeliveryRobotTask" :depends-on ("_package_DeliveryRobotTask"))
    (:file "_package_DeliveryRobotTask" :depends-on ("_package"))
    (:file "DragTeach" :depends-on ("_package_DragTeach"))
    (:file "_package_DragTeach" :depends-on ("_package"))
    (:file "DragTeachSwitch" :depends-on ("_package_DragTeachSwitch"))
    (:file "_package_DragTeachSwitch" :depends-on ("_package"))
    (:file "Enable_cv_anmo" :depends-on ("_package_Enable_cv_anmo"))
    (:file "_package_Enable_cv_anmo" :depends-on ("_package"))
    (:file "GripperTask" :depends-on ("_package_GripperTask"))
    (:file "_package_GripperTask" :depends-on ("_package"))
    (:file "ImpedanceTask" :depends-on ("_package_ImpedanceTask"))
    (:file "_package_ImpedanceTask" :depends-on ("_package"))
    (:file "JointPose" :depends-on ("_package_JointPose"))
    (:file "_package_JointPose" :depends-on ("_package"))
    (:file "PlanSwitch" :depends-on ("_package_PlanSwitch"))
    (:file "_package_PlanSwitch" :depends-on ("_package"))
    (:file "SetInt" :depends-on ("_package_SetInt"))
    (:file "_package_SetInt" :depends-on ("_package"))
    (:file "TestCommand" :depends-on ("_package_TestCommand"))
    (:file "_package_TestCommand" :depends-on ("_package"))
  ))