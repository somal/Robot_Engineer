; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-msg)


;//! \htmlinclude ObjectState.msg.html

(cl:defclass <ObjectState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjectState (<ObjectState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-msg:<ObjectState> is deprecated: use hector_worldmodel_msgs-msg:ObjectState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ObjectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:state-val is deprecated.  Use hector_worldmodel_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectState>)))
    "Constants for message type '<ObjectState>"
  '((:UNKNOWN . 0)
    (:PENDING . 1)
    (:ACTIVE . 2)
    (:INACTIVE . 3)
    (:CONFIRMED . -1)
    (:DISCARDED . -2)
    (:APPROACHING . -3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectState)))
    "Constants for message type 'ObjectState"
  '((:UNKNOWN . 0)
    (:PENDING . 1)
    (:ACTIVE . 2)
    (:INACTIVE . 3)
    (:CONFIRMED . -1)
    (:DISCARDED . -2)
    (:APPROACHING . -3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectState>) ostream)
  "Serializes a message object of type '<ObjectState>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectState>) istream)
  "Deserializes a message object of type '<ObjectState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectState>)))
  "Returns string type for a message object of type '<ObjectState>"
  "hector_worldmodel_msgs/ObjectState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectState)))
  "Returns string type for a message object of type 'ObjectState"
  "hector_worldmodel_msgs/ObjectState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectState>)))
  "Returns md5sum for a message object of type '<ObjectState>"
  "5bb1b6744a4e40af3e4b8b56b4e06597")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectState)))
  "Returns md5sum for a message object of type 'ObjectState"
  "5bb1b6744a4e40af3e4b8b56b4e06597")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectState>)))
  "Returns full string definition for message of type '<ObjectState>"
  (cl:format cl:nil "# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectState)))
  "Returns full string definition for message of type 'ObjectState"
  (cl:format cl:nil "# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectState>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectState
    (cl:cons ':state (state msg))
))
