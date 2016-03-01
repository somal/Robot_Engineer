; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-srv)


;//! \htmlinclude LookAt-request.msg.html

(cl:defclass <LookAt-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (duration
    :reader duration
    :initarg :duration
    :type cl:real
    :initform 0))
)

(cl:defclass LookAt-request (<LookAt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookAt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookAt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-srv:<LookAt-request> is deprecated: use monstertruck_msgs-srv:LookAt-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <LookAt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-srv:point-val is deprecated.  Use monstertruck_msgs-srv:point instead.")
  (point m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <LookAt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-srv:duration-val is deprecated.  Use monstertruck_msgs-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookAt-request>) ostream)
  "Serializes a message object of type '<LookAt-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'duration) (cl:floor (cl:slot-value msg 'duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookAt-request>) istream)
  "Deserializes a message object of type '<LookAt-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookAt-request>)))
  "Returns string type for a service object of type '<LookAt-request>"
  "monstertruck_msgs/LookAtRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookAt-request)))
  "Returns string type for a service object of type 'LookAt-request"
  "monstertruck_msgs/LookAtRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookAt-request>)))
  "Returns md5sum for a message object of type '<LookAt-request>"
  "574e46e9b1544de88826572f80572960")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookAt-request)))
  "Returns md5sum for a message object of type 'LookAt-request"
  "574e46e9b1544de88826572f80572960")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookAt-request>)))
  "Returns full string definition for message of type '<LookAt-request>"
  (cl:format cl:nil "~%geometry_msgs/PointStamped point~%~%~%~%duration duration~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookAt-request)))
  "Returns full string definition for message of type 'LookAt-request"
  (cl:format cl:nil "~%geometry_msgs/PointStamped point~%~%~%~%duration duration~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookAt-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookAt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LookAt-request
    (cl:cons ':point (point msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude LookAt-response.msg.html

(cl:defclass <LookAt-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LookAt-response (<LookAt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookAt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookAt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-srv:<LookAt-response> is deprecated: use monstertruck_msgs-srv:LookAt-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookAt-response>) ostream)
  "Serializes a message object of type '<LookAt-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookAt-response>) istream)
  "Deserializes a message object of type '<LookAt-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookAt-response>)))
  "Returns string type for a service object of type '<LookAt-response>"
  "monstertruck_msgs/LookAtResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookAt-response)))
  "Returns string type for a service object of type 'LookAt-response"
  "monstertruck_msgs/LookAtResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookAt-response>)))
  "Returns md5sum for a message object of type '<LookAt-response>"
  "574e46e9b1544de88826572f80572960")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookAt-response)))
  "Returns md5sum for a message object of type 'LookAt-response"
  "574e46e9b1544de88826572f80572960")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookAt-response>)))
  "Returns full string definition for message of type '<LookAt-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookAt-response)))
  "Returns full string definition for message of type 'LookAt-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookAt-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookAt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LookAt-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LookAt)))
  'LookAt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LookAt)))
  'LookAt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookAt)))
  "Returns string type for a service object of type '<LookAt>"
  "monstertruck_msgs/LookAt")