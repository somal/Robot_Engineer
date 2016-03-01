; Auto-generated. Do not edit!


(cl:in-package motion_editor_core-srv)


;//! \htmlinclude ExecuteMotion-request.msg.html

(cl:defclass <ExecuteMotion-request> (roslisp-msg-protocol:ros-message)
  ((motion_name
    :reader motion_name
    :initarg :motion_name
    :type cl:string
    :initform "")
   (time_factor
    :reader time_factor
    :initarg :time_factor
    :type cl:float
    :initform 0.0))
)

(cl:defclass ExecuteMotion-request (<ExecuteMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_editor_core-srv:<ExecuteMotion-request> is deprecated: use motion_editor_core-srv:ExecuteMotion-request instead.")))

(cl:ensure-generic-function 'motion_name-val :lambda-list '(m))
(cl:defmethod motion_name-val ((m <ExecuteMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_editor_core-srv:motion_name-val is deprecated.  Use motion_editor_core-srv:motion_name instead.")
  (motion_name m))

(cl:ensure-generic-function 'time_factor-val :lambda-list '(m))
(cl:defmethod time_factor-val ((m <ExecuteMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_editor_core-srv:time_factor-val is deprecated.  Use motion_editor_core-srv:time_factor instead.")
  (time_factor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteMotion-request>) ostream)
  "Serializes a message object of type '<ExecuteMotion-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motion_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motion_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteMotion-request>) istream)
  "Deserializes a message object of type '<ExecuteMotion-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motion_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_factor) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteMotion-request>)))
  "Returns string type for a service object of type '<ExecuteMotion-request>"
  "motion_editor_core/ExecuteMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteMotion-request)))
  "Returns string type for a service object of type 'ExecuteMotion-request"
  "motion_editor_core/ExecuteMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteMotion-request>)))
  "Returns md5sum for a message object of type '<ExecuteMotion-request>"
  "df0966c07354a91b75525ffbd3ff4e08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteMotion-request)))
  "Returns md5sum for a message object of type 'ExecuteMotion-request"
  "df0966c07354a91b75525ffbd3ff4e08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteMotion-request>)))
  "Returns full string definition for message of type '<ExecuteMotion-request>"
  (cl:format cl:nil "~%string motion_name~%~%~%float32 time_factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteMotion-request)))
  "Returns full string definition for message of type 'ExecuteMotion-request"
  (cl:format cl:nil "~%string motion_name~%~%~%float32 time_factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteMotion-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'motion_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteMotion-request
    (cl:cons ':motion_name (motion_name msg))
    (cl:cons ':time_factor (time_factor msg))
))
;//! \htmlinclude ExecuteMotion-response.msg.html

(cl:defclass <ExecuteMotion-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (finish_time
    :reader finish_time
    :initarg :finish_time
    :type std_msgs-msg:Time
    :initform (cl:make-instance 'std_msgs-msg:Time)))
)

(cl:defclass ExecuteMotion-response (<ExecuteMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_editor_core-srv:<ExecuteMotion-response> is deprecated: use motion_editor_core-srv:ExecuteMotion-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <ExecuteMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_editor_core-srv:ok-val is deprecated.  Use motion_editor_core-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'finish_time-val :lambda-list '(m))
(cl:defmethod finish_time-val ((m <ExecuteMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_editor_core-srv:finish_time-val is deprecated.  Use motion_editor_core-srv:finish_time instead.")
  (finish_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteMotion-response>) ostream)
  "Serializes a message object of type '<ExecuteMotion-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'finish_time) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteMotion-response>) istream)
  "Deserializes a message object of type '<ExecuteMotion-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'finish_time) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteMotion-response>)))
  "Returns string type for a service object of type '<ExecuteMotion-response>"
  "motion_editor_core/ExecuteMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteMotion-response)))
  "Returns string type for a service object of type 'ExecuteMotion-response"
  "motion_editor_core/ExecuteMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteMotion-response>)))
  "Returns md5sum for a message object of type '<ExecuteMotion-response>"
  "df0966c07354a91b75525ffbd3ff4e08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteMotion-response)))
  "Returns md5sum for a message object of type 'ExecuteMotion-response"
  "df0966c07354a91b75525ffbd3ff4e08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteMotion-response>)))
  "Returns full string definition for message of type '<ExecuteMotion-response>"
  (cl:format cl:nil "~%bool ok~%~%std_msgs/Time finish_time~%~%~%================================================================================~%MSG: std_msgs/Time~%time data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteMotion-response)))
  "Returns full string definition for message of type 'ExecuteMotion-response"
  (cl:format cl:nil "~%bool ok~%~%std_msgs/Time finish_time~%~%~%================================================================================~%MSG: std_msgs/Time~%time data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteMotion-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'finish_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteMotion-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':finish_time (finish_time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecuteMotion)))
  'ExecuteMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecuteMotion)))
  'ExecuteMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteMotion)))
  "Returns string type for a service object of type '<ExecuteMotion>"
  "motion_editor_core/ExecuteMotion")