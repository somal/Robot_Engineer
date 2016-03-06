; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BehaviorExecutionGoal.msg.html

(cl:defclass <BehaviorExecutionGoal> (roslisp-msg-protocol:ros-message)
  ((behavior_name
    :reader behavior_name
    :initarg :behavior_name
    :type cl:string
    :initform "")
   (arg_keys
    :reader arg_keys
    :initarg :arg_keys
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (arg_values
    :reader arg_values
    :initarg :arg_values
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass BehaviorExecutionGoal (<BehaviorExecutionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorExecutionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorExecutionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BehaviorExecutionGoal> is deprecated: use flexbe_msgs-msg:BehaviorExecutionGoal instead.")))

(cl:ensure-generic-function 'behavior_name-val :lambda-list '(m))
(cl:defmethod behavior_name-val ((m <BehaviorExecutionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:behavior_name-val is deprecated.  Use flexbe_msgs-msg:behavior_name instead.")
  (behavior_name m))

(cl:ensure-generic-function 'arg_keys-val :lambda-list '(m))
(cl:defmethod arg_keys-val ((m <BehaviorExecutionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:arg_keys-val is deprecated.  Use flexbe_msgs-msg:arg_keys instead.")
  (arg_keys m))

(cl:ensure-generic-function 'arg_values-val :lambda-list '(m))
(cl:defmethod arg_values-val ((m <BehaviorExecutionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:arg_values-val is deprecated.  Use flexbe_msgs-msg:arg_values instead.")
  (arg_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorExecutionGoal>) ostream)
  "Serializes a message object of type '<BehaviorExecutionGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'behavior_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'behavior_name))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorExecutionGoal>) istream)
  "Deserializes a message object of type '<BehaviorExecutionGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'behavior_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorExecutionGoal>)))
  "Returns string type for a message object of type '<BehaviorExecutionGoal>"
  "flexbe_msgs/BehaviorExecutionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorExecutionGoal)))
  "Returns string type for a message object of type 'BehaviorExecutionGoal"
  "flexbe_msgs/BehaviorExecutionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorExecutionGoal>)))
  "Returns md5sum for a message object of type '<BehaviorExecutionGoal>"
  "3c7a5b0b779ea8e4bd6180e7caf5e9f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorExecutionGoal)))
  "Returns md5sum for a message object of type 'BehaviorExecutionGoal"
  "3c7a5b0b779ea8e4bd6180e7caf5e9f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorExecutionGoal>)))
  "Returns full string definition for message of type '<BehaviorExecutionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Commands the execution of any behavior.~%~%# name of the behavior to be executed~%string behavior_name~%~%# optional list of behavior parameters~%string[] arg_keys~%string[] arg_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorExecutionGoal)))
  "Returns full string definition for message of type 'BehaviorExecutionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Commands the execution of any behavior.~%~%# name of the behavior to be executed~%string behavior_name~%~%# optional list of behavior parameters~%string[] arg_keys~%string[] arg_values~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorExecutionGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'behavior_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_keys) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorExecutionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorExecutionGoal
    (cl:cons ':behavior_name (behavior_name msg))
    (cl:cons ':arg_keys (arg_keys msg))
    (cl:cons ':arg_values (arg_values msg))
))
