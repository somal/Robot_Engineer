; Auto-generated. Do not edit!


(cl:in-package hector_move_base_msgs-msg)


;//! \htmlinclude MoveBaseActionPath.msg.html

(cl:defclass <MoveBaseActionPath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type hector_move_base_msgs-msg:MoveBasePath
    :initform (cl:make-instance 'hector_move_base_msgs-msg:MoveBasePath)))
)

(cl:defclass MoveBaseActionPath (<MoveBaseActionPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBaseActionPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBaseActionPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_move_base_msgs-msg:<MoveBaseActionPath> is deprecated: use hector_move_base_msgs-msg:MoveBaseActionPath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoveBaseActionPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:header-val is deprecated.  Use hector_move_base_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <MoveBaseActionPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:goal_id-val is deprecated.  Use hector_move_base_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MoveBaseActionPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:goal-val is deprecated.  Use hector_move_base_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBaseActionPath>) ostream)
  "Serializes a message object of type '<MoveBaseActionPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBaseActionPath>) istream)
  "Deserializes a message object of type '<MoveBaseActionPath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBaseActionPath>)))
  "Returns string type for a message object of type '<MoveBaseActionPath>"
  "hector_move_base_msgs/MoveBaseActionPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBaseActionPath)))
  "Returns string type for a message object of type 'MoveBaseActionPath"
  "hector_move_base_msgs/MoveBaseActionPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBaseActionPath>)))
  "Returns md5sum for a message object of type '<MoveBaseActionPath>"
  "2ba1163fe8474977e25e7675e03cc050")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBaseActionPath)))
  "Returns md5sum for a message object of type 'MoveBaseActionPath"
  "2ba1163fe8474977e25e7675e03cc050")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBaseActionPath>)))
  "Returns full string definition for message of type '<MoveBaseActionPath>"
  (cl:format cl:nil "Header header~%actionlib_msgs/GoalID goal_id~%MoveBasePath goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBasePath~%nav_msgs/Path target_path~%float32 speed~%bool fixed~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBaseActionPath)))
  "Returns full string definition for message of type 'MoveBaseActionPath"
  (cl:format cl:nil "Header header~%actionlib_msgs/GoalID goal_id~%MoveBasePath goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBasePath~%nav_msgs/Path target_path~%float32 speed~%bool fixed~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBaseActionPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBaseActionPath>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBaseActionPath
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
