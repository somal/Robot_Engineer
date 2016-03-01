; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-msg)


;//! \htmlinclude ServoCommand.msg.html

(cl:defclass <ServoCommand> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ServoCommand (<ServoCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-msg:<ServoCommand> is deprecated: use monstertruck_msgs-msg:ServoCommand instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ServoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:id-val is deprecated.  Use monstertruck_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ServoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:position-val is deprecated.  Use monstertruck_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ServoCommand>)))
    "Constants for message type '<ServoCommand>"
  '((:DISABLE . 999.0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ServoCommand)))
    "Constants for message type 'ServoCommand"
  '((:DISABLE . 999.0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoCommand>) ostream)
  "Serializes a message object of type '<ServoCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoCommand>) istream)
  "Deserializes a message object of type '<ServoCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoCommand>)))
  "Returns string type for a message object of type '<ServoCommand>"
  "monstertruck_msgs/ServoCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoCommand)))
  "Returns string type for a message object of type 'ServoCommand"
  "monstertruck_msgs/ServoCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoCommand>)))
  "Returns md5sum for a message object of type '<ServoCommand>"
  "7b8ae92b8ba5e2ca96969db3b6b4d5fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoCommand)))
  "Returns md5sum for a message object of type 'ServoCommand"
  "7b8ae92b8ba5e2ca96969db3b6b4d5fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoCommand>)))
  "Returns full string definition for message of type '<ServoCommand>"
  (cl:format cl:nil "uint8 id~%float32 position~%float32 DISABLE = 999.0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoCommand)))
  "Returns full string definition for message of type 'ServoCommand"
  (cl:format cl:nil "uint8 id~%float32 position~%float32 DISABLE = 999.0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoCommand>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoCommand
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
))
