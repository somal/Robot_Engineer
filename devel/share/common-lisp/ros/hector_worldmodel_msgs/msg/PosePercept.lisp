; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-msg)


;//! \htmlinclude PosePercept.msg.html

(cl:defclass <PosePercept> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (info
    :reader info
    :initarg :info
    :type hector_worldmodel_msgs-msg:PerceptInfo
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:PerceptInfo)))
)

(cl:defclass PosePercept (<PosePercept>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosePercept>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosePercept)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-msg:<PosePercept> is deprecated: use hector_worldmodel_msgs-msg:PosePercept instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PosePercept>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:header-val is deprecated.  Use hector_worldmodel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PosePercept>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:pose-val is deprecated.  Use hector_worldmodel_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <PosePercept>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:info-val is deprecated.  Use hector_worldmodel_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosePercept>) ostream)
  "Serializes a message object of type '<PosePercept>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosePercept>) istream)
  "Deserializes a message object of type '<PosePercept>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosePercept>)))
  "Returns string type for a message object of type '<PosePercept>"
  "hector_worldmodel_msgs/PosePercept")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosePercept)))
  "Returns string type for a message object of type 'PosePercept"
  "hector_worldmodel_msgs/PosePercept")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosePercept>)))
  "Returns md5sum for a message object of type '<PosePercept>"
  "3b0c987b9e39c7b12b9e71be97a0c021")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosePercept)))
  "Returns md5sum for a message object of type 'PosePercept"
  "3b0c987b9e39c7b12b9e71be97a0c021")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosePercept>)))
  "Returns full string definition for message of type '<PosePercept>"
  (cl:format cl:nil "# hector_worldmodel_msgs/PosePercept~%# This message represents an observation of an object in a single image.~%~%# The header should equal the header of the corresponding image.~%Header header~%~%# The estimated pose of the object with its covariance~%geometry_msgs/PoseWithCovariance pose~%~%# Additional information about the percept~%PerceptInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/PerceptInfo~%# hector_worldmodel_msgs/PerceptInfo~%# This message contains information about the estimated class and object identity ~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# The class association support of the observation~%# The support is the log odd likelihood ratio given by log(p(y/observation y belongs to object of class class_id) / p(y/observation y is a false positive))~%float32 class_support~%~%# A string identifying a specific object~%string object_id~%~%# The object association support of the observation~%# The support is the log odd likelihood ratio given by log(p(observation belongs to object object_id) / p(observation is false positive or belongs to another object))~%float32 object_support~%~%# A string that contains the name or a description of the specific object~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosePercept)))
  "Returns full string definition for message of type 'PosePercept"
  (cl:format cl:nil "# hector_worldmodel_msgs/PosePercept~%# This message represents an observation of an object in a single image.~%~%# The header should equal the header of the corresponding image.~%Header header~%~%# The estimated pose of the object with its covariance~%geometry_msgs/PoseWithCovariance pose~%~%# Additional information about the percept~%PerceptInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/PerceptInfo~%# hector_worldmodel_msgs/PerceptInfo~%# This message contains information about the estimated class and object identity ~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# The class association support of the observation~%# The support is the log odd likelihood ratio given by log(p(y/observation y belongs to object of class class_id) / p(y/observation y is a false positive))~%float32 class_support~%~%# A string identifying a specific object~%string object_id~%~%# The object association support of the observation~%# The support is the log odd likelihood ratio given by log(p(observation belongs to object object_id) / p(observation is false positive or belongs to another object))~%float32 object_support~%~%# A string that contains the name or a description of the specific object~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosePercept>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosePercept>))
  "Converts a ROS message object to a list"
  (cl:list 'PosePercept
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':info (info msg))
))
