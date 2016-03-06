; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
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
    :type hector_worldmodel_msgs-msg:ObjectInfo
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:ObjectInfo))
   (state
    :reader state
    :initarg :state
    :type hector_worldmodel_msgs-msg:ObjectState
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:ObjectState)))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-msg:<Object> is deprecated: use hector_worldmodel_msgs-msg:Object instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:header-val is deprecated.  Use hector_worldmodel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:pose-val is deprecated.  Use hector_worldmodel_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:info-val is deprecated.  Use hector_worldmodel_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:state-val is deprecated.  Use hector_worldmodel_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "hector_worldmodel_msgs/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "hector_worldmodel_msgs/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "02dea96e80640703553490052f13918d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "02dea96e80640703553490052f13918d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':info (info msg))
    (cl:cons ':state (state msg))
))
