
(cl:in-package :asdf)

(defsystem "hector_stair_detection_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
               :visualization_msgs-msg
)
  :components ((:file "_package")
    (:file "BorderAndOrientationOfStairs" :depends-on ("_package_BorderAndOrientationOfStairs"))
    (:file "_package_BorderAndOrientationOfStairs" :depends-on ("_package"))
    (:file "PositionAndOrientaion" :depends-on ("_package_PositionAndOrientaion"))
    (:file "_package_PositionAndOrientaion" :depends-on ("_package"))
  ))