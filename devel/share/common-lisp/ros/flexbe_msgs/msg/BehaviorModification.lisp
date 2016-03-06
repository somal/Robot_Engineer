; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BehaviorModification.msg.html

(cl:defclass <BehaviorModification> (roslisp-msg-protocol:ros-message)
  ((index_begin
    :reader index_begin
    :initarg :index_begin
    :type cl:fixnum
    :initform 0)
   (index_end
    :reader index_end
    :initarg :index_end
    :type cl:fixnum
    :initform 0)
   (new_content
    :reader new_content
    :initarg :new_content
    :type cl:string
    :initform ""))
)

(cl:defclass BehaviorModification (<BehaviorModification>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorModification>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorModification)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BehaviorModification> is deprecated: use flexbe_msgs-msg:BehaviorModification instead.")))

(cl:ensure-generic-function 'index_begin-val :lambda-list '(m))
(cl:defmethod index_begin-val ((m <BehaviorModification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:index_begin-val is deprecated.  Use flexbe_msgs-msg:index_begin instead.")
  (index_begin m))

(cl:ensure-generic-function 'index_end-val :lambda-list '(m))
(cl:defmethod index_end-val ((m <BehaviorModification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:index_end-val is deprecated.  Use flexbe_msgs-msg:index_end instead.")
  (index_end m))

(cl:ensure-generic-function 'new_content-val :lambda-list '(m))
(cl:defmethod new_content-val ((m <BehaviorModification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:new_content-val is deprecated.  Use flexbe_msgs-msg:new_content instead.")
  (new_content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorModification>) ostream)
  "Serializes a message object of type '<BehaviorModification>"
  (cl:let* ((signed (cl:slot-value msg 'index_begin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'index_end)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'new_content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'new_content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorModification>) istream)
  "Deserializes a message object of type '<BehaviorModification>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index_begin) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index_end) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'new_content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorModification>)))
  "Returns string type for a message object of type '<BehaviorModification>"
  "flexbe_msgs/BehaviorModification")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorModification)))
  "Returns string type for a message object of type 'BehaviorModification"
  "flexbe_msgs/BehaviorModification")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorModification>)))
  "Returns md5sum for a message object of type '<BehaviorModification>"
  "61b20282cfa0fea375bc27974c4cb3ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorModification)))
  "Returns md5sum for a message object of type 'BehaviorModification"
  "61b20282cfa0fea375bc27974c4cb3ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorModification>)))
  "Returns full string definition for message of type '<BehaviorModification>"
  (cl:format cl:nil "int16 index_begin~%int16 index_end~%string new_content~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorModification)))
  "Returns full string definition for message of type 'BehaviorModification"
  (cl:format cl:nil "int16 index_begin~%int16 index_end~%string new_content~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorModification>))
  (cl:+ 0
     2
     2
     4 (cl:length (cl:slot-value msg 'new_content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorModification>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorModification
    (cl:cons ':index_begin (index_begin msg))
    (cl:cons ':index_end (index_end msg))
    (cl:cons ':new_content (new_content msg))
))
