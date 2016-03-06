; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BehaviorRequest.msg.html

(cl:defclass <BehaviorRequest> (roslisp-msg-protocol:ros-message)
  ((behavior_name
    :reader behavior_name
    :initarg :behavior_name
    :type cl:string
    :initform "")
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
   (structure
    :reader structure
    :initarg :structure
    :type (cl:vector flexbe_msgs-msg:Container)
   :initform (cl:make-array 0 :element-type 'flexbe_msgs-msg:Container :initial-element (cl:make-instance 'flexbe_msgs-msg:Container))))
)

(cl:defclass BehaviorRequest (<BehaviorRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BehaviorRequest> is deprecated: use flexbe_msgs-msg:BehaviorRequest instead.")))

(cl:ensure-generic-function 'behavior_name-val :lambda-list '(m))
(cl:defmethod behavior_name-val ((m <BehaviorRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:behavior_name-val is deprecated.  Use flexbe_msgs-msg:behavior_name instead.")
  (behavior_name m))

(cl:ensure-generic-function 'autonomy_level-val :lambda-list '(m))
(cl:defmethod autonomy_level-val ((m <BehaviorRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:autonomy_level-val is deprecated.  Use flexbe_msgs-msg:autonomy_level instead.")
  (autonomy_level m))

(cl:ensure-generic-function 'arg_keys-val :lambda-list '(m))
(cl:defmethod arg_keys-val ((m <BehaviorRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:arg_keys-val is deprecated.  Use flexbe_msgs-msg:arg_keys instead.")
  (arg_keys m))

(cl:ensure-generic-function 'arg_values-val :lambda-list '(m))
(cl:defmethod arg_values-val ((m <BehaviorRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:arg_values-val is deprecated.  Use flexbe_msgs-msg:arg_values instead.")
  (arg_values m))

(cl:ensure-generic-function 'structure-val :lambda-list '(m))
(cl:defmethod structure-val ((m <BehaviorRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:structure-val is deprecated.  Use flexbe_msgs-msg:structure instead.")
  (structure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorRequest>) ostream)
  "Serializes a message object of type '<BehaviorRequest>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'behavior_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'behavior_name))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'structure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'structure))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorRequest>) istream)
  "Deserializes a message object of type '<BehaviorRequest>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'behavior_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (cl:setf (cl:slot-value msg 'structure) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'structure)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'flexbe_msgs-msg:Container))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorRequest>)))
  "Returns string type for a message object of type '<BehaviorRequest>"
  "flexbe_msgs/BehaviorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorRequest)))
  "Returns string type for a message object of type 'BehaviorRequest"
  "flexbe_msgs/BehaviorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorRequest>)))
  "Returns md5sum for a message object of type '<BehaviorRequest>"
  "0b55949502d4c602376ee00a64d0d294")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorRequest)))
  "Returns md5sum for a message object of type 'BehaviorRequest"
  "0b55949502d4c602376ee00a64d0d294")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorRequest>)))
  "Returns full string definition for message of type '<BehaviorRequest>"
  (cl:format cl:nil "string behavior_name~%~%uint8 autonomy_level~%string[] arg_keys~%string[] arg_values~%~%Container[] structure~%================================================================================~%MSG: flexbe_msgs/Container~%string path~%string[] children~%string[] outcomes~%string[] transitions~%byte[] autonomy~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorRequest)))
  "Returns full string definition for message of type 'BehaviorRequest"
  (cl:format cl:nil "string behavior_name~%~%uint8 autonomy_level~%string[] arg_keys~%string[] arg_values~%~%Container[] structure~%================================================================================~%MSG: flexbe_msgs/Container~%string path~%string[] children~%string[] outcomes~%string[] transitions~%byte[] autonomy~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorRequest>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'behavior_name))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_keys) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'structure) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorRequest
    (cl:cons ':behavior_name (behavior_name msg))
    (cl:cons ':autonomy_level (autonomy_level msg))
    (cl:cons ':arg_keys (arg_keys msg))
    (cl:cons ':arg_values (arg_values msg))
    (cl:cons ':structure (structure msg))
))
