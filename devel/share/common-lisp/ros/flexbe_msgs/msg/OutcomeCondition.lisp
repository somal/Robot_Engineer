; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude OutcomeCondition.msg.html

(cl:defclass <OutcomeCondition> (roslisp-msg-protocol:ros-message)
  ((state_name
    :reader state_name
    :initarg :state_name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (state_outcome
    :reader state_outcome
    :initarg :state_outcome
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass OutcomeCondition (<OutcomeCondition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutcomeCondition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutcomeCondition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<OutcomeCondition> is deprecated: use flexbe_msgs-msg:OutcomeCondition instead.")))

(cl:ensure-generic-function 'state_name-val :lambda-list '(m))
(cl:defmethod state_name-val ((m <OutcomeCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:state_name-val is deprecated.  Use flexbe_msgs-msg:state_name instead.")
  (state_name m))

(cl:ensure-generic-function 'state_outcome-val :lambda-list '(m))
(cl:defmethod state_outcome-val ((m <OutcomeCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:state_outcome-val is deprecated.  Use flexbe_msgs-msg:state_outcome instead.")
  (state_outcome m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutcomeCondition>) ostream)
  "Serializes a message object of type '<OutcomeCondition>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state_name))))
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
   (cl:slot-value msg 'state_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state_outcome))))
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
   (cl:slot-value msg 'state_outcome))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutcomeCondition>) istream)
  "Deserializes a message object of type '<OutcomeCondition>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state_name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state_name)))
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
  (cl:setf (cl:slot-value msg 'state_outcome) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state_outcome)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutcomeCondition>)))
  "Returns string type for a message object of type '<OutcomeCondition>"
  "flexbe_msgs/OutcomeCondition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutcomeCondition)))
  "Returns string type for a message object of type 'OutcomeCondition"
  "flexbe_msgs/OutcomeCondition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutcomeCondition>)))
  "Returns md5sum for a message object of type '<OutcomeCondition>"
  "3f00d7f2d34167712ca29ef288547863")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutcomeCondition)))
  "Returns md5sum for a message object of type 'OutcomeCondition"
  "3f00d7f2d34167712ca29ef288547863")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutcomeCondition>)))
  "Returns full string definition for message of type '<OutcomeCondition>"
  (cl:format cl:nil "# Defines a conjunction of required state outcomes in order to return a concurrency outcome~%string[] state_name~%string[] state_outcome~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutcomeCondition)))
  "Returns full string definition for message of type 'OutcomeCondition"
  (cl:format cl:nil "# Defines a conjunction of required state outcomes in order to return a concurrency outcome~%string[] state_name~%string[] state_outcome~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutcomeCondition>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state_name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state_outcome) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutcomeCondition>))
  "Converts a ROS message object to a list"
  (cl:list 'OutcomeCondition
    (cl:cons ':state_name (state_name msg))
    (cl:cons ':state_outcome (state_outcome msg))
))
