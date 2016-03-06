; Auto-generated. Do not edit!


(cl:in-package hector_stair_detection_msgs-msg)


;//! \htmlinclude PositionAndOrientaion.msg.html

(cl:defclass <PositionAndOrientaion> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (directionX
    :reader directionX
    :initarg :directionX
    :type cl:float
    :initform 0.0)
   (directionY
    :reader directionY
    :initarg :directionY
    :type cl:float
    :initform 0.0)
   (directionZ
    :reader directionZ
    :initarg :directionZ
    :type cl:float
    :initform 0.0)
   (orientation_of_stairs
    :reader orientation_of_stairs
    :initarg :orientation_of_stairs
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PositionAndOrientaion (<PositionAndOrientaion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionAndOrientaion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionAndOrientaion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_stair_detection_msgs-msg:<PositionAndOrientaion> is deprecated: use hector_stair_detection_msgs-msg:PositionAndOrientaion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionAndOrientaion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:header-val is deprecated.  Use hector_stair_detection_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'directionX-val :lambda-list '(m))
(cl:defmethod directionX-val ((m <PositionAndOrientaion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:directionX-val is deprecated.  Use hector_stair_detection_msgs-msg:directionX instead.")
  (directionX m))

(cl:ensure-generic-function 'directionY-val :lambda-list '(m))
(cl:defmethod directionY-val ((m <PositionAndOrientaion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:directionY-val is deprecated.  Use hector_stair_detection_msgs-msg:directionY instead.")
  (directionY m))

(cl:ensure-generic-function 'directionZ-val :lambda-list '(m))
(cl:defmethod directionZ-val ((m <PositionAndOrientaion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:directionZ-val is deprecated.  Use hector_stair_detection_msgs-msg:directionZ instead.")
  (directionZ m))

(cl:ensure-generic-function 'orientation_of_stairs-val :lambda-list '(m))
(cl:defmethod orientation_of_stairs-val ((m <PositionAndOrientaion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:orientation_of_stairs-val is deprecated.  Use hector_stair_detection_msgs-msg:orientation_of_stairs instead.")
  (orientation_of_stairs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionAndOrientaion>) ostream)
  "Serializes a message object of type '<PositionAndOrientaion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'directionX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'directionY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'directionZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_of_stairs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionAndOrientaion>) istream)
  "Deserializes a message object of type '<PositionAndOrientaion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'directionX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'directionY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'directionZ) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_of_stairs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionAndOrientaion>)))
  "Returns string type for a message object of type '<PositionAndOrientaion>"
  "hector_stair_detection_msgs/PositionAndOrientaion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionAndOrientaion)))
  "Returns string type for a message object of type 'PositionAndOrientaion"
  "hector_stair_detection_msgs/PositionAndOrientaion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionAndOrientaion>)))
  "Returns md5sum for a message object of type '<PositionAndOrientaion>"
  "7ae873f11172dc2b64c3df858f4184b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionAndOrientaion)))
  "Returns md5sum for a message object of type 'PositionAndOrientaion"
  "7ae873f11172dc2b64c3df858f4184b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionAndOrientaion>)))
  "Returns full string definition for message of type '<PositionAndOrientaion>"
  (cl:format cl:nil "# hector_stair_detection_msgs~%# This message contains,<geometry_msgs::PoseStamped> representing the orientation of the stairs corrosponign to the border; and the direction as Vector~%~%#Header information~%std_msgs/Header header~%#direction of staris (vector)~%float32 directionX~%float32 directionY~%float32 directionZ~%#orientation per staris~%geometry_msgs/PoseStamped orientation_of_stairs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionAndOrientaion)))
  "Returns full string definition for message of type 'PositionAndOrientaion"
  (cl:format cl:nil "# hector_stair_detection_msgs~%# This message contains,<geometry_msgs::PoseStamped> representing the orientation of the stairs corrosponign to the border; and the direction as Vector~%~%#Header information~%std_msgs/Header header~%#direction of staris (vector)~%float32 directionX~%float32 directionY~%float32 directionZ~%#orientation per staris~%geometry_msgs/PoseStamped orientation_of_stairs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionAndOrientaion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_of_stairs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionAndOrientaion>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionAndOrientaion
    (cl:cons ':header (header msg))
    (cl:cons ':directionX (directionX msg))
    (cl:cons ':directionY (directionY msg))
    (cl:cons ':directionZ (directionZ msg))
    (cl:cons ':orientation_of_stairs (orientation_of_stairs msg))
))
