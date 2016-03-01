; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-msg)


;//! \htmlinclude Pdout.msg.html

(cl:defclass <Pdout> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (approaching_goal_point
    :reader approaching_goal_point
    :initarg :approaching_goal_point
    :type cl:boolean
    :initform cl:nil)
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (e_position
    :reader e_position
    :initarg :e_position
    :type cl:float
    :initform 0.0)
   (de_position_dt
    :reader de_position_dt
    :initarg :de_position_dt
    :type cl:float
    :initform 0.0)
   (e_angle
    :reader e_angle
    :initarg :e_angle
    :type cl:float
    :initform 0.0)
   (de_angle_dt
    :reader de_angle_dt
    :initarg :de_angle_dt
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (speed_real
    :reader speed_real
    :initarg :speed_real
    :type cl:float
    :initform 0.0)
   (z_twist
    :reader z_twist
    :initarg :z_twist
    :type cl:float
    :initform 0.0)
   (z_twist_real
    :reader z_twist_real
    :initarg :z_twist_real
    :type cl:float
    :initform 0.0)
   (z_twist_deg
    :reader z_twist_deg
    :initarg :z_twist_deg
    :type cl:float
    :initform 0.0)
   (z_twist_deg_real
    :reader z_twist_deg_real
    :initarg :z_twist_deg_real
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pdout (<Pdout>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pdout>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pdout)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-msg:<Pdout> is deprecated: use monstertruck_msgs-msg:Pdout instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:header-val is deprecated.  Use monstertruck_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'approaching_goal_point-val :lambda-list '(m))
(cl:defmethod approaching_goal_point-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:approaching_goal_point-val is deprecated.  Use monstertruck_msgs-msg:approaching_goal_point instead.")
  (approaching_goal_point m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:dt-val is deprecated.  Use monstertruck_msgs-msg:dt instead.")
  (dt m))

(cl:ensure-generic-function 'e_position-val :lambda-list '(m))
(cl:defmethod e_position-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:e_position-val is deprecated.  Use monstertruck_msgs-msg:e_position instead.")
  (e_position m))

(cl:ensure-generic-function 'de_position_dt-val :lambda-list '(m))
(cl:defmethod de_position_dt-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:de_position_dt-val is deprecated.  Use monstertruck_msgs-msg:de_position_dt instead.")
  (de_position_dt m))

(cl:ensure-generic-function 'e_angle-val :lambda-list '(m))
(cl:defmethod e_angle-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:e_angle-val is deprecated.  Use monstertruck_msgs-msg:e_angle instead.")
  (e_angle m))

(cl:ensure-generic-function 'de_angle_dt-val :lambda-list '(m))
(cl:defmethod de_angle_dt-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:de_angle_dt-val is deprecated.  Use monstertruck_msgs-msg:de_angle_dt instead.")
  (de_angle_dt m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:speed-val is deprecated.  Use monstertruck_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'speed_real-val :lambda-list '(m))
(cl:defmethod speed_real-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:speed_real-val is deprecated.  Use monstertruck_msgs-msg:speed_real instead.")
  (speed_real m))

(cl:ensure-generic-function 'z_twist-val :lambda-list '(m))
(cl:defmethod z_twist-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:z_twist-val is deprecated.  Use monstertruck_msgs-msg:z_twist instead.")
  (z_twist m))

(cl:ensure-generic-function 'z_twist_real-val :lambda-list '(m))
(cl:defmethod z_twist_real-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:z_twist_real-val is deprecated.  Use monstertruck_msgs-msg:z_twist_real instead.")
  (z_twist_real m))

(cl:ensure-generic-function 'z_twist_deg-val :lambda-list '(m))
(cl:defmethod z_twist_deg-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:z_twist_deg-val is deprecated.  Use monstertruck_msgs-msg:z_twist_deg instead.")
  (z_twist_deg m))

(cl:ensure-generic-function 'z_twist_deg_real-val :lambda-list '(m))
(cl:defmethod z_twist_deg_real-val ((m <Pdout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-msg:z_twist_deg_real-val is deprecated.  Use monstertruck_msgs-msg:z_twist_deg_real instead.")
  (z_twist_deg_real m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pdout>) ostream)
  "Serializes a message object of type '<Pdout>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'approaching_goal_point) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'e_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'de_position_dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'e_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'de_angle_dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_real))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_twist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_twist_real))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_twist_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_twist_deg_real))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pdout>) istream)
  "Deserializes a message object of type '<Pdout>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'approaching_goal_point) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'e_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'de_position_dt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'e_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'de_angle_dt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_real) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_twist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_twist_real) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_twist_deg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_twist_deg_real) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pdout>)))
  "Returns string type for a message object of type '<Pdout>"
  "monstertruck_msgs/Pdout")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pdout)))
  "Returns string type for a message object of type 'Pdout"
  "monstertruck_msgs/Pdout")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pdout>)))
  "Returns md5sum for a message object of type '<Pdout>"
  "fffcd293bef6bed7b184d4f3834f37f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pdout)))
  "Returns md5sum for a message object of type 'Pdout"
  "fffcd293bef6bed7b184d4f3834f37f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pdout>)))
  "Returns full string definition for message of type '<Pdout>"
  (cl:format cl:nil "Header header~%bool approaching_goal_point~%float32 dt~%float32 e_position~%float32 de_position_dt~%float32 e_angle~%float32 de_angle_dt~%float32 speed~%float32 speed_real~%float32 z_twist~%float32 z_twist_real~%float32 z_twist_deg~%float32 z_twist_deg_real~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pdout)))
  "Returns full string definition for message of type 'Pdout"
  (cl:format cl:nil "Header header~%bool approaching_goal_point~%float32 dt~%float32 e_position~%float32 de_position_dt~%float32 e_angle~%float32 de_angle_dt~%float32 speed~%float32 speed_real~%float32 z_twist~%float32 z_twist_real~%float32 z_twist_deg~%float32 z_twist_deg_real~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pdout>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pdout>))
  "Converts a ROS message object to a list"
  (cl:list 'Pdout
    (cl:cons ':header (header msg))
    (cl:cons ':approaching_goal_point (approaching_goal_point msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':e_position (e_position msg))
    (cl:cons ':de_position_dt (de_position_dt msg))
    (cl:cons ':e_angle (e_angle msg))
    (cl:cons ':de_angle_dt (de_angle_dt msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':speed_real (speed_real msg))
    (cl:cons ':z_twist (z_twist msg))
    (cl:cons ':z_twist_real (z_twist_real msg))
    (cl:cons ':z_twist_deg (z_twist_deg msg))
    (cl:cons ':z_twist_deg_real (z_twist_deg_real msg))
))
