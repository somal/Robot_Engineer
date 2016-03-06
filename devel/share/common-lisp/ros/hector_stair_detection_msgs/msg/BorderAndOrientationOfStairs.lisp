; Auto-generated. Do not edit!


(cl:in-package hector_stair_detection_msgs-msg)


;//! \htmlinclude BorderAndOrientationOfStairs.msg.html

(cl:defclass <BorderAndOrientationOfStairs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (border_of_stairs
    :reader border_of_stairs
    :initarg :border_of_stairs
    :type visualization_msgs-msg:MarkerArray
    :initform (cl:make-instance 'visualization_msgs-msg:MarkerArray))
   (orientation_of_stairs
    :reader orientation_of_stairs
    :initarg :orientation_of_stairs
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (number_of_points
    :reader number_of_points
    :initarg :number_of_points
    :type cl:integer
    :initform 0)
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
    :initform 0.0))
)

(cl:defclass BorderAndOrientationOfStairs (<BorderAndOrientationOfStairs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BorderAndOrientationOfStairs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BorderAndOrientationOfStairs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_stair_detection_msgs-msg:<BorderAndOrientationOfStairs> is deprecated: use hector_stair_detection_msgs-msg:BorderAndOrientationOfStairs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BorderAndOrientationOfStairs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:header-val is deprecated.  Use hector_stair_detection_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'border_of_stairs-val :lambda-list '(m))
(cl:defmethod border_of_stairs-val ((m <BorderAndOrientationOfStairs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:border_of_stairs-val is deprecated.  Use hector_stair_detection_msgs-msg:border_of_stairs instead.")
  (border_of_stairs m))

(cl:ensure-generic-function 'orientation_of_stairs-val :lambda-list '(m))
(cl:defmethod orientation_of_stairs-val ((m <BorderAndOrientationOfStairs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:orientation_of_stairs-val is deprecated.  Use hector_stair_detection_msgs-msg:orientation_of_stairs instead.")
  (orientation_of_stairs m))

(cl:ensure-generic-function 'number_of_points-val :lambda-list '(m))
(cl:defmethod number_of_points-val ((m <BorderAndOrientationOfStairs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:number_of_points-val is deprecated.  Use hector_stair_detection_msgs-msg:number_of_points instead.")
  (number_of_points m))

(cl:ensure-generic-function 'directionX-val :lambda-list '(m))
(cl:defmethod directionX-val ((m <BorderAndOrientationOfStairs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:directionX-val is deprecated.  Use hector_stair_detection_msgs-msg:directionX instead.")
  (directionX m))

(cl:ensure-generic-function 'directionY-val :lambda-list '(m))
(cl:defmethod directionY-val ((m <BorderAndOrientationOfStairs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:directionY-val is deprecated.  Use hector_stair_detection_msgs-msg:directionY instead.")
  (directionY m))

(cl:ensure-generic-function 'directionZ-val :lambda-list '(m))
(cl:defmethod directionZ-val ((m <BorderAndOrientationOfStairs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_stair_detection_msgs-msg:directionZ-val is deprecated.  Use hector_stair_detection_msgs-msg:directionZ instead.")
  (directionZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BorderAndOrientationOfStairs>) ostream)
  "Serializes a message object of type '<BorderAndOrientationOfStairs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'border_of_stairs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_of_stairs) ostream)
  (cl:let* ((signed (cl:slot-value msg 'number_of_points)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BorderAndOrientationOfStairs>) istream)
  "Deserializes a message object of type '<BorderAndOrientationOfStairs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'border_of_stairs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_of_stairs) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_of_points) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BorderAndOrientationOfStairs>)))
  "Returns string type for a message object of type '<BorderAndOrientationOfStairs>"
  "hector_stair_detection_msgs/BorderAndOrientationOfStairs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BorderAndOrientationOfStairs)))
  "Returns string type for a message object of type 'BorderAndOrientationOfStairs"
  "hector_stair_detection_msgs/BorderAndOrientationOfStairs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BorderAndOrientationOfStairs>)))
  "Returns md5sum for a message object of type '<BorderAndOrientationOfStairs>"
  "ac1ed20e751bb1d26c4c9d9002347184")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BorderAndOrientationOfStairs)))
  "Returns md5sum for a message object of type 'BorderAndOrientationOfStairs"
  "ac1ed20e751bb1d26c4c9d9002347184")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BorderAndOrientationOfStairs>)))
  "Returns full string definition for message of type '<BorderAndOrientationOfStairs>"
  (cl:format cl:nil "# hector_stair_detection_msgs~%# This message contains, <visualization_msgs::MarkerArray> representing the border of the staris, and <geometry_msgs::PoseStamped> representing the orientation of the stairs corrosponign to the border~%~%#Header information~%std_msgs/Header header~%#border per staris~%visualization_msgs/MarkerArray border_of_stairs~%#orientation per staris~%geometry_msgs/PoseStamped orientation_of_stairs~%#number of points on line; more points <=> larger stairs <=> higher accurancy~%int32 number_of_points~%#direction of staris (vector)~%float32 directionX~%float32 directionY~%float32 directionZ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: visualization_msgs/MarkerArray~%Marker[] markers~%~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%#uint8 DELETEALL=3 # TODO: enable for ROS-J, disabled for now but functionality is still there. Allows one to clear all markers in plugin~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BorderAndOrientationOfStairs)))
  "Returns full string definition for message of type 'BorderAndOrientationOfStairs"
  (cl:format cl:nil "# hector_stair_detection_msgs~%# This message contains, <visualization_msgs::MarkerArray> representing the border of the staris, and <geometry_msgs::PoseStamped> representing the orientation of the stairs corrosponign to the border~%~%#Header information~%std_msgs/Header header~%#border per staris~%visualization_msgs/MarkerArray border_of_stairs~%#orientation per staris~%geometry_msgs/PoseStamped orientation_of_stairs~%#number of points on line; more points <=> larger stairs <=> higher accurancy~%int32 number_of_points~%#direction of staris (vector)~%float32 directionX~%float32 directionY~%float32 directionZ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: visualization_msgs/MarkerArray~%Marker[] markers~%~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%#uint8 DELETEALL=3 # TODO: enable for ROS-J, disabled for now but functionality is still there. Allows one to clear all markers in plugin~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BorderAndOrientationOfStairs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'border_of_stairs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_of_stairs))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BorderAndOrientationOfStairs>))
  "Converts a ROS message object to a list"
  (cl:list 'BorderAndOrientationOfStairs
    (cl:cons ':header (header msg))
    (cl:cons ':border_of_stairs (border_of_stairs msg))
    (cl:cons ':orientation_of_stairs (orientation_of_stairs msg))
    (cl:cons ':number_of_points (number_of_points msg))
    (cl:cons ':directionX (directionX msg))
    (cl:cons ':directionY (directionY msg))
    (cl:cons ':directionZ (directionZ msg))
))
