; Auto-generated. Do not edit!


(cl:in-package motion_editor_core-msg)


;//! \htmlinclude ExecuteMotionResult.msg.html

(cl:defclass <ExecuteMotionResult> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (error_string
    :reader error_string
    :initarg :error_string
    :type cl:string
    :initform "")
   (error_group
    :reader error_group
    :initarg :error_group
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ExecuteMotionResult (<ExecuteMotionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteMotionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteMotionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_editor_core-msg:<ExecuteMotionResult> is deprecated: use motion_editor_core-msg:ExecuteMotionResult instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ExecuteMotionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_editor_core-msg:error_code-val is deprecated.  Use motion_editor_core-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_string-val :lambda-list '(m))
(cl:defmethod error_string-val ((m <ExecuteMotionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_editor_core-msg:error_string-val is deprecated.  Use motion_editor_core-msg:error_string instead.")
  (error_string m))

(cl:ensure-generic-function 'error_group-val :lambda-list '(m))
(cl:defmethod error_group-val ((m <ExecuteMotionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_editor_core-msg:error_group-val is deprecated.  Use motion_editor_core-msg:error_group instead.")
  (error_group m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExecuteMotionResult>)))
    "Constants for message type '<ExecuteMotionResult>"
  '((:SUCCESSFUL . 0)
    (:INVALID_GOAL . -1)
    (:INVALID_JOINTS . -2)
    (:OLD_HEADER_TIMESTAMP . -3)
    (:PATH_TOLERANCE_VIOLATED . -4)
    (:GOAL_TOLERANCE_VIOLATED . -5)
    (:MOTION_UNKNOWN . -6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExecuteMotionResult)))
    "Constants for message type 'ExecuteMotionResult"
  '((:SUCCESSFUL . 0)
    (:INVALID_GOAL . -1)
    (:INVALID_JOINTS . -2)
    (:OLD_HEADER_TIMESTAMP . -3)
    (:PATH_TOLERANCE_VIOLATED . -4)
    (:GOAL_TOLERANCE_VIOLATED . -5)
    (:MOTION_UNKNOWN . -6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteMotionResult>) ostream)
  "Serializes a message object of type '<ExecuteMotionResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'error_code))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_string))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'error_group))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteMotionResult>) istream)
  "Deserializes a message object of type '<ExecuteMotionResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_code) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_code)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_group) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_group)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteMotionResult>)))
  "Returns string type for a message object of type '<ExecuteMotionResult>"
  "motion_editor_core/ExecuteMotionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteMotionResult)))
  "Returns string type for a message object of type 'ExecuteMotionResult"
  "motion_editor_core/ExecuteMotionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteMotionResult>)))
  "Returns md5sum for a message object of type '<ExecuteMotionResult>"
  "ec7a1098aa2ee6f24b1e7d082bb5642f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteMotionResult)))
  "Returns md5sum for a message object of type 'ExecuteMotionResult"
  "ec7a1098aa2ee6f24b1e7d082bb5642f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteMotionResult>)))
  "Returns full string definition for message of type '<ExecuteMotionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%int32[] error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%int32 PATH_TOLERANCE_VIOLATED = -4~%int32 GOAL_TOLERANCE_VIOLATED = -5~%int32 MOTION_UNKNOWN = -6~%~%string error_string~%string[] error_group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteMotionResult)))
  "Returns full string definition for message of type 'ExecuteMotionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Result~%int32[] error_code~%int32 SUCCESSFUL = 0~%int32 INVALID_GOAL = -1~%int32 INVALID_JOINTS = -2~%int32 OLD_HEADER_TIMESTAMP = -3~%int32 PATH_TOLERANCE_VIOLATED = -4~%int32 GOAL_TOLERANCE_VIOLATED = -5~%int32 MOTION_UNKNOWN = -6~%~%string error_string~%string[] error_group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteMotionResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_code) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'error_string))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_group) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteMotionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteMotionResult
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_string (error_string msg))
    (cl:cons ':error_group (error_group msg))
))
