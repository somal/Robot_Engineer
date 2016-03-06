; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BehaviorLog.msg.html

(cl:defclass <BehaviorLog> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (status_code
    :reader status_code
    :initarg :status_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BehaviorLog (<BehaviorLog>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorLog>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorLog)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BehaviorLog> is deprecated: use flexbe_msgs-msg:BehaviorLog instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <BehaviorLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:text-val is deprecated.  Use flexbe_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'status_code-val :lambda-list '(m))
(cl:defmethod status_code-val ((m <BehaviorLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:status_code-val is deprecated.  Use flexbe_msgs-msg:status_code instead.")
  (status_code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BehaviorLog>)))
    "Constants for message type '<BehaviorLog>"
  '((:INFO . 0)
    (:WARN . 1)
    (:HINT . 2)
    (:ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BehaviorLog)))
    "Constants for message type 'BehaviorLog"
  '((:INFO . 0)
    (:WARN . 1)
    (:HINT . 2)
    (:ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorLog>) ostream)
  "Serializes a message object of type '<BehaviorLog>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorLog>) istream)
  "Deserializes a message object of type '<BehaviorLog>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorLog>)))
  "Returns string type for a message object of type '<BehaviorLog>"
  "flexbe_msgs/BehaviorLog")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorLog)))
  "Returns string type for a message object of type 'BehaviorLog"
  "flexbe_msgs/BehaviorLog")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorLog>)))
  "Returns md5sum for a message object of type '<BehaviorLog>"
  "c36df15815f4e2b28ca1b5224372fcc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorLog)))
  "Returns md5sum for a message object of type 'BehaviorLog"
  "c36df15815f4e2b28ca1b5224372fcc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorLog>)))
  "Returns full string definition for message of type '<BehaviorLog>"
  (cl:format cl:nil "string text~%~%uint8 INFO 		= 0~%uint8 WARN  	= 1~%uint8 HINT  	= 2~%uint8 ERROR 	= 3~%~%uint8 status_code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorLog)))
  "Returns full string definition for message of type 'BehaviorLog"
  (cl:format cl:nil "string text~%~%uint8 INFO 		= 0~%uint8 WARN  	= 1~%uint8 HINT  	= 2~%uint8 ERROR 	= 3~%~%uint8 status_code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorLog>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorLog>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorLog
    (cl:cons ':text (text msg))
    (cl:cons ':status_code (status_code msg))
))
