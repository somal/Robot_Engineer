; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-srv)


;//! \htmlinclude AddObject-request.msg.html

(cl:defclass <AddObject-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type hector_worldmodel_msgs-msg:Object
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:Object))
   (map_to_next_obstacle
    :reader map_to_next_obstacle
    :initarg :map_to_next_obstacle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddObject-request (<AddObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<AddObject-request> is deprecated: use hector_worldmodel_msgs-srv:AddObject-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <AddObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:object-val is deprecated.  Use hector_worldmodel_msgs-srv:object instead.")
  (object m))

(cl:ensure-generic-function 'map_to_next_obstacle-val :lambda-list '(m))
(cl:defmethod map_to_next_obstacle-val ((m <AddObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:map_to_next_obstacle-val is deprecated.  Use hector_worldmodel_msgs-srv:map_to_next_obstacle instead.")
  (map_to_next_obstacle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddObject-request>) ostream)
  "Serializes a message object of type '<AddObject-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'map_to_next_obstacle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddObject-request>) istream)
  "Deserializes a message object of type '<AddObject-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
    (cl:setf (cl:slot-value msg 'map_to_next_obstacle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddObject-request>)))
  "Returns string type for a service object of type '<AddObject-request>"
  "hector_worldmodel_msgs/AddObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddObject-request)))
  "Returns string type for a service object of type 'AddObject-request"
  "hector_worldmodel_msgs/AddObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddObject-request>)))
  "Returns md5sum for a message object of type '<AddObject-request>"
  "3fb8af17854d0a0aa1df05f91f7ba459")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddObject-request)))
  "Returns md5sum for a message object of type 'AddObject-request"
  "3fb8af17854d0a0aa1df05f91f7ba459")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddObject-request>)))
  "Returns full string definition for message of type '<AddObject-request>"
  (cl:format cl:nil "~%~%~%Object object~%~%~%bool map_to_next_obstacle~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddObject-request)))
  "Returns full string definition for message of type 'AddObject-request"
  (cl:format cl:nil "~%~%~%Object object~%~%~%bool map_to_next_obstacle~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddObject-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddObject-request
    (cl:cons ':object (object msg))
    (cl:cons ':map_to_next_obstacle (map_to_next_obstacle msg))
))
;//! \htmlinclude AddObject-response.msg.html

(cl:defclass <AddObject-response> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type hector_worldmodel_msgs-msg:Object
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:Object)))
)

(cl:defclass AddObject-response (<AddObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<AddObject-response> is deprecated: use hector_worldmodel_msgs-srv:AddObject-response instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <AddObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:object-val is deprecated.  Use hector_worldmodel_msgs-srv:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddObject-response>) ostream)
  "Serializes a message object of type '<AddObject-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddObject-response>) istream)
  "Deserializes a message object of type '<AddObject-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddObject-response>)))
  "Returns string type for a service object of type '<AddObject-response>"
  "hector_worldmodel_msgs/AddObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddObject-response)))
  "Returns string type for a service object of type 'AddObject-response"
  "hector_worldmodel_msgs/AddObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddObject-response>)))
  "Returns md5sum for a message object of type '<AddObject-response>"
  "3fb8af17854d0a0aa1df05f91f7ba459")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddObject-response)))
  "Returns md5sum for a message object of type 'AddObject-response"
  "3fb8af17854d0a0aa1df05f91f7ba459")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddObject-response>)))
  "Returns full string definition for message of type '<AddObject-response>"
  (cl:format cl:nil "~%Object object~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddObject-response)))
  "Returns full string definition for message of type 'AddObject-response"
  (cl:format cl:nil "~%Object object~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddObject-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddObject-response
    (cl:cons ':object (object msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddObject)))
  'AddObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddObject)))
  'AddObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddObject)))
  "Returns string type for a service object of type '<AddObject>"
  "hector_worldmodel_msgs/AddObject")