; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-msg)


;//! \htmlinclude ServoCommands.msg.html

(cl:defclass <ServoCommands> (roslisp-msg-protocol:ros-message)
  ((servo
    :reader servo
    :initarg :servo
    :type (cl:vector monstertruck_msgs-msg:ServoCommand)
   :initform (cl:make-array 0 :element-type 'monstertruck_msgs-msg:ServoCommand :initial-element (cl:make-instance 'monstertruck_msgs-msg:ServoCommand))))
)

(cl:defclass ServoCommands (<ServoCommands>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoCommands>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoCommands)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-msg:<ServoCommands> is deprecated: use monstertruck_msgs-msg:ServoCommands instead.")))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <ServoCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:servo-val is deprecated.  Use monstertruck_msgs-msg:servo instead.")
  (servo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoCommands>) ostream)
  "Serializes a message object of type '<ServoCommands>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoCommands>) istream)
  "Deserializes a message object of type '<ServoCommands>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'servo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'servo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'monstertruck_msgs-msg:ServoCommand))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoCommands>)))
  "Returns string type for a message object of type '<ServoCommands>"
  "monstertruck_msgs/ServoCommands")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoCommands)))
  "Returns string type for a message object of type 'ServoCommands"
  "monstertruck_msgs/ServoCommands")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoCommands>)))
  "Returns md5sum for a message object of type '<ServoCommands>"
  "370e1168616fe3787707a7aa29404a95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoCommands)))
  "Returns md5sum for a message object of type 'ServoCommands"
  "370e1168616fe3787707a7aa29404a95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoCommands>)))
  "Returns full string definition for message of type '<ServoCommands>"
  (cl:format cl:nil "ServoCommand[] servo~%~%================================================================================~%MSG: monstertruck_msgs/ServoCommand~%uint8 id~%float32 position~%float32 DISABLE = 999.0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoCommands)))
  "Returns full string definition for message of type 'ServoCommands"
  (cl:format cl:nil "ServoCommand[] servo~%~%================================================================================~%MSG: monstertruck_msgs/ServoCommand~%uint8 id~%float32 position~%float32 DISABLE = 999.0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoCommands>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoCommands>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoCommands
    (cl:cons ':servo (servo msg))
))
