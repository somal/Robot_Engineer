; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-msg)


;//! \htmlinclude ServoPositions.msg.html

(cl:defclass <ServoPositions> (roslisp-msg-protocol:ros-message)
  ((servo
    :reader servo
    :initarg :servo
    :type (cl:vector monstertruck_msgs-msg:ServoPosition)
   :initform (cl:make-array 0 :element-type 'monstertruck_msgs-msg:ServoPosition :initial-element (cl:make-instance 'monstertruck_msgs-msg:ServoPosition))))
)

(cl:defclass ServoPositions (<ServoPositions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoPositions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoPositions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-msg:<ServoPositions> is deprecated: use monstertruck_msgs-msg:ServoPositions instead.")))

(cl:ensure-generic-function 'servo-val :lambda-list '(m))
(cl:defmethod servo-val ((m <ServoPositions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:servo-val is deprecated.  Use monstertruck_msgs-msg:servo instead.")
  (servo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoPositions>) ostream)
  "Serializes a message object of type '<ServoPositions>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoPositions>) istream)
  "Deserializes a message object of type '<ServoPositions>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'servo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'servo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'monstertruck_msgs-msg:ServoPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoPositions>)))
  "Returns string type for a message object of type '<ServoPositions>"
  "monstertruck_msgs/ServoPositions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoPositions)))
  "Returns string type for a message object of type 'ServoPositions"
  "monstertruck_msgs/ServoPositions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoPositions>)))
  "Returns md5sum for a message object of type '<ServoPositions>"
  "58f4f4c70dfb67bb7c1c5f32abf2a35a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoPositions)))
  "Returns md5sum for a message object of type 'ServoPositions"
  "58f4f4c70dfb67bb7c1c5f32abf2a35a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoPositions>)))
  "Returns full string definition for message of type '<ServoPositions>"
  (cl:format cl:nil "ServoPosition[] servo~%~%================================================================================~%MSG: monstertruck_msgs/ServoPosition~%uint8 id~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoPositions)))
  "Returns full string definition for message of type 'ServoPositions"
  (cl:format cl:nil "ServoPosition[] servo~%~%================================================================================~%MSG: monstertruck_msgs/ServoPosition~%uint8 id~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoPositions>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoPositions>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoPositions
    (cl:cons ':servo (servo msg))
))
