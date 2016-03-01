; Auto-generated. Do not edit!


(cl:in-package hector_move_base_msgs-msg)


;//! \htmlinclude MoveBaseActionGeneric.msg.html

(cl:defclass <MoveBaseActionGeneric> (roslisp-msg-protocol:ros-message)
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
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MoveBaseActionGeneric (<MoveBaseActionGeneric>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBaseActionGeneric>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBaseActionGeneric)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_move_base_msgs-msg:<MoveBaseActionGeneric> is deprecated: use hector_move_base_msgs-msg:MoveBaseActionGeneric instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoveBaseActionGeneric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:header-val is deprecated.  Use hector_move_base_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <MoveBaseActionGeneric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:goal_id-val is deprecated.  Use hector_move_base_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MoveBaseActionGeneric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:type-val is deprecated.  Use hector_move_base_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MoveBaseActionGeneric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:goal-val is deprecated.  Use hector_move_base_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MoveBaseActionGeneric>)))
    "Constants for message type '<MoveBaseActionGeneric>"
  '((:GOAL . 1)
    (:PATH . 2)
    (:EXPLORE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MoveBaseActionGeneric)))
    "Constants for message type 'MoveBaseActionGeneric"
  '((:GOAL . 1)
    (:PATH . 2)
    (:EXPLORE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBaseActionGeneric>) ostream)
  "Serializes a message object of type '<MoveBaseActionGeneric>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'goal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBaseActionGeneric>) istream)
  "Deserializes a message object of type '<MoveBaseActionGeneric>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBaseActionGeneric>)))
  "Returns string type for a message object of type '<MoveBaseActionGeneric>"
  "hector_move_base_msgs/MoveBaseActionGeneric")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBaseActionGeneric)))
  "Returns string type for a message object of type 'MoveBaseActionGeneric"
  "hector_move_base_msgs/MoveBaseActionGeneric")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBaseActionGeneric>)))
  "Returns md5sum for a message object of type '<MoveBaseActionGeneric>"
  "8ce7dbf3bac6ada8b079fa43ad02e966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBaseActionGeneric)))
  "Returns md5sum for a message object of type 'MoveBaseActionGeneric"
  "8ce7dbf3bac6ada8b079fa43ad02e966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBaseActionGeneric>)))
  "Returns full string definition for message of type '<MoveBaseActionGeneric>"
  (cl:format cl:nil "Header header~%actionlib_msgs/GoalID goal_id~%~%uint8 GOAL = 1~%uint8 PATH = 2~%uint8 EXPLORE = 3~%uint8 type~%~%uint8[] goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBaseActionGeneric)))
  "Returns full string definition for message of type 'MoveBaseActionGeneric"
  (cl:format cl:nil "Header header~%actionlib_msgs/GoalID goal_id~%~%uint8 GOAL = 1~%uint8 PATH = 2~%uint8 EXPLORE = 3~%uint8 type~%~%uint8[] goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBaseActionGeneric>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBaseActionGeneric>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBaseActionGeneric
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':goal (goal msg))
))
