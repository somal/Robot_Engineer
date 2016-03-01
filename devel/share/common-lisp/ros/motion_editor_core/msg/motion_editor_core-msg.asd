
(cl:in-package :asdf)

(defsystem "motion_editor_core-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ExecuteMotionCommand" :depends-on ("_package_ExecuteMotionCommand"))
    (:file "_package_ExecuteMotionCommand" :depends-on ("_package"))
    (:file "ExecuteMotionGoal" :depends-on ("_package_ExecuteMotionGoal"))
    (:file "_package_ExecuteMotionGoal" :depends-on ("_package"))
    (:file "ExecuteMotionActionFeedback" :depends-on ("_package_ExecuteMotionActionFeedback"))
    (:file "_package_ExecuteMotionActionFeedback" :depends-on ("_package"))
    (:file "ExecuteMotionAction" :depends-on ("_package_ExecuteMotionAction"))
    (:file "_package_ExecuteMotionAction" :depends-on ("_package"))
    (:file "ExecuteMotionActionGoal" :depends-on ("_package_ExecuteMotionActionGoal"))
    (:file "_package_ExecuteMotionActionGoal" :depends-on ("_package"))
    (:file "ExecuteMotionResult" :depends-on ("_package_ExecuteMotionResult"))
    (:file "_package_ExecuteMotionResult" :depends-on ("_package"))
    (:file "ExecuteMotionFeedback" :depends-on ("_package_ExecuteMotionFeedback"))
    (:file "_package_ExecuteMotionFeedback" :depends-on ("_package"))
    (:file "ExecuteMotionActionResult" :depends-on ("_package_ExecuteMotionActionResult"))
    (:file "_package_ExecuteMotionActionResult" :depends-on ("_package"))
  ))