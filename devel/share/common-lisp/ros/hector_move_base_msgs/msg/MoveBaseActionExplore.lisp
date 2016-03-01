; Auto-generated. Do not edit!


(cl:in-package hector_move_base_msgs-msg)


;//! \htmlinclude MoveBaseActionExplore.msg.html

(cl:defclass <MoveBaseActionExplore> (roslisp-msg-protocol:ros-message)
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
    :type hector_move_base_msgs-msg:MoveBaseExplore
    :initform (cl:make-instance 'hector_move_base_msgs-msg:MoveBaseExplore)))
)

(cl:defclass MoveBaseActionExplore (<MoveBaseActionExplore>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBaseActionExplore>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBaseActionExplore)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_move_base_msgs-msg:<MoveBaseActionExplore> is deprecated: use hector_move_base_msgs-msg:MoveBaseActionExplore instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoveBaseActionExplore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:header-val is deprecated.  Use hector_move_base_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <MoveBaseActionExplore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:goal_id-val is deprecated.  Use hector_move_base_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MoveBaseActionExplore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:goal-val is deprecated.  Use hector_move_base_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBaseActionExplore>) ostream)
  "Serializes a message object of type '<MoveBaseActionExplore>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBaseActionExplore>) istream)
  "Deserializes a message object of type '<MoveBaseActionExplore>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBaseActionExplore>)))
  "Returns string type for a message object of type '<MoveBaseActionExplore>"
  "hector_move_base_msgs/MoveBaseActionExplore")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBaseActionExplore)))
  "Returns string type for a message object of type 'MoveBaseActionExplore"
  "hector_move_base_msgs/MoveBaseActionExplore")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBaseActionExplore>)))
  "Returns md5sum for a message object of type '<MoveBaseActionExplore>"
  "9f099efa6d81450c557f59f9dfac4454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBaseActionExplore)))
  "Returns md5sum for a message object of type 'MoveBaseActionExplore"
  "9f099efa6d81450c557f59f9dfac4454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBaseActionExplore>)))
  "Returns full string definition for message of type '<MoveBaseActionExplore>"
  (cl:format cl:nil "Header header~%actionlib_msgs/GoalID goal_id~%MoveBaseExplore goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseExplore~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBaseActionExplore)))
  "Returns full string definition for message of type 'MoveBaseActionExplore"
  (cl:format cl:nil "Header header~%actionlib_msgs/GoalID goal_id~%MoveBaseExplore goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseExplore~%float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBaseActionExplore>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBaseActionExplore>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBaseActionExplore
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
