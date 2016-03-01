; Auto-generated. Do not edit!


(cl:in-package hector_move_base_msgs-msg)


;//! \htmlinclude MoveBasePath.msg.html

(cl:defclass <MoveBasePath> (roslisp-msg-protocol:ros-message)
  ((target_path
    :reader target_path
    :initarg :target_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (fixed
    :reader fixed
    :initarg :fixed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveBasePath (<MoveBasePath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBasePath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBasePath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_move_base_msgs-msg:<MoveBasePath> is deprecated: use hector_move_base_msgs-msg:MoveBasePath instead.")))

(cl:ensure-generic-function 'target_path-val :lambda-list '(m))
(cl:defmethod target_path-val ((m <MoveBasePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:target_path-val is deprecated.  Use hector_move_base_msgs-msg:target_path instead.")
  (target_path m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveBasePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:speed-val is deprecated.  Use hector_move_base_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'fixed-val :lambda-list '(m))
(cl:defmethod fixed-val ((m <MoveBasePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:fixed-val is deprecated.  Use hector_move_base_msgs-msg:fixed instead.")
  (fixed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBasePath>) ostream)
  "Serializes a message object of type '<MoveBasePath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_path) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fixed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBasePath>) istream)
  "Deserializes a message object of type '<MoveBasePath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_path) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'fixed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBasePath>)))
  "Returns string type for a message object of type '<MoveBasePath>"
  "hector_move_base_msgs/MoveBasePath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBasePath)))
  "Returns string type for a message object of type 'MoveBasePath"
  "hector_move_base_msgs/MoveBasePath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBasePath>)))
  "Returns md5sum for a message object of type '<MoveBasePath>"
  "01d1d8626316462580586d1490b5197c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBasePath)))
  "Returns md5sum for a message object of type 'MoveBasePath"
  "01d1d8626316462580586d1490b5197c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBasePath>)))
  "Returns full string definition for message of type '<MoveBasePath>"
  (cl:format cl:nil "nav_msgs/Path target_path~%float32 speed~%bool fixed~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBasePath)))
  "Returns full string definition for message of type 'MoveBasePath"
  (cl:format cl:nil "nav_msgs/Path target_path~%float32 speed~%bool fixed~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBasePath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_path))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBasePath>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBasePath
    (cl:cons ':target_path (target_path msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':fixed (fixed msg))
))
