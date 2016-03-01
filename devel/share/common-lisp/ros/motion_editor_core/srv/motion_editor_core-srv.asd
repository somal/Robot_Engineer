
(cl:in-package :asdf)

(defsystem "motion_editor_core-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ExecuteMotion" :depends-on ("_package_ExecuteMotion"))
    (:file "_package_ExecuteMotion" :depends-on ("_package"))
  ))