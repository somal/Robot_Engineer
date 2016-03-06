; Auto-generated. Do not edit!


(cl:in-package hector_worldmodel_msgs-srv)


;//! \htmlinclude SetObjectName-request.msg.html

(cl:defclass <SetObjectName-request> (roslisp-msg-protocol:ros-message)
  ((object_id
    :reader object_id
    :initarg :object_id
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass SetObjectName-request (<SetObjectName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObjectName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObjectName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<SetObjectName-request> is deprecated: use hector_worldmodel_msgs-srv:SetObjectName-request instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <SetObjectName-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:object_id-val is deprecated.  Use hector_worldmodel_msgs-srv:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetObjectName-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_worldmodel_msgs-srv:name-val is deprecated.  Use hector_worldmodel_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObjectName-request>) ostream)
  "Serializes a message object of type '<SetObjectName-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObjectName-request>) istream)
  "Deserializes a message object of type '<SetObjectName-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObjectName-request>)))
  "Returns string type for a service object of type '<SetObjectName-request>"
  "hector_worldmodel_msgs/SetObjectNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjectName-request)))
  "Returns string type for a service object of type 'SetObjectName-request"
  "hector_worldmodel_msgs/SetObjectNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObjectName-request>)))
  "Returns md5sum for a message object of type '<SetObjectName-request>"
  "c42e7737953fcb0f6da23160b2771456")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObjectName-request)))
  "Returns md5sum for a message object of type 'SetObjectName-request"
  "c42e7737953fcb0f6da23160b2771456")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObjectName-request>)))
  "Returns full string definition for message of type '<SetObjectName-request>"
  (cl:format cl:nil "~%~%string object_id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObjectName-request)))
  "Returns full string definition for message of type 'SetObjectName-request"
  (cl:format cl:nil "~%~%string object_id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObjectName-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_id))
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObjectName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObjectName-request
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude SetObjectName-response.msg.html

(cl:defclass <SetObjectName-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetObjectName-response (<SetObjectName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetObjectName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetObjectName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_worldmodel_msgs-srv:<SetObjectName-response> is deprecated: use hector_worldmodel_msgs-srv:SetObjectName-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetObjectName-response>) ostream)
  "Serializes a message object of type '<SetObjectName-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetObjectName-response>) istream)
  "Deserializes a message object of type '<SetObjectName-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetObjectName-response>)))
  "Returns string type for a service object of type '<SetObjectName-response>"
  "hector_worldmodel_msgs/SetObjectNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjectName-response)))
  "Returns string type for a service object of type 'SetObjectName-response"
  "hector_worldmodel_msgs/SetObjectNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetObjectName-response>)))
  "Returns md5sum for a message object of type '<SetObjectName-response>"
  "c42e7737953fcb0f6da23160b2771456")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetObjectName-response)))
  "Returns md5sum for a message object of type 'SetObjectName-response"
  "c42e7737953fcb0f6da23160b2771456")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetObjectName-response>)))
  "Returns full string definition for message of type '<SetObjectName-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetObjectName-response)))
  "Returns full string definition for message of type 'SetObjectName-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetObjectName-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetObjectName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetObjectName-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetObjectName)))
  'SetObjectName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetObjectName)))
  'SetObjectName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetObjectName)))
  "Returns string type for a service object of type '<SetObjectName>"
  "hector_worldmodel_msgs/SetObjectName")