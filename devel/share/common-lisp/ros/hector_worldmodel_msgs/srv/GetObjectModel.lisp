; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-srv)


;//! \htmlinclude GetObjectModel-request.msg.html

(cl:defclass <GetObjectModel-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetObjectModel-request (<GetObjectModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObjectModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObjectModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<GetObjectModel-request> is deprecated: use hector_worldmodel_msgs-srv:GetObjectModel-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObjectModel-request>) ostream)
  "Serializes a message object of type '<GetObjectModel-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObjectModel-request>) istream)
  "Deserializes a message object of type '<GetObjectModel-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObjectModel-request>)))
  "Returns string type for a service object of type '<GetObjectModel-request>"
  "hector_worldmodel_msgs/GetObjectModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObjectModel-request)))
  "Returns string type for a service object of type 'GetObjectModel-request"
  "hector_worldmodel_msgs/GetObjectModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObjectModel-request>)))
  "Returns md5sum for a message object of type '<GetObjectModel-request>"
  "361f26c46d94ccf48a94c138afa225e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObjectModel-request)))
  "Returns md5sum for a message object of type 'GetObjectModel-request"
  "361f26c46d94ccf48a94c138afa225e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObjectModel-request>)))
  "Returns full string definition for message of type '<GetObjectModel-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObjectModel-request)))
  "Returns full string definition for message of type 'GetObjectModel-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObjectModel-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObjectModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObjectModel-request
))
;//! \htmlinclude GetObjectModel-response.msg.html

(cl:defclass <GetObjectModel-response> (roslisp-msg-protocol:ros-message)
  ((model
    :reader model
    :initarg :model
    :type hector_worldmodel_msgs-msg:ObjectModel
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:ObjectModel)))
)

(cl:defclass GetObjectModel-response (<GetObjectModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObjectModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObjectModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<GetObjectModel-response> is deprecated: use hector_worldmodel_msgs-srv:GetObjectModel-response instead.")))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <GetObjectModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:model-val is deprecated.  Use hector_worldmodel_msgs-srv:model instead.")
  (model m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObjectModel-response>) ostream)
  "Serializes a message object of type '<GetObjectModel-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObjectModel-response>) istream)
  "Deserializes a message object of type '<GetObjectModel-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObjectModel-response>)))
  "Returns string type for a service object of type '<GetObjectModel-response>"
  "hector_worldmodel_msgs/GetObjectModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObjectModel-response)))
  "Returns string type for a service object of type 'GetObjectModel-response"
  "hector_worldmodel_msgs/GetObjectModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObjectModel-response>)))
  "Returns md5sum for a message object of type '<GetObjectModel-response>"
  "361f26c46d94ccf48a94c138afa225e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObjectModel-response)))
  "Returns md5sum for a message object of type 'GetObjectModel-response"
  "361f26c46d94ccf48a94c138afa225e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObjectModel-response>)))
  "Returns full string definition for message of type '<GetObjectModel-response>"
  (cl:format cl:nil "ObjectModel model~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectModel~%# hector_worldmodel_msgs/ObjectModel~%# This message represents a collection of known objects.~%~%Header header~%Object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObjectModel-response)))
  "Returns full string definition for message of type 'GetObjectModel-response"
  (cl:format cl:nil "ObjectModel model~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectModel~%# hector_worldmodel_msgs/ObjectModel~%# This message represents a collection of known objects.~%~%Header header~%Object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObjectModel-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObjectModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObjectModel-response
    (cl:cons ':model (model msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetObjectModel)))
  'GetObjectModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetObjectModel)))
  'GetObjectModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObjectModel)))
  "Returns string type for a service object of type '<GetObjectModel>"
  "hector_worldmodel_msgs/GetObjectModel")