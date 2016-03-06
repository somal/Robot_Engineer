; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BEStatus.msg.html

(cl:defclass <BEStatus> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (behavior_id
    :reader behavior_id
    :initarg :behavior_id
    :type cl:integer
    :initform 0)
   (code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0)
   (args
    :reader args
    :initarg :args
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass BEStatus (<BEStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BEStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BEStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BEStatus> is deprecated: use flexbe_msgs-msg:BEStatus instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BEStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:stamp-val is deprecated.  Use flexbe_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'behavior_id-val :lambda-list '(m))
(cl:defmethod behavior_id-val ((m <BEStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:behavior_id-val is deprecated.  Use flexbe_msgs-msg:behavior_id instead.")
  (behavior_id m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <BEStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:code-val is deprecated.  Use flexbe_msgs-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <BEStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:args-val is deprecated.  Use flexbe_msgs-msg:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BEStatus>)))
    "Constants for message type '<BEStatus>"
  '((:STARTED . 0)
    (:FINISHED . 1)
    (:FAILED . 2)
    (:LOCKED . 4)
    (:WAITING . 5)
    (:SWITCHING . 6)
    (:WARNING . 10)
    (:ERROR . 11)
    (:READY . 20))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BEStatus)))
    "Constants for message type 'BEStatus"
  '((:STARTED . 0)
    (:FINISHED . 1)
    (:FAILED . 2)
    (:LOCKED . 4)
    (:WAITING . 5)
    (:SWITCHING . 6)
    (:WARNING . 10)
    (:ERROR . 11)
    (:READY . 20))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BEStatus>) ostream)
  "Serializes a message object of type '<BEStatus>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'behavior_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'args))))
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
   (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BEStatus>) istream)
  "Deserializes a message object of type '<BEStatus>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BEStatus>)))
  "Returns string type for a message object of type '<BEStatus>"
  "flexbe_msgs/BEStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BEStatus)))
  "Returns string type for a message object of type 'BEStatus"
  "flexbe_msgs/BEStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BEStatus>)))
  "Returns md5sum for a message object of type '<BEStatus>"
  "467355de4ad406f864268f41621cb885")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BEStatus)))
  "Returns md5sum for a message object of type 'BEStatus"
  "467355de4ad406f864268f41621cb885")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BEStatus>)))
  "Returns full string definition for message of type '<BEStatus>"
  (cl:format cl:nil "# Behavior Status~%uint8 STARTED = 0~%uint8 FINISHED = 1~%uint8 FAILED = 2~%~%uint8 LOCKED = 4~%uint8 WAITING = 5~%uint8 SWITCHING = 6~%~%# General problems~%uint8 WARNING = 10~%uint8 ERROR = 11~%~%# Engine Status~%uint8 READY = 20~%~%time stamp~%int32 behavior_id~%uint8 code~%~%string[] args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BEStatus)))
  "Returns full string definition for message of type 'BEStatus"
  (cl:format cl:nil "# Behavior Status~%uint8 STARTED = 0~%uint8 FINISHED = 1~%uint8 FAILED = 2~%~%uint8 LOCKED = 4~%uint8 WAITING = 5~%uint8 SWITCHING = 6~%~%# General problems~%uint8 WARNING = 10~%uint8 ERROR = 11~%~%# Engine Status~%uint8 READY = 20~%~%time stamp~%int32 behavior_id~%uint8 code~%~%string[] args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BEStatus>))
  (cl:+ 0
     8
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BEStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BEStatus
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':behavior_id (behavior_id msg))
    (cl:cons ':code (code msg))
    (cl:cons ':args (args msg))
))
