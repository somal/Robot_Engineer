; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-srv)


;//! \htmlinclude GetGazeDirection-request.msg.html

(cl:defclass <GetGazeDirection-request> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass GetGazeDirection-request (<GetGazeDirection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGazeDirection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGazeDirection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-srv:<GetGazeDirection-request> is deprecated: use monstertruck_msgs-srv:GetGazeDirection-request instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GetGazeDirection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-srv:stamp-val is deprecated.  Use monstertruck_msgs-srv:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGazeDirection-request>) ostream)
  "Serializes a message object of type '<GetGazeDirection-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGazeDirection-request>) istream)
  "Deserializes a message object of type '<GetGazeDirection-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGazeDirection-request>)))
  "Returns string type for a service object of type '<GetGazeDirection-request>"
  "monstertruck_msgs/GetGazeDirectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGazeDirection-request)))
  "Returns string type for a service object of type 'GetGazeDirection-request"
  "monstertruck_msgs/GetGazeDirectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGazeDirection-request>)))
  "Returns md5sum for a message object of type '<GetGazeDirection-request>"
  "ee22875cee6c3a88c49d94bb0d6561c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGazeDirection-request)))
  "Returns md5sum for a message object of type 'GetGazeDirection-request"
  "ee22875cee6c3a88c49d94bb0d6561c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGazeDirection-request>)))
  "Returns full string definition for message of type '<GetGazeDirection-request>"
  (cl:format cl:nil "~%~%time stamp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGazeDirection-request)))
  "Returns full string definition for message of type 'GetGazeDirection-request"
  (cl:format cl:nil "~%~%time stamp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGazeDirection-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGazeDirection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGazeDirection-request
    (cl:cons ':stamp (stamp msg))
))
;//! \htmlinclude GetGazeDirection-response.msg.html

(cl:defclass <GetGazeDirection-response> (roslisp-msg-protocol:ros-message)
  ((pointOut
    :reader pointOut
    :initarg :pointOut
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass GetGazeDirection-response (<GetGazeDirection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGazeDirection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGazeDirection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-srv:<GetGazeDirection-response> is deprecated: use monstertruck_msgs-srv:GetGazeDirection-response instead.")))

(cl:ensure-generic-function 'pointOut-val :lambda-list '(m))
(cl:defmethod pointOut-val ((m <GetGazeDirection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-srv:pointOut-val is deprecated.  Use monstertruck_msgs-srv:pointOut instead.")
  (pointOut m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGazeDirection-response>) ostream)
  "Serializes a message object of type '<GetGazeDirection-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointOut) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGazeDirection-response>) istream)
  "Deserializes a message object of type '<GetGazeDirection-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointOut) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGazeDirection-response>)))
  "Returns string type for a service object of type '<GetGazeDirection-response>"
  "monstertruck_msgs/GetGazeDirectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGazeDirection-response)))
  "Returns string type for a service object of type 'GetGazeDirection-response"
  "monstertruck_msgs/GetGazeDirectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGazeDirection-response>)))
  "Returns md5sum for a message object of type '<GetGazeDirection-response>"
  "ee22875cee6c3a88c49d94bb0d6561c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGazeDirection-response)))
  "Returns md5sum for a message object of type 'GetGazeDirection-response"
  "ee22875cee6c3a88c49d94bb0d6561c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGazeDirection-response>)))
  "Returns full string definition for message of type '<GetGazeDirection-response>"
  (cl:format cl:nil "~%geometry_msgs/PointStamped pointOut~%~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGazeDirection-response)))
  "Returns full string definition for message of type 'GetGazeDirection-response"
  (cl:format cl:nil "~%geometry_msgs/PointStamped pointOut~%~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGazeDirection-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointOut))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGazeDirection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGazeDirection-response
    (cl:cons ':pointOut (pointOut msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGazeDirection)))
  'GetGazeDirection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGazeDirection)))
  'GetGazeDirection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGazeDirection)))
  "Returns string type for a service object of type '<GetGazeDirection>"
  "monstertruck_msgs/GetGazeDirection")