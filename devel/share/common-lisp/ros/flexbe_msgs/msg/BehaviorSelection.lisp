; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BehaviorSelection.msg.html

(cl:defclass <BehaviorSelection> (roslisp-msg-protocol:ros-message)
  ((behavior_id
    :reader behavior_id
    :initarg :behavior_id
    :type cl:fixnum
    :initform 0)
   (behavior_checksum
    :reader behavior_checksum
    :initarg :behavior_checksum
    :type cl:integer
    :initform 0)
   (autonomy_level
    :reader autonomy_level
    :initarg :autonomy_level
    :type cl:fixnum
    :initform 0)
   (arg_keys
    :reader arg_keys
    :initarg :arg_keys
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (arg_values
    :reader arg_values
    :initarg :arg_values
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (modifications
    :reader modifications
    :initarg :modifications
    :type (cl:vector flexbe_msgs-msg:BehaviorModification)
   :initform (cl:make-array 0 :element-type 'flexbe_msgs-msg:BehaviorModification :initial-element (cl:make-instance 'flexbe_msgs-msg:BehaviorModification))))
)

(cl:defclass BehaviorSelection (<BehaviorSelection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorSelection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorSelection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BehaviorSelection> is deprecated: use flexbe_msgs-msg:BehaviorSelection instead.")))

(cl:ensure-generic-function 'behavior_id-val :lambda-list '(m))
(cl:defmethod behavior_id-val ((m <BehaviorSelection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:behavior_id-val is deprecated.  Use flexbe_msgs-msg:behavior_id instead.")
  (behavior_id m))

(cl:ensure-generic-function 'behavior_checksum-val :lambda-list '(m))
(cl:defmethod behavior_checksum-val ((m <BehaviorSelection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:behavior_checksum-val is deprecated.  Use flexbe_msgs-msg:behavior_checksum instead.")
  (behavior_checksum m))

(cl:ensure-generic-function 'autonomy_level-val :lambda-list '(m))
(cl:defmethod autonomy_level-val ((m <BehaviorSelection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:autonomy_level-val is deprecated.  Use flexbe_msgs-msg:autonomy_level instead.")
  (autonomy_level m))

(cl:ensure-generic-function 'arg_keys-val :lambda-list '(m))
(cl:defmethod arg_keys-val ((m <BehaviorSelection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:arg_keys-val is deprecated.  Use flexbe_msgs-msg:arg_keys instead.")
  (arg_keys m))

(cl:ensure-generic-function 'arg_values-val :lambda-list '(m))
(cl:defmethod arg_values-val ((m <BehaviorSelection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:arg_values-val is deprecated.  Use flexbe_msgs-msg:arg_values instead.")
  (arg_values m))

(cl:ensure-generic-function 'modifications-val :lambda-list '(m))
(cl:defmethod modifications-val ((m <BehaviorSelection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:modifications-val is deprecated.  Use flexbe_msgs-msg:modifications instead.")
  (modifications m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorSelection>) ostream)
  "Serializes a message object of type '<BehaviorSelection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'behavior_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'behavior_checksum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autonomy_level)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arg_keys))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'arg_keys))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arg_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'arg_values))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'modifications))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'modifications))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorSelection>) istream)
  "Deserializes a message object of type '<BehaviorSelection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'behavior_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior_checksum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autonomy_level)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arg_keys) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arg_keys)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arg_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arg_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'modifications) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'modifications)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'flexbe_msgs-msg:BehaviorModification))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorSelection>)))
  "Returns string type for a message object of type '<BehaviorSelection>"
  "flexbe_msgs/BehaviorSelection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorSelection)))
  "Returns string type for a message object of type 'BehaviorSelection"
  "flexbe_msgs/BehaviorSelection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorSelection>)))
  "Returns md5sum for a message object of type '<BehaviorSelection>"
  "0ad94e4521ba5a5f8d29c4420f5f183e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorSelection)))
  "Returns md5sum for a message object of type 'BehaviorSelection"
  "0ad94e4521ba5a5f8d29c4420f5f183e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorSelection>)))
  "Returns full string definition for message of type '<BehaviorSelection>"
  (cl:format cl:nil "uint8 behavior_id~%int32 behavior_checksum~%~%uint8 autonomy_level~%string[] arg_keys~%string[] arg_values~%~%flexbe_msgs/BehaviorModification[] modifications~%================================================================================~%MSG: flexbe_msgs/BehaviorModification~%int16 index_begin~%int16 index_end~%string new_content~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorSelection)))
  "Returns full string definition for message of type 'BehaviorSelection"
  (cl:format cl:nil "uint8 behavior_id~%int32 behavior_checksum~%~%uint8 autonomy_level~%string[] arg_keys~%string[] arg_values~%~%flexbe_msgs/BehaviorModification[] modifications~%================================================================================~%MSG: flexbe_msgs/BehaviorModification~%int16 index_begin~%int16 index_end~%string new_content~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorSelection>))
  (cl:+ 0
     1
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_keys) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'modifications) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorSelection>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorSelection
    (cl:cons ':behavior_id (behavior_id msg))
    (cl:cons ':behavior_checksum (behavior_checksum msg))
    (cl:cons ':autonomy_level (autonomy_level msg))
    (cl:cons ':arg_keys (arg_keys msg))
    (cl:cons ':arg_values (arg_values msg))
    (cl:cons ':modifications (modifications msg))
))
