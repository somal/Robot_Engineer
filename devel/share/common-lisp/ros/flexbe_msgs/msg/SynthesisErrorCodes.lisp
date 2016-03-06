; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude SynthesisErrorCodes.msg.html

(cl:defclass <SynthesisErrorCodes> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass SynthesisErrorCodes (<SynthesisErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SynthesisErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SynthesisErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<SynthesisErrorCodes> is deprecated: use flexbe_msgs-msg:SynthesisErrorCodes instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SynthesisErrorCodes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:value-val is deprecated.  Use flexbe_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SynthesisErrorCodes>)))
    "Constants for message type '<SynthesisErrorCodes>"
  '((:SUCCESS . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SynthesisErrorCodes)))
    "Constants for message type 'SynthesisErrorCodes"
  '((:SUCCESS . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SynthesisErrorCodes>) ostream)
  "Serializes a message object of type '<SynthesisErrorCodes>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SynthesisErrorCodes>) istream)
  "Deserializes a message object of type '<SynthesisErrorCodes>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SynthesisErrorCodes>)))
  "Returns string type for a message object of type '<SynthesisErrorCodes>"
  "flexbe_msgs/SynthesisErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SynthesisErrorCodes)))
  "Returns string type for a message object of type 'SynthesisErrorCodes"
  "flexbe_msgs/SynthesisErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SynthesisErrorCodes>)))
  "Returns md5sum for a message object of type '<SynthesisErrorCodes>"
  "64e05da1f86a12ce44b1cca74395bd4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SynthesisErrorCodes)))
  "Returns md5sum for a message object of type 'SynthesisErrorCodes"
  "64e05da1f86a12ce44b1cca74395bd4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SynthesisErrorCodes>)))
  "Returns full string definition for message of type '<SynthesisErrorCodes>"
  (cl:format cl:nil "int32 value~%~%# success~%int32 SUCCESS = 1~%~%# all other values will be considered as any sort of error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SynthesisErrorCodes)))
  "Returns full string definition for message of type 'SynthesisErrorCodes"
  (cl:format cl:nil "int32 value~%~%# success~%int32 SUCCESS = 1~%~%# all other values will be considered as any sort of error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SynthesisErrorCodes>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SynthesisErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'SynthesisErrorCodes
    (cl:cons ':value (value msg))
))
