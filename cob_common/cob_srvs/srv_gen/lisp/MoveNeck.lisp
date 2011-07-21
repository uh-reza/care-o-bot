; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude MoveNeck-request.msg.html

(cl:defclass <MoveNeck-request> (roslisp-msg-protocol:ros-message)
  ((joint_angle_1
    :reader joint_angle_1
    :initarg :joint_angle_1
    :type cl:float
    :initform 0.0)
   (joint_angle_2
    :reader joint_angle_2
    :initarg :joint_angle_2
    :type cl:float
    :initform 0.0)
   (joint_angle_3
    :reader joint_angle_3
    :initarg :joint_angle_3
    :type cl:float
    :initform 0.0)
   (joint_angle_4
    :reader joint_angle_4
    :initarg :joint_angle_4
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveNeck-request (<MoveNeck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveNeck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveNeck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<MoveNeck-request> is deprecated: use cob_srvs-srv:MoveNeck-request instead.")))

(cl:ensure-generic-function 'joint_angle_1-val :lambda-list '(m))
(cl:defmethod joint_angle_1-val ((m <MoveNeck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:joint_angle_1-val is deprecated.  Use cob_srvs-srv:joint_angle_1 instead.")
  (joint_angle_1 m))

(cl:ensure-generic-function 'joint_angle_2-val :lambda-list '(m))
(cl:defmethod joint_angle_2-val ((m <MoveNeck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:joint_angle_2-val is deprecated.  Use cob_srvs-srv:joint_angle_2 instead.")
  (joint_angle_2 m))

(cl:ensure-generic-function 'joint_angle_3-val :lambda-list '(m))
(cl:defmethod joint_angle_3-val ((m <MoveNeck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:joint_angle_3-val is deprecated.  Use cob_srvs-srv:joint_angle_3 instead.")
  (joint_angle_3 m))

(cl:ensure-generic-function 'joint_angle_4-val :lambda-list '(m))
(cl:defmethod joint_angle_4-val ((m <MoveNeck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:joint_angle_4-val is deprecated.  Use cob_srvs-srv:joint_angle_4 instead.")
  (joint_angle_4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveNeck-request>) ostream)
  "Serializes a message object of type '<MoveNeck-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_angle_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_angle_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_angle_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_angle_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveNeck-request>) istream)
  "Deserializes a message object of type '<MoveNeck-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_angle_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_angle_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_angle_3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_angle_4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveNeck-request>)))
  "Returns string type for a service object of type '<MoveNeck-request>"
  "cob_srvs/MoveNeckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveNeck-request)))
  "Returns string type for a service object of type 'MoveNeck-request"
  "cob_srvs/MoveNeckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveNeck-request>)))
  "Returns md5sum for a message object of type '<MoveNeck-request>"
  "718a31b14e9cb510862ca312064f3b28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveNeck-request)))
  "Returns md5sum for a message object of type 'MoveNeck-request"
  "718a31b14e9cb510862ca312064f3b28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveNeck-request>)))
  "Returns full string definition for message of type '<MoveNeck-request>"
  (cl:format cl:nil "float32 joint_angle_1~%float32 joint_angle_2~%float32 joint_angle_3~%float32 joint_angle_4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveNeck-request)))
  "Returns full string definition for message of type 'MoveNeck-request"
  (cl:format cl:nil "float32 joint_angle_1~%float32 joint_angle_2~%float32 joint_angle_3~%float32 joint_angle_4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveNeck-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveNeck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveNeck-request
    (cl:cons ':joint_angle_1 (joint_angle_1 msg))
    (cl:cons ':joint_angle_2 (joint_angle_2 msg))
    (cl:cons ':joint_angle_3 (joint_angle_3 msg))
    (cl:cons ':joint_angle_4 (joint_angle_4 msg))
))
;//! \htmlinclude MoveNeck-response.msg.html

(cl:defclass <MoveNeck-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0)
   (errorMessage
    :reader errorMessage
    :initarg :errorMessage
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass MoveNeck-response (<MoveNeck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveNeck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveNeck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<MoveNeck-response> is deprecated: use cob_srvs-srv:MoveNeck-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveNeck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'errorMessage-val :lambda-list '(m))
(cl:defmethod errorMessage-val ((m <MoveNeck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:errorMessage-val is deprecated.  Use cob_srvs-srv:errorMessage instead.")
  (errorMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveNeck-response>) ostream)
  "Serializes a message object of type '<MoveNeck-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'errorMessage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveNeck-response>) istream)
  "Deserializes a message object of type '<MoveNeck-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'errorMessage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveNeck-response>)))
  "Returns string type for a service object of type '<MoveNeck-response>"
  "cob_srvs/MoveNeckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveNeck-response)))
  "Returns string type for a service object of type 'MoveNeck-response"
  "cob_srvs/MoveNeckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveNeck-response>)))
  "Returns md5sum for a message object of type '<MoveNeck-response>"
  "718a31b14e9cb510862ca312064f3b28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveNeck-response)))
  "Returns md5sum for a message object of type 'MoveNeck-response"
  "718a31b14e9cb510862ca312064f3b28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveNeck-response>)))
  "Returns full string definition for message of type '<MoveNeck-response>"
  (cl:format cl:nil "int64 success~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveNeck-response)))
  "Returns full string definition for message of type 'MoveNeck-response"
  (cl:format cl:nil "int64 success~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveNeck-response>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'errorMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveNeck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveNeck-response
    (cl:cons ':success (success msg))
    (cl:cons ':errorMessage (errorMessage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveNeck)))
  'MoveNeck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveNeck)))
  'MoveNeck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveNeck)))
  "Returns string type for a service object of type '<MoveNeck>"
  "cob_srvs/MoveNeck")
