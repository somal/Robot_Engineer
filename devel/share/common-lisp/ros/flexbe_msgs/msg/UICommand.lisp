; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude UICommand.msg.html

(cl:defclass <UICommand> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform ""))
)

(cl:defclass UICommand (<UICommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UICommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UICommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<UICommand> is deprecated: use flexbe_msgs-msg:UICommand instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <UICommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:command-val is deprecated.  Use flexbe_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <UICommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:key-val is deprecated.  Use flexbe_msgs-msg:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UICommand>) ostream)
  "Serializes a message object of type '<UICommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UICommand>) istream)
  "Deserializes a message object of type '<UICommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UICommand>)))
  "Returns string type for a message object of type '<UICommand>"
  "flexbe_msgs/UICommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UICommand)))
  "Returns string type for a message object of type 'UICommand"
  "flexbe_msgs/UICommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UICommand>)))
  "Returns md5sum for a message object of type '<UICommand>"
  "88f45469138737816fa9cd59fbf3c084")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UICommand)))
  "Returns md5sum for a message object of type 'UICommand"
  "88f45469138737816fa9cd59fbf3c084")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UICommand>)))
  "Returns full string definition for message of type '<UICommand>"
  (cl:format cl:nil "# Sends a command to the command interface of the FlexBE UI.~%# In order to be successfully executed, the user needs to have ROS commands enabled and the keys have to match.~%~%# Command to be executed as it would be entered in the command interface~%string command~%~%# Security key, needs to match the key set in the UI~%string key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UICommand)))
  "Returns full string definition for message of type 'UICommand"
  (cl:format cl:nil "# Sends a command to the command interface of the FlexBE UI.~%# In order to be successfully executed, the user needs to have ROS commands enabled and the keys have to match.~%~%# Command to be executed as it would be entered in the command interface~%string command~%~%# Security key, needs to match the key set in the UI~%string key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UICommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UICommand>))
  "Converts a ROS message object to a list"
  (cl:list 'UICommand
    (cl:cons ':command (command msg))
    (cl:cons ':key (key msg))
))
