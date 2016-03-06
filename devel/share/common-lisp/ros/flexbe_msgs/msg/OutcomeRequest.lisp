; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude OutcomeRequest.msg.html

(cl:defclass <OutcomeRequest> (roslisp-msg-protocol:ros-message)
  ((outcome
    :reader outcome
    :initarg :outcome
    :type cl:fixnum
    :initform 0)
   (target
    :reader target
    :initarg :target
    :type cl:string
    :initform ""))
)

(cl:defclass OutcomeRequest (<OutcomeRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutcomeRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutcomeRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<OutcomeRequest> is deprecated: use flexbe_msgs-msg:OutcomeRequest instead.")))

(cl:ensure-generic-function 'outcome-val :lambda-list '(m))
(cl:defmethod outcome-val ((m <OutcomeRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:outcome-val is deprecated.  Use flexbe_msgs-msg:outcome instead.")
  (outcome m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <OutcomeRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:target-val is deprecated.  Use flexbe_msgs-msg:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutcomeRequest>) ostream)
  "Serializes a message object of type '<OutcomeRequest>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'outcome)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutcomeRequest>) istream)
  "Deserializes a message object of type '<OutcomeRequest>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'outcome)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutcomeRequest>)))
  "Returns string type for a message object of type '<OutcomeRequest>"
  "flexbe_msgs/OutcomeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutcomeRequest)))
  "Returns string type for a message object of type 'OutcomeRequest"
  "flexbe_msgs/OutcomeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutcomeRequest>)))
  "Returns md5sum for a message object of type '<OutcomeRequest>"
  "b057cf075cb943bf0dbb3443419a61ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutcomeRequest)))
  "Returns md5sum for a message object of type 'OutcomeRequest"
  "b057cf075cb943bf0dbb3443419a61ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutcomeRequest>)))
  "Returns full string definition for message of type '<OutcomeRequest>"
  (cl:format cl:nil "uint8 outcome~%string target~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutcomeRequest)))
  "Returns full string definition for message of type 'OutcomeRequest"
  (cl:format cl:nil "uint8 outcome~%string target~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutcomeRequest>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutcomeRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'OutcomeRequest
    (cl:cons ':outcome (outcome msg))
    (cl:cons ':target (target msg))
))
