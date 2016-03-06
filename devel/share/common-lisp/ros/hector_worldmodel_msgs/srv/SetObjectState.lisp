; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-srv)


;//! \htmlinclude SetObjectState-request.msg.html

(cl:defclass <SetObjectState-request> (roslisp-msg-protocol:ros-message)
  ((object_id
    :reader object_id
    :initarg :object_id
    :type cl:string
    :initform "")
   (new_state
    :reader new_state
    :initarg :new_state
    :type hector_worldmodel_msgs-msg:ObjectState
    :initform (cl:make-instance 'hector_worldmodel_msgs-msg:ObjectState)))
)

(cl:defclass SetObjectState-request (<SetObjectState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObjectState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObjectState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<SetObjectState-request> is deprecated: use hector_worldmodel_msgs-srv:SetObjectState-request instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <SetObjectState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:object_id-val is deprecated.  Use hector_worldmodel_msgs-srv:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'new_state-val :lambda-list '(m))
(cl:defmethod new_state-val ((m <SetObjectState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:new_state-val is deprecated.  Use hector_worldmodel_msgs-srv:new_state instead.")
  (new_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObjectState-request>) ostream)
  "Serializes a message object of type '<SetObjectState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObjectState-request>) istream)
  "Deserializes a message object of type '<SetObjectState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObjectState-request>)))
  "Returns string type for a service object of type '<SetObjectState-request>"
  "hector_worldmodel_msgs/SetObjectStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjectState-request)))
  "Returns string type for a service object of type 'SetObjectState-request"
  "hector_worldmodel_msgs/SetObjectStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObjectState-request>)))
  "Returns md5sum for a message object of type '<SetObjectState-request>"
  "f1ca4bb9d91ddc88e48d16dceb6ab0e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObjectState-request)))
  "Returns md5sum for a message object of type 'SetObjectState-request"
  "f1ca4bb9d91ddc88e48d16dceb6ab0e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObjectState-request>)))
  "Returns full string definition for message of type '<SetObjectState-request>"
  (cl:format cl:nil "~%~%string object_id~%ObjectState new_state~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObjectState-request)))
  "Returns full string definition for message of type 'SetObjectState-request"
  (cl:format cl:nil "~%~%string object_id~%ObjectState new_state~%~%================================================================================~%MSG: hector_worldmodel_msgs/ObjectState~%# The state of an object estimate used to track~%# states smaller than 0 disable all updates~%~%# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.~%int8 UNKNOWN = 0~%int8 PENDING = 1~%int8 ACTIVE  = 2~%int8 INACTIVE = 3~%int8 CONFIRMED = -1~%int8 DISCARDED = -2~%int8 APPROACHING = -3~%~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObjectState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObjectState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObjectState-request
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':new_state (new_state msg))
))
;//! \htmlinclude SetObjectState-response.msg.html

(cl:defclass <SetObjectState-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetObjectState-response (<SetObjectState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObjectState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObjectState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<SetObjectState-response> is deprecated: use hector_worldmodel_msgs-srv:SetObjectState-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObjectState-response>) ostream)
  "Serializes a message object of type '<SetObjectState-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObjectState-response>) istream)
  "Deserializes a message object of type '<SetObjectState-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObjectState-response>)))
  "Returns string type for a service object of type '<SetObjectState-response>"
  "hector_worldmodel_msgs/SetObjectStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjectState-response)))
  "Returns string type for a service object of type 'SetObjectState-response"
  "hector_worldmodel_msgs/SetObjectStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObjectState-response>)))
  "Returns md5sum for a message object of type '<SetObjectState-response>"
  "f1ca4bb9d91ddc88e48d16dceb6ab0e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObjectState-response)))
  "Returns md5sum for a message object of type 'SetObjectState-response"
  "f1ca4bb9d91ddc88e48d16dceb6ab0e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObjectState-response>)))
  "Returns full string definition for message of type '<SetObjectState-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObjectState-response)))
  "Returns full string definition for message of type 'SetObjectState-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObjectState-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObjectState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObjectState-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetObjectState)))
  'SetObjectState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetObjectState)))
  'SetObjectState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjectState)))
  "Returns string type for a service object of type '<SetObjectState>"
  "hector_worldmodel_msgs/SetObjectState")