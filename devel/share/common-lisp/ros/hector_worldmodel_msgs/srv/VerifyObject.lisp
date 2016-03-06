; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-srv)


;//! \htmlinclude VerifyObject-request.msg.html

(cl:defclass <VerifyObject-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type hector_worldmodel_msgs-msg:Object
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:Object)))
)

(cl:defclass VerifyObject-request (<VerifyObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VerifyObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VerifyObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<VerifyObject-request> is deprecated: use hector_worldmodel_msgs-srv:VerifyObject-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <VerifyObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:object-val is deprecated.  Use hector_worldmodel_msgs-srv:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VerifyObject-request>) ostream)
  "Serializes a message object of type '<VerifyObject-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VerifyObject-request>) istream)
  "Deserializes a message object of type '<VerifyObject-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VerifyObject-request>)))
  "Returns string type for a service object of type '<VerifyObject-request>"
  "hector_worldmodel_msgs/VerifyObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyObject-request)))
  "Returns string type for a service object of type 'VerifyObject-request"
  "hector_worldmodel_msgs/VerifyObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VerifyObject-request>)))
  "Returns md5sum for a message object of type '<VerifyObject-request>"
  "dbeb23067c9b36e5ac2ebc072e89d000")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VerifyObject-request)))
  "Returns md5sum for a message object of type 'VerifyObject-request"
  "dbeb23067c9b36e5ac2ebc072e89d000")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VerifyObject-request>)))
  "Returns full string definition for message of type '<VerifyObject-request>"
  (cl:format cl:nil "~%~%~%Object object~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VerifyObject-request)))
  "Returns full string definition for message of type 'VerifyObject-request"
  (cl:format cl:nil "~%~%~%Object object~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VerifyObject-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VerifyObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VerifyObject-request
    (cl:cons ':object (object msg))
))
;//! \htmlinclude VerifyObject-response.msg.html

(cl:defclass <VerifyObject-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VerifyObject-response (<VerifyObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VerifyObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VerifyObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<VerifyObject-response> is deprecated: use hector_worldmodel_msgs-srv:VerifyObject-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <VerifyObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:response-val is deprecated.  Use hector_worldmodel_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VerifyObject-response>)))
    "Constants for message type '<VerifyObject-response>"
  '((:UNKNOWN . 0)
    (:DISCARD . 1)
    (:CONFIRM . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VerifyObject-response)))
    "Constants for message type 'VerifyObject-response"
  '((:UNKNOWN . 0)
    (:DISCARD . 1)
    (:CONFIRM . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VerifyObject-response>) ostream)
  "Serializes a message object of type '<VerifyObject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VerifyObject-response>) istream)
  "Deserializes a message object of type '<VerifyObject-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VerifyObject-response>)))
  "Returns string type for a service object of type '<VerifyObject-response>"
  "hector_worldmodel_msgs/VerifyObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyObject-response)))
  "Returns string type for a service object of type 'VerifyObject-response"
  "hector_worldmodel_msgs/VerifyObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VerifyObject-response>)))
  "Returns md5sum for a message object of type '<VerifyObject-response>"
  "dbeb23067c9b36e5ac2ebc072e89d000")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VerifyObject-response)))
  "Returns md5sum for a message object of type 'VerifyObject-response"
  "dbeb23067c9b36e5ac2ebc072e89d000")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VerifyObject-response>)))
  "Returns full string definition for message of type '<VerifyObject-response>"
  (cl:format cl:nil "~%uint8 response~%uint8 UNKNOWN = 0~%uint8 DISCARD = 1~%uint8 CONFIRM = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VerifyObject-response)))
  "Returns full string definition for message of type 'VerifyObject-response"
  (cl:format cl:nil "~%uint8 response~%uint8 UNKNOWN = 0~%uint8 DISCARD = 1~%uint8 CONFIRM = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VerifyObject-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VerifyObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VerifyObject-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VerifyObject)))
  'VerifyObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VerifyObject)))
  'VerifyObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyObject)))
  "Returns string type for a service object of type '<VerifyObject>"
  "hector_worldmodel_msgs/VerifyObject")