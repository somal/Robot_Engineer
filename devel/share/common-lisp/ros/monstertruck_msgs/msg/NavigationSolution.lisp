; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-msg)


;//! \htmlinclude NavigationSolution.msg.html

(cl:defclass <NavigationSolution> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (nick
    :reader nick
    :initarg :nick
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (droll
    :reader droll
    :initarg :droll
    :type cl:float
    :initform 0.0)
   (dnick
    :reader dnick
    :initarg :dnick
    :type cl:float
    :initform 0.0)
   (dyaw
    :reader dyaw
    :initarg :dyaw
    :type cl:float
    :initform 0.0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (d_x
    :reader d_x
    :initarg :d_x
    :type cl:float
    :initform 0.0)
   (d_y
    :reader d_y
    :initarg :d_y
    :type cl:float
    :initform 0.0)
   (d_z
    :reader d_z
    :initarg :d_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavigationSolution (<NavigationSolution>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationSolution>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationSolution)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-msg:<NavigationSolution> is deprecated: use monstertruck_msgs-msg:NavigationSolution instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:header-val is deprecated.  Use monstertruck_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:roll-val is deprecated.  Use monstertruck_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'nick-val :lambda-list '(m))
(cl:defmethod nick-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:nick-val is deprecated.  Use monstertruck_msgs-msg:nick instead.")
  (nick m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:yaw-val is deprecated.  Use monstertruck_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'droll-val :lambda-list '(m))
(cl:defmethod droll-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:droll-val is deprecated.  Use monstertruck_msgs-msg:droll instead.")
  (droll m))

(cl:ensure-generic-function 'dnick-val :lambda-list '(m))
(cl:defmethod dnick-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:dnick-val is deprecated.  Use monstertruck_msgs-msg:dnick instead.")
  (dnick m))

(cl:ensure-generic-function 'dyaw-val :lambda-list '(m))
(cl:defmethod dyaw-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:dyaw-val is deprecated.  Use monstertruck_msgs-msg:dyaw instead.")
  (dyaw m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:x-val is deprecated.  Use monstertruck_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:y-val is deprecated.  Use monstertruck_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:z-val is deprecated.  Use monstertruck_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'd_x-val :lambda-list '(m))
(cl:defmethod d_x-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:d_x-val is deprecated.  Use monstertruck_msgs-msg:d_x instead.")
  (d_x m))

(cl:ensure-generic-function 'd_y-val :lambda-list '(m))
(cl:defmethod d_y-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:d_y-val is deprecated.  Use monstertruck_msgs-msg:d_y instead.")
  (d_y m))

(cl:ensure-generic-function 'd_z-val :lambda-list '(m))
(cl:defmethod d_z-val ((m <NavigationSolution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:d_z-val is deprecated.  Use monstertruck_msgs-msg:d_z instead.")
  (d_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationSolution>) ostream)
  "Serializes a message object of type '<NavigationSolution>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nick))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'droll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dnick))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dyaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationSolution>) istream)
  "Deserializes a message object of type '<NavigationSolution>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nick) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'droll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dnick) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dyaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationSolution>)))
  "Returns string type for a message object of type '<NavigationSolution>"
  "monstertruck_msgs/NavigationSolution")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationSolution)))
  "Returns string type for a message object of type 'NavigationSolution"
  "monstertruck_msgs/NavigationSolution")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationSolution>)))
  "Returns md5sum for a message object of type '<NavigationSolution>"
  "45d93b8c71cb9a03c6be120126e5ff84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationSolution)))
  "Returns md5sum for a message object of type 'NavigationSolution"
  "45d93b8c71cb9a03c6be120126e5ff84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationSolution>)))
  "Returns full string definition for message of type '<NavigationSolution>"
  (cl:format cl:nil "Header header~%float32 roll~%float32 nick~%float32 yaw~%float32 droll~%float32 dnick~%float32 dyaw~%float32 x~%float32 y~%float32 z~%float32 d_x~%float32 d_y~%float32 d_z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationSolution)))
  "Returns full string definition for message of type 'NavigationSolution"
  (cl:format cl:nil "Header header~%float32 roll~%float32 nick~%float32 yaw~%float32 droll~%float32 dnick~%float32 dyaw~%float32 x~%float32 y~%float32 z~%float32 d_x~%float32 d_y~%float32 d_z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationSolution>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationSolution>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationSolution
    (cl:cons ':header (header msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':nick (nick msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':droll (droll msg))
    (cl:cons ':dnick (dnick msg))
    (cl:cons ':dyaw (dyaw msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':d_x (d_x msg))
    (cl:cons ':d_y (d_y msg))
    (cl:cons ':d_z (d_z msg))
))
