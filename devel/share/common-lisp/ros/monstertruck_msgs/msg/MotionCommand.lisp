; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-msg)


;//! \htmlinclude MotionCommand.msg.html

(cl:defclass <MotionCommand> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (steerAngleFront
    :reader steerAngleFront
    :initarg :steerAngleFront
    :type cl:float
    :initform 0.0)
   (steerAngleRear
    :reader steerAngleRear
    :initarg :steerAngleRear
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MotionCommand (<MotionCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-msg:<MotionCommand> is deprecated: use monstertruck_msgs-msg:MotionCommand instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MotionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:speed-val is deprecated.  Use monstertruck_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'steerAngleFront-val :lambda-list '(m))
(cl:defmethod steerAngleFront-val ((m <MotionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:steerAngleFront-val is deprecated.  Use monstertruck_msgs-msg:steerAngleFront instead.")
  (steerAngleFront m))

(cl:ensure-generic-function 'steerAngleRear-val :lambda-list '(m))
(cl:defmethod steerAngleRear-val ((m <MotionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:steerAngleRear-val is deprecated.  Use monstertruck_msgs-msg:steerAngleRear instead.")
  (steerAngleRear m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <MotionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:brake-val is deprecated.  Use monstertruck_msgs-msg:brake instead.")
  (brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionCommand>) ostream)
  "Serializes a message object of type '<MotionCommand>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerAngleFront))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerAngleRear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionCommand>) istream)
  "Deserializes a message object of type '<MotionCommand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerAngleFront) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerAngleRear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'brake) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionCommand>)))
  "Returns string type for a message object of type '<MotionCommand>"
  "monstertruck_msgs/MotionCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionCommand)))
  "Returns string type for a message object of type 'MotionCommand"
  "monstertruck_msgs/MotionCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionCommand>)))
  "Returns md5sum for a message object of type '<MotionCommand>"
  "c7315886ba784873a03b26d185e1ab17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionCommand)))
  "Returns md5sum for a message object of type 'MotionCommand"
  "c7315886ba784873a03b26d185e1ab17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionCommand>)))
  "Returns full string definition for message of type '<MotionCommand>"
  (cl:format cl:nil "float32 speed~%float32 steerAngleFront~%float32 steerAngleRear~%bool brake~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionCommand)))
  "Returns full string definition for message of type 'MotionCommand"
  (cl:format cl:nil "float32 speed~%float32 steerAngleFront~%float32 steerAngleRear~%bool brake~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionCommand>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionCommand
    (cl:cons ':speed (speed msg))
    (cl:cons ':steerAngleFront (steerAngleFront msg))
    (cl:cons ':steerAngleRear (steerAngleRear msg))
    (cl:cons ':brake (brake msg))
))
