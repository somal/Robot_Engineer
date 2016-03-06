; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BehaviorSync.msg.html

(cl:defclass <BehaviorSync> (roslisp-msg-protocol:ros-message)
  ((behavior_id
    :reader behavior_id
    :initarg :behavior_id
    :type cl:integer
    :initform 0)
   (current_state_checksum
    :reader current_state_checksum
    :initarg :current_state_checksum
    :type cl:integer
    :initform 0))
)

(cl:defclass BehaviorSync (<BehaviorSync>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorSync>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorSync)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BehaviorSync> is deprecated: use flexbe_msgs-msg:BehaviorSync instead.")))

(cl:ensure-generic-function 'behavior_id-val :lambda-list '(m))
(cl:defmethod behavior_id-val ((m <BehaviorSync>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:behavior_id-val is deprecated.  Use flexbe_msgs-msg:behavior_id instead.")
  (behavior_id m))

(cl:ensure-generic-function 'current_state_checksum-val :lambda-list '(m))
(cl:defmethod current_state_checksum-val ((m <BehaviorSync>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:current_state_checksum-val is deprecated.  Use flexbe_msgs-msg:current_state_checksum instead.")
  (current_state_checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorSync>) ostream)
  "Serializes a message object of type '<BehaviorSync>"
  (cl:let* ((signed (cl:slot-value msg 'behavior_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current_state_checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorSync>) istream)
  "Deserializes a message object of type '<BehaviorSync>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_state_checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorSync>)))
  "Returns string type for a message object of type '<BehaviorSync>"
  "flexbe_msgs/BehaviorSync")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorSync)))
  "Returns string type for a message object of type 'BehaviorSync"
  "flexbe_msgs/BehaviorSync")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorSync>)))
  "Returns md5sum for a message object of type '<BehaviorSync>"
  "118d64f48696509906c4cf4a228608b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorSync)))
  "Returns md5sum for a message object of type 'BehaviorSync"
  "118d64f48696509906c4cf4a228608b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorSync>)))
  "Returns full string definition for message of type '<BehaviorSync>"
  (cl:format cl:nil "int32 behavior_id~%~%int32 current_state_checksum~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorSync)))
  "Returns full string definition for message of type 'BehaviorSync"
  (cl:format cl:nil "int32 behavior_id~%~%int32 current_state_checksum~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorSync>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorSync>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorSync
    (cl:cons ':behavior_id (behavior_id msg))
    (cl:cons ':current_state_checksum (current_state_checksum msg))
))
