; Auto-generated. Do not edit!


(cl:in-package hector_move_base_msgs-msg)


;//! \htmlinclude MoveBaseExplore.msg.html

(cl:defclass <MoveBaseExplore> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveBaseExplore (<MoveBaseExplore>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBaseExplore>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBaseExplore)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_move_base_msgs-msg:<MoveBaseExplore> is deprecated: use hector_move_base_msgs-msg:MoveBaseExplore instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveBaseExplore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:speed-val is deprecated.  Use hector_move_base_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBaseExplore>) ostream)
  "Serializes a message object of type '<MoveBaseExplore>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBaseExplore>) istream)
  "Deserializes a message object of type '<MoveBaseExplore>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBaseExplore>)))
  "Returns string type for a message object of type '<MoveBaseExplore>"
  "hector_move_base_msgs/MoveBaseExplore")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBaseExplore)))
  "Returns string type for a message object of type 'MoveBaseExplore"
  "hector_move_base_msgs/MoveBaseExplore")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBaseExplore>)))
  "Returns md5sum for a message object of type '<MoveBaseExplore>"
  "ca65bba734a79b4a6707341d829f4d5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBaseExplore)))
  "Returns md5sum for a message object of type 'MoveBaseExplore"
  "ca65bba734a79b4a6707341d829f4d5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBaseExplore>)))
  "Returns full string definition for message of type '<MoveBaseExplore>"
  (cl:format cl:nil "float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBaseExplore)))
  "Returns full string definition for message of type 'MoveBaseExplore"
  (cl:format cl:nil "float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBaseExplore>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBaseExplore>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBaseExplore
    (cl:cons ':speed (speed msg))
))
