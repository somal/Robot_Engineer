; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-msg)


;//! \htmlinclude PerceptInfo.msg.html

(cl:defclass <PerceptInfo> (roslisp-msg-protocol:ros-message)
  ((class_id
    :reader class_id
    :initarg :class_id
    :type cl:string
    :initform "")
   (class_support
    :reader class_support
    :initarg :class_support
    :type cl:float
    :initform 0.0)
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:string
    :initform "")
   (object_support
    :reader object_support
    :initarg :object_support
    :type cl:float
    :initform 0.0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass PerceptInfo (<PerceptInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-msg:<PerceptInfo> is deprecated: use hector_worldmodel_msgs-msg:PerceptInfo instead.")))

(cl:ensure-generic-function 'class_id-val :lambda-list '(m))
(cl:defmethod class_id-val ((m <PerceptInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:class_id-val is deprecated.  Use hector_worldmodel_msgs-msg:class_id instead.")
  (class_id m))

(cl:ensure-generic-function 'class_support-val :lambda-list '(m))
(cl:defmethod class_support-val ((m <PerceptInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:class_support-val is deprecated.  Use hector_worldmodel_msgs-msg:class_support instead.")
  (class_support m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <PerceptInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:object_id-val is deprecated.  Use hector_worldmodel_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'object_support-val :lambda-list '(m))
(cl:defmethod object_support-val ((m <PerceptInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:object_support-val is deprecated.  Use hector_worldmodel_msgs-msg:object_support instead.")
  (object_support m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PerceptInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-msg:name-val is deprecated.  Use hector_worldmodel_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptInfo>) ostream)
  "Serializes a message object of type '<PerceptInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'class_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'class_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'class_support))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'object_support))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptInfo>) istream)
  "Deserializes a message object of type '<PerceptInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'class_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'class_support) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_support) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptInfo>)))
  "Returns string type for a message object of type '<PerceptInfo>"
  "hector_worldmodel_msgs/PerceptInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptInfo)))
  "Returns string type for a message object of type 'PerceptInfo"
  "hector_worldmodel_msgs/PerceptInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptInfo>)))
  "Returns md5sum for a message object of type '<PerceptInfo>"
  "6d276cf0fa6b560cbfd07a3f9eab88b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptInfo)))
  "Returns md5sum for a message object of type 'PerceptInfo"
  "6d276cf0fa6b560cbfd07a3f9eab88b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptInfo>)))
  "Returns full string definition for message of type '<PerceptInfo>"
  (cl:format cl:nil "# hector_worldmodel_msgs/PerceptInfo~%# This message contains information about the estimated class and object identity ~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# The class association support of the observation~%# The support is the log odd likelihood ratio given by log(p(y/observation y belongs to object of class class_id) / p(y/observation y is a false positive))~%float32 class_support~%~%# A string identifying a specific object~%string object_id~%~%# The object association support of the observation~%# The support is the log odd likelihood ratio given by log(p(observation belongs to object object_id) / p(observation is false positive or belongs to another object))~%float32 object_support~%~%# A string that contains the name or a description of the specific object~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptInfo)))
  "Returns full string definition for message of type 'PerceptInfo"
  (cl:format cl:nil "# hector_worldmodel_msgs/PerceptInfo~%# This message contains information about the estimated class and object identity ~%~%# A string identifying the object's class (all objects of a class look the same)~%string class_id~%~%# The class association support of the observation~%# The support is the log odd likelihood ratio given by log(p(y/observation y belongs to object of class class_id) / p(y/observation y is a false positive))~%float32 class_support~%~%# A string identifying a specific object~%string object_id~%~%# The object association support of the observation~%# The support is the log odd likelihood ratio given by log(p(observation belongs to object object_id) / p(observation is false positive or belongs to another object))~%float32 object_support~%~%# A string that contains the name or a description of the specific object~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'class_id))
     4
     4 (cl:length (cl:slot-value msg 'object_id))
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptInfo
    (cl:cons ':class_id (class_id msg))
    (cl:cons ':class_support (class_support msg))
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':object_support (object_support msg))
    (cl:cons ':name (name msg))
))
