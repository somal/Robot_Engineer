; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude ContainerStructure.msg.html

(cl:defclass <ContainerStructure> (roslisp-msg-protocol:ros-message)
  ((behavior_id
    :reader behavior_id
    :initarg :behavior_id
    :type cl:integer
    :initform 0)
   (containers
    :reader containers
    :initarg :containers
    :type (cl:vector flexbe_msgs-msg:Container)
   :initform (cl:make-array 0 :element-type 'flexbe_msgs-msg:Container :initial-element (cl:make-instance 'flexbe_msgs-msg:Container))))
)

(cl:defclass ContainerStructure (<ContainerStructure>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContainerStructure>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContainerStructure)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<ContainerStructure> is deprecated: use flexbe_msgs-msg:ContainerStructure instead.")))

(cl:ensure-generic-function 'behavior_id-val :lambda-list '(m))
(cl:defmethod behavior_id-val ((m <ContainerStructure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:behavior_id-val is deprecated.  Use flexbe_msgs-msg:behavior_id instead.")
  (behavior_id m))

(cl:ensure-generic-function 'containers-val :lambda-list '(m))
(cl:defmethod containers-val ((m <ContainerStructure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:containers-val is deprecated.  Use flexbe_msgs-msg:containers instead.")
  (containers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContainerStructure>) ostream)
  "Serializes a message object of type '<ContainerStructure>"
  (cl:let* ((signed (cl:slot-value msg 'behavior_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'containers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'containers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContainerStructure>) istream)
  "Deserializes a message object of type '<ContainerStructure>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'containers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'containers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'flexbe_msgs-msg:Container))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContainerStructure>)))
  "Returns string type for a message object of type '<ContainerStructure>"
  "flexbe_msgs/ContainerStructure")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContainerStructure)))
  "Returns string type for a message object of type 'ContainerStructure"
  "flexbe_msgs/ContainerStructure")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContainerStructure>)))
  "Returns md5sum for a message object of type '<ContainerStructure>"
  "9cd26d15621063b90279d87117694328")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContainerStructure)))
  "Returns md5sum for a message object of type 'ContainerStructure"
  "9cd26d15621063b90279d87117694328")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContainerStructure>)))
  "Returns full string definition for message of type '<ContainerStructure>"
  (cl:format cl:nil "int32 behavior_id~%Container[] containers~%================================================================================~%MSG: flexbe_msgs/Container~%string path~%string[] children~%string[] outcomes~%string[] transitions~%byte[] autonomy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContainerStructure)))
  "Returns full string definition for message of type 'ContainerStructure"
  (cl:format cl:nil "int32 behavior_id~%Container[] containers~%================================================================================~%MSG: flexbe_msgs/Container~%string path~%string[] children~%string[] outcomes~%string[] transitions~%byte[] autonomy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContainerStructure>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'containers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContainerStructure>))
  "Converts a ROS message object to a list"
  (cl:list 'ContainerStructure
    (cl:cons ':behavior_id (behavior_id msg))
    (cl:cons ':containers (containers msg))
))
