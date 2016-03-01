; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-msg)


;//! \htmlinclude ServoPosition.msg.html

(cl:defclass <ServoPosition> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServoPosition (<ServoPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-msg:<ServoPosition> is deprecated: use monstertruck_msgs-msg:ServoPosition instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ServoPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:id-val is deprecated.  Use monstertruck_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ServoPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:position-val is deprecated.  Use monstertruck_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoPosition>) ostream)
  "Serializes a message object of type '<ServoPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoPosition>) istream)
  "Deserializes a message object of type '<ServoPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoPosition>)))
  "Returns string type for a message object of type '<ServoPosition>"
  "monstertruck_msgs/ServoPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoPosition)))
  "Returns string type for a message object of type 'ServoPosition"
  "monstertruck_msgs/ServoPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoPosition>)))
  "Returns md5sum for a message object of type '<ServoPosition>"
  "34da3b42c9f93d7d1f000179528cfe5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoPosition)))
  "Returns md5sum for a message object of type 'ServoPosition"
  "34da3b42c9f93d7d1f000179528cfe5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoPosition>)))
  "Returns full string definition for message of type '<ServoPosition>"
  (cl:format cl:nil "uint8 id~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoPosition)))
  "Returns full string definition for message of type 'ServoPosition"
  (cl:format cl:nil "uint8 id~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoPosition>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoPosition
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
))
