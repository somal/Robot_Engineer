
(cl:in-package :asdf)

(defsystem "hector_worldmodel_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "ObjectModel" :depends-on ("_package_ObjectModel"))
    (:file "_package_ObjectModel" :depends-on ("_package"))
    (:file "PosePercept" :depends-on ("_package_PosePercept"))
    (:file "_package_PosePercept" :depends-on ("_package"))
    (:file "ImagePercept" :depends-on ("_package_ImagePercept"))
    (:file "_package_ImagePercept" :depends-on ("_package"))
    (:file "ObjectState" :depends-on ("_package_ObjectState"))
    (:file "_package_ObjectState" :depends-on ("_package"))
    (:file "ObjectInfo" :depends-on ("_package_ObjectInfo"))
    (:file "_package_ObjectInfo" :depends-on ("_package"))
    (:file "PerceptInfo" :depends-on ("_package_PerceptInfo"))
    (:file "_package_PerceptInfo" :depends-on ("_package"))
  ))