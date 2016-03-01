; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-msg)


;//! \htmlinclude RawImu.msg.html

(cl:defclass <RawImu> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (w_x
    :reader w_x
    :initarg :w_x
    :type cl:float
    :initform 0.0)
   (w_y
    :reader w_y
    :initarg :w_y
    :type cl:float
    :initform 0.0)
   (w_z
    :reader w_z
    :initarg :w_z
    :type cl:float
    :initform 0.0)
   (a_x
    :reader a_x
    :initarg :a_x
    :type cl:float
    :initform 0.0)
   (a_y
    :reader a_y
    :initarg :a_y
    :type cl:float
    :initform 0.0)
   (a_z
    :reader a_z
    :initarg :a_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass RawImu (<RawImu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawImu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawImu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-msg:<RawImu> is deprecated: use monstertruck_msgs-msg:RawImu instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:header-val is deprecated.  Use monstertruck_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'w_x-val :lambda-list '(m))
(cl:defmethod w_x-val ((m <RawImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:w_x-val is deprecated.  Use monstertruck_msgs-msg:w_x instead.")
  (w_x m))

(cl:ensure-generic-function 'w_y-val :lambda-list '(m))
(cl:defmethod w_y-val ((m <RawImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:w_y-val is deprecated.  Use monstertruck_msgs-msg:w_y instead.")
  (w_y m))

(cl:ensure-generic-function 'w_z-val :lambda-list '(m))
(cl:defmethod w_z-val ((m <RawImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:w_z-val is deprecated.  Use monstertruck_msgs-msg:w_z instead.")
  (w_z m))

(cl:ensure-generic-function 'a_x-val :lambda-list '(m))
(cl:defmethod a_x-val ((m <RawImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:a_x-val is deprecated.  Use monstertruck_msgs-msg:a_x instead.")
  (a_x m))

(cl:ensure-generic-function 'a_y-val :lambda-list '(m))
(cl:defmethod a_y-val ((m <RawImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:a_y-val is deprecated.  Use monstertruck_msgs-msg:a_y instead.")
  (a_y m))

(cl:ensure-generic-function 'a_z-val :lambda-list '(m))
(cl:defmethod a_z-val ((m <RawImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:a_z-val is deprecated.  Use monstertruck_msgs-msg:a_z instead.")
  (a_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawImu>) ostream)
  "Serializes a message object of type '<RawImu>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawImu>) istream)
  "Deserializes a message object of type '<RawImu>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawImu>)))
  "Returns string type for a message object of type '<RawImu>"
  "monstertruck_msgs/RawImu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawImu)))
  "Returns string type for a message object of type 'RawImu"
  "monstertruck_msgs/RawImu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawImu>)))
  "Returns md5sum for a message object of type '<RawImu>"
  "46b8b9dc3bb20946232996e98df291dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawImu)))
  "Returns md5sum for a message object of type 'RawImu"
  "46b8b9dc3bb20946232996e98df291dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawImu>)))
  "Returns full string definition for message of type '<RawImu>"
  (cl:format cl:nil "Header header~%float32 w_x~%float32 w_y~%float32 w_z~%float32 a_x~%float32 a_y~%float32 a_z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawImu)))
  "Returns full string definition for message of type 'RawImu"
  (cl:format cl:nil "Header header~%float32 w_x~%float32 w_y~%float32 w_z~%float32 a_x~%float32 a_y~%float32 a_z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawImu>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawImu>))
  "Converts a ROS message object to a list"
  (cl:list 'RawImu
    (cl:cons ':header (header msg))
    (cl:cons ':w_x (w_x msg))
    (cl:cons ':w_y (w_y msg))
    (cl:cons ':w_z (w_z msg))
    (cl:cons ':a_x (a_x msg))
    (cl:cons ':a_y (a_y msg))
    (cl:cons ':a_z (a_z msg))
))
