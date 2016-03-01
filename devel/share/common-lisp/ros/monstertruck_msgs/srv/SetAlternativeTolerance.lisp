; Auto-generated. Do not edit!


(cl:in-package monstertruck_msgs-srv)


;//! \htmlinclude SetAlternativeTolerance-request.msg.html

(cl:defclass <SetAlternativeTolerance-request> (roslisp-msg-protocol:ros-message)
  ((goalID
    :reader goalID
    :initarg :goalID
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (linearTolerance
    :reader linearTolerance
    :initarg :linearTolerance
    :type cl:float
    :initform 0.0)
   (angularTolerance
    :reader angularTolerance
    :initarg :angularTolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetAlternativeTolerance-request (<SetAlternativeTolerance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAlternativeTolerance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAlternativeTolerance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-srv:<SetAlternativeTolerance-request> is deprecated: use monstertruck_msgs-srv:SetAlternativeTolerance-request instead.")))

(cl:ensure-generic-function 'goalID-val :lambda-list '(m))
(cl:defmethod goalID-val ((m <SetAlternativeTolerance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-srv:goalID-val is deprecated.  Use monstertruck_msgs-srv:goalID instead.")
  (goalID m))

(cl:ensure-generic-function 'linearTolerance-val :lambda-list '(m))
(cl:defmethod linearTolerance-val ((m <SetAlternativeTolerance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-srv:linearTolerance-val is deprecated.  Use monstertruck_msgs-srv:linearTolerance instead.")
  (linearTolerance m))

(cl:ensure-generic-function 'angularTolerance-val :lambda-list '(m))
(cl:defmethod angularTolerance-val ((m <SetAlternativeTolerance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monstertruck_msgs-srv:angularTolerance-val is deprecated.  Use monstertruck_msgs-srv:angularTolerance instead.")
  (angularTolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAlternativeTolerance-request>) ostream)
  "Serializes a message object of type '<SetAlternativeTolerance-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goalID) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linearTolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angularTolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAlternativeTolerance-request>) istream)
  "Deserializes a message object of type '<SetAlternativeTolerance-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goalID) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linearTolerance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angularTolerance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAlternativeTolerance-request>)))
  "Returns string type for a service object of type '<SetAlternativeTolerance-request>"
  "monstertruck_msgs/SetAlternativeToleranceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAlternativeTolerance-request)))
  "Returns string type for a service object of type 'SetAlternativeTolerance-request"
  "monstertruck_msgs/SetAlternativeToleranceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAlternativeTolerance-request>)))
  "Returns md5sum for a message object of type '<SetAlternativeTolerance-request>"
  "9332f7ba5e819792f5504c48f062b9f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAlternativeTolerance-request)))
  "Returns md5sum for a message object of type 'SetAlternativeTolerance-request"
  "9332f7ba5e819792f5504c48f062b9f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAlternativeTolerance-request>)))
  "Returns full string definition for message of type '<SetAlternativeTolerance-request>"
  (cl:format cl:nil "actionlib_msgs/GoalID goalID~%float64 linearTolerance~%float64 angularTolerance~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAlternativeTolerance-request)))
  "Returns full string definition for message of type 'SetAlternativeTolerance-request"
  (cl:format cl:nil "actionlib_msgs/GoalID goalID~%float64 linearTolerance~%float64 angularTolerance~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAlternativeTolerance-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goalID))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAlternativeTolerance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAlternativeTolerance-request
    (cl:cons ':goalID (goalID msg))
    (cl:cons ':linearTolerance (linearTolerance msg))
    (cl:cons ':angularTolerance (angularTolerance msg))
))
;//! \htmlinclude SetAlternativeTolerance-response.msg.html

(cl:defclass <SetAlternativeTolerance-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetAlternativeTolerance-response (<SetAlternativeTolerance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAlternativeTolerance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAlternativeTolerance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monstertruck_msgs-srv:<SetAlternativeTolerance-response> is deprecated: use monstertruck_msgs-srv:SetAlternativeTolerance-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAlternativeTolerance-response>) ostream)
  "Serializes a message object of type '<SetAlternativeTolerance-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAlternativeTolerance-response>) istream)
  "Deserializes a message object of type '<SetAlternativeTolerance-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAlternativeTolerance-response>)))
  "Returns string type for a service object of type '<SetAlternativeTolerance-response>"
  "monstertruck_msgs/SetAlternativeToleranceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAlternativeTolerance-response)))
  "Returns string type for a service object of type 'SetAlternativeTolerance-response"
  "monstertruck_msgs/SetAlternativeToleranceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAlternativeTolerance-response>)))
  "Returns md5sum for a message object of type '<SetAlternativeTolerance-response>"
  "9332f7ba5e819792f5504c48f062b9f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAlternativeTolerance-response)))
  "Returns md5sum for a message object of type 'SetAlternativeTolerance-response"
  "9332f7ba5e819792f5504c48f062b9f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAlternativeTolerance-response>)))
  "Returns full string definition for message of type '<SetAlternativeTolerance-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAlternativeTolerance-response)))
  "Returns full string definition for message of type 'SetAlternativeTolerance-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAlternativeTolerance-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAlternativeTolerance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAlternativeTolerance-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAlternativeTolerance)))
  'SetAlternativeTolerance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAlternativeTolerance)))
  'SetAlternativeTolerance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAlternativeTolerance)))
  "Returns string type for a service object of type '<SetAlternativeTolerance>"
  "monstertruck_msgs/SetAlternativeTolerance")