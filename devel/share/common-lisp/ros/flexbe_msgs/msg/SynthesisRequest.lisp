; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude SynthesisRequest.msg.html

(cl:defclass <SynthesisRequest> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (system
    :reader system
    :initarg :system
    :type cl:string
    :initform "")
   (goal
    :reader goal
    :initarg :goal
    :type cl:string
    :initform "")
   (initial_condition
    :reader initial_condition
    :initarg :initial_condition
    :type cl:string
    :initform "")
   (sm_outcomes
    :reader sm_outcomes
    :initarg :sm_outcomes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SynthesisRequest (<SynthesisRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SynthesisRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SynthesisRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<SynthesisRequest> is deprecated: use flexbe_msgs-msg:SynthesisRequest instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SynthesisRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:name-val is deprecated.  Use flexbe_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'system-val :lambda-list '(m))
(cl:defmethod system-val ((m <SynthesisRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:system-val is deprecated.  Use flexbe_msgs-msg:system instead.")
  (system m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SynthesisRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:goal-val is deprecated.  Use flexbe_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'initial_condition-val :lambda-list '(m))
(cl:defmethod initial_condition-val ((m <SynthesisRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:initial_condition-val is deprecated.  Use flexbe_msgs-msg:initial_condition instead.")
  (initial_condition m))

(cl:ensure-generic-function 'sm_outcomes-val :lambda-list '(m))
(cl:defmethod sm_outcomes-val ((m <SynthesisRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:sm_outcomes-val is deprecated.  Use flexbe_msgs-msg:sm_outcomes instead.")
  (sm_outcomes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SynthesisRequest>) ostream)
  "Serializes a message object of type '<SynthesisRequest>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'system))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'system))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'initial_condition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'initial_condition))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sm_outcomes))))
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
   (cl:slot-value msg 'sm_outcomes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SynthesisRequest>) istream)
  "Deserializes a message object of type '<SynthesisRequest>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'system) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'initial_condition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'initial_condition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sm_outcomes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sm_outcomes)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SynthesisRequest>)))
  "Returns string type for a message object of type '<SynthesisRequest>"
  "flexbe_msgs/SynthesisRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SynthesisRequest)))
  "Returns string type for a message object of type 'SynthesisRequest"
  "flexbe_msgs/SynthesisRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SynthesisRequest>)))
  "Returns md5sum for a message object of type '<SynthesisRequest>"
  "99257dbfe8a196d006a75837dcabf3f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SynthesisRequest)))
  "Returns md5sum for a message object of type 'SynthesisRequest"
  "99257dbfe8a196d006a75837dcabf3f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SynthesisRequest>)))
  "Returns full string definition for message of type '<SynthesisRequest>"
  (cl:format cl:nil "# Minimal template for the request data provided by the FlexBE synthesis interface.~%# Either refer this message as 'request' in the goal part of your synthesis action~%# or implement your own by at least supporting the fields listed below.~%~%# Identifier of this synthesis query, can for example be used to set the name of the resulting state machine~%string name~%~%# Identifier of the system (i.e., configuration data set) to be used by the synthesis tool~%string system~%~%# Goal to be achieved by the synthesized behavior~%string goal~%~%# Initial conditions from which the synthesized behavior will start~%string initial_condition~%~%# Available outcomes of the generated state machine,~%# i.e., possible results of the synthesized behavior~%string[] sm_outcomes~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SynthesisRequest)))
  "Returns full string definition for message of type 'SynthesisRequest"
  (cl:format cl:nil "# Minimal template for the request data provided by the FlexBE synthesis interface.~%# Either refer this message as 'request' in the goal part of your synthesis action~%# or implement your own by at least supporting the fields listed below.~%~%# Identifier of this synthesis query, can for example be used to set the name of the resulting state machine~%string name~%~%# Identifier of the system (i.e., configuration data set) to be used by the synthesis tool~%string system~%~%# Goal to be achieved by the synthesized behavior~%string goal~%~%# Initial conditions from which the synthesized behavior will start~%string initial_condition~%~%# Available outcomes of the generated state machine,~%# i.e., possible results of the synthesized behavior~%string[] sm_outcomes~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SynthesisRequest>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'system))
     4 (cl:length (cl:slot-value msg 'goal))
     4 (cl:length (cl:slot-value msg 'initial_condition))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sm_outcomes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SynthesisRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'SynthesisRequest
    (cl:cons ':name (name msg))
    (cl:cons ':system (system msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':initial_condition (initial_condition msg))
    (cl:cons ':sm_outcomes (sm_outcomes msg))
))
