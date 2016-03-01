; Auto-generated. Do not edit!


(cl:in-package hector_move_base_msgs-msg)


;//! \htmlinclude MoveBaseFeedback.msg.html

(cl:defclass <MoveBaseFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveBaseFeedback (<MoveBaseFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBaseFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBaseFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_move_base_msgs-msg:<MoveBaseFeedback> is deprecated: use hector_move_base_msgs-msg:MoveBaseFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBaseFeedback>) ostream)
  "Serializes a message object of type '<MoveBaseFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBaseFeedback>) istream)
  "Deserializes a message object of type '<MoveBaseFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBaseFeedback>)))
  "Returns string type for a message object of type '<MoveBaseFeedback>"
  "hector_move_base_msgs/MoveBaseFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBaseFeedback)))
  "Returns string type for a message object of type 'MoveBaseFeedback"
  "hector_move_base_msgs/MoveBaseFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBaseFeedback>)))
  "Returns md5sum for a message object of type '<MoveBaseFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBaseFeedback)))
  "Returns md5sum for a message object of type 'MoveBaseFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBaseFeedback>)))
  "Returns full string definition for message of type '<MoveBaseFeedback>"
  (cl:format cl:nil "# empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBaseFeedback)))
  "Returns full string definition for message of type 'MoveBaseFeedback"
  (cl:format cl:nil "# empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBaseFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBaseFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBaseFeedback
))
