
(cl:in-package :asdf)

(defsystem "hector_worldmodel_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :hector_worldmodel_msgs-msg
)
  :components ((:file "_package")
    (:file "AddObject" :depends-on ("_package_AddObject"))
    (:file "_package_AddObject" :depends-on ("_package"))
    (:file "SetObjectName" :depends-on ("_package_SetObjectName"))
    (:file "_package_SetObjectName" :depends-on ("_package"))
    (:file "GetObjectModel" :depends-on ("_package_GetObjectModel"))
    (:file "_package_GetObjectModel" :depends-on ("_package"))
    (:file "SetObjectState" :depends-on ("_package_SetObjectState"))
    (:file "_package_SetObjectState" :depends-on ("_package"))
    (:file "VerifyObject" :depends-on ("_package_VerifyObject"))
    (:file "_package_VerifyObject" :depends-on ("_package"))
    (:file "VerifyPercept" :depends-on ("_package_VerifyPercept"))
    (:file "_package_VerifyPercept" :depends-on ("_package"))
  ))