; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-msg)


;//! \htmlinclude ObjectModel.msg.html

(cl:defclass <ObjectModel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector hector_worldmodel_msgs-msg:Object)
   :initform (cl:make-array 0 :element-type 'hector_worldmodel_msgs-msg:Object :initial-element (cl:make-instance 'hector_worldmodel_msgs-msg:Object))))
)

(cl:defclass ObjectModel (<ObjectModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-msg:<ObjectModel> is deprecated: use hector_worldmodel_msgs-msg:ObjectModel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:header-val is deprecated.  Use hector_worldmodel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ObjectModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:objects-val is deprecated.  Use hector_worldmodel_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectModel>) ostream)
  "Serializes a message object of type '<ObjectModel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectModel>) istream)
  "Deserializes a message object of type '<ObjectModel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hector_worldmodel_msgs-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectModel>)))
  "Returns string type for a message object of type '<ObjectModel>"
  "hector_worldmodel_msgs/ObjectModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectModel)))
  "Returns string type for a message object of type 'ObjectModel"
  "hector_worldmodel_msgs/ObjectModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectModel>)))
  "Returns md5sum for a message object of type '<ObjectModel>"
  "0e38ac3cfe11f476b7d55135cfbc074a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectModel)))
  "Returns md5sum for a message object of type 'ObjectModel"
  "0e38ac3cfe11f476b7d55135cfbc074a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectModel>)))
  "Returns full string definition for message of type '<ObjectModel>"
  (cl:format cl:nil "# hector_worldmodel_msgs/ObjectModel~%# This message represents a collection of known objects.~%~%Header header~%Object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectModel)))
  "Returns full string definition for message of type 'ObjectModel"
  (cl:format cl:nil "# hector_worldmodel_msgs/ObjectModel~%# This message represents a collection of known objects.~%~%Header header~%Object[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hector_worldmodel_msgs/Object~%# hector_worldmodel_msgs/Object~%# This message represents an estimate of an object's pose and identity.~%~%# The header.~%#   stamp: Timestamp of last update.~%#   frame_id: Coordinate frame, in which the pose is given~%Header header~%~%# The pose~%geometry_msgs/PoseWithCovariance pose~%~%# Further information about the object~%ObjectInfo info~%~%# The tracked state of the object~%ObjectState state~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectInfo~%# hector_worldmodel_msgs/ObjectInfo~%# This message contains information about the estimated class affiliation, object id and corresponding support~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# A string identifying the specific object~%string object_id~%~%# A string that contains the name or a description of the specific object~%string name~%~%# The support (degree of belief) of the object's presence given as log odd ratio~%float32 support~%~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectModel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectModel>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectModel
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
