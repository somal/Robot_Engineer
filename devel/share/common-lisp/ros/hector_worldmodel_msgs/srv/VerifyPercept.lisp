; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-srv)


;//! \htmlinclude VerifyPercept-request.msg.html

(cl:defclass <VerifyPercept-request> (roslisp-msg-protocol:ros-message)
  ((percept
    :reader percept
    :initarg :percept
    :type hector_worldmodel_msgs-msg:PosePercept
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:PosePercept)))
)

(cl:defclass VerifyPercept-request (<VerifyPercept-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VerifyPercept-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VerifyPercept-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<VerifyPercept-request> is deprecated: use hector_worldmodel_msgs-srv:VerifyPercept-request instead.")))

(cl:ensure-generic-function 'percept-val :lambda-list '(m))
(cl:defmethod percept-val ((m <VerifyPercept-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:percept-val is deprecated.  Use hector_worldmodel_msgs-srv:percept instead.")
  (percept m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VerifyPercept-request>) ostream)
  "Serializes a message object of type '<VerifyPercept-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'percept) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VerifyPercept-request>) istream)
  "Deserializes a message object of type '<VerifyPercept-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'percept) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VerifyPercept-request>)))
  "Returns string type for a service object of type '<VerifyPercept-request>"
  "hector_worldmodel_msgs/VerifyPerceptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyPercept-request)))
  "Returns string type for a service object of type 'VerifyPercept-request"
  "hector_worldmodel_msgs/VerifyPerceptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VerifyPercept-request>)))
  "Returns md5sum for a message object of type '<VerifyPercept-request>"
  "4274b9c0812a5a8c107aa29835bb1b45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VerifyPercept-request)))
  "Returns md5sum for a message object of type 'VerifyPercept-request"
  "4274b9c0812a5a8c107aa29835bb1b45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VerifyPercept-request>)))
  "Returns full string definition for message of type '<VerifyPercept-request>"
  (cl:format cl:nil "~%~%~%PosePercept percept~%~%================================================================================~%MSG: hector_worldmodel_msgs/PosePercept~%# hector_worldmodel_msgs/PosePercept~%# This message represents an observation of an object in a single image.~%~%# The header should equal the header of the corresponding image.~%Header header~%~%# The estimated pose of the object with its covariance~%geometry_msgs/PoseWithCovariance pose~%~%# Additional information about the percept~%PerceptInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/PerceptInfo~%# hector_worldmodel_msgs/PerceptInfo~%# This message contains information about the estimated class and object identity ~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# The class association support of the observation~%# The support is the log odd likelihood ratio given by log(p(y/observation y belongs to object of class class_id) / p(y/observation y is a false positive))~%float32 class_support~%~%# A string identifying a specific object~%string object_id~%~%# The object association support of the observation~%# The support is the log odd likelihood ratio given by log(p(observation belongs to object object_id) / p(observation is false positive or belongs to another object))~%float32 object_support~%~%# A string that contains the name or a description of the specific object~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VerifyPercept-request)))
  "Returns full string definition for message of type 'VerifyPercept-request"
  (cl:format cl:nil "~%~%~%PosePercept percept~%~%================================================================================~%MSG: hector_worldmodel_msgs/PosePercept~%# hector_worldmodel_msgs/PosePercept~%# This message represents an observation of an object in a single image.~%~%# The header should equal the header of the corresponding image.~%Header header~%~%# The estimated pose of the object with its covariance~%geometry_msgs/PoseWithCovariance pose~%~%# Additional information about the percept~%PerceptInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_worldmodel_msgs/PerceptInfo~%# hector_worldmodel_msgs/PerceptInfo~%# This message contains information about the estimated class and object identity ~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# The class association support of the observation~%# The support is the log odd likelihood ratio given by log(p(y/observation y belongs to object of class class_id) / p(y/observation y is a false positive))~%float32 class_support~%~%# A string identifying a specific object~%string object_id~%~%# The object association support of the observation~%# The support is the log odd likelihood ratio given by log(p(observation belongs to object object_id) / p(observation is false positive or belongs to another object))~%float32 object_support~%~%# A string that contains the name or a description of the specific object~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VerifyPercept-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'percept))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VerifyPercept-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VerifyPercept-request
    (cl:cons ':percept (percept msg))
))
;//! \htmlinclude VerifyPercept-response.msg.html

(cl:defclass <VerifyPercept-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VerifyPercept-response (<VerifyPercept-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VerifyPercept-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VerifyPercept-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<VerifyPercept-response> is deprecated: use hector_worldmodel_msgs-srv:VerifyPercept-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <VerifyPercept-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:response-val is deprecated.  Use hector_worldmodel_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VerifyPercept-response>)))
    "Constants for message type '<VerifyPercept-response>"
  '((:UNKNOWN . 0)
    (:DISCARD . 1)
    (:CONFIRM . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VerifyPercept-response)))
    "Constants for message type 'VerifyPercept-response"
  '((:UNKNOWN . 0)
    (:DISCARD . 1)
    (:CONFIRM . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VerifyPercept-response>) ostream)
  "Serializes a message object of type '<VerifyPercept-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VerifyPercept-response>) istream)
  "Deserializes a message object of type '<VerifyPercept-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'response)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VerifyPercept-response>)))
  "Returns string type for a service object of type '<VerifyPercept-response>"
  "hector_worldmodel_msgs/VerifyPerceptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyPercept-response)))
  "Returns string type for a service object of type 'VerifyPercept-response"
  "hector_worldmodel_msgs/VerifyPerceptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VerifyPercept-response>)))
  "Returns md5sum for a message object of type '<VerifyPercept-response>"
  "4274b9c0812a5a8c107aa29835bb1b45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VerifyPercept-response)))
  "Returns md5sum for a message object of type 'VerifyPercept-response"
  "4274b9c0812a5a8c107aa29835bb1b45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VerifyPercept-response>)))
  "Returns full string definition for message of type '<VerifyPercept-response>"
  (cl:format cl:nil "~%uint8 response~%uint8 UNKNOWN = 0~%uint8 DISCARD = 1~%uint8 CONFIRM = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VerifyPercept-response)))
  "Returns full string definition for message of type 'VerifyPercept-response"
  (cl:format cl:nil "~%uint8 response~%uint8 UNKNOWN = 0~%uint8 DISCARD = 1~%uint8 CONFIRM = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VerifyPercept-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VerifyPercept-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VerifyPercept-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VerifyPercept)))
  'VerifyPercept-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VerifyPercept)))
  'VerifyPercept-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VerifyPercept)))
  "Returns string type for a service object of type '<VerifyPercept>"
  "hector_worldmodel_msgs/VerifyPercept")