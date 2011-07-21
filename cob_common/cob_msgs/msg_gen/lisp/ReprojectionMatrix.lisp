; Auto-generated. Do not edit!


(cl:in-package cob_msgs-msg)


;//! \htmlinclude ReprojectionMatrix.msg.html

(cl:defclass <ReprojectionMatrix> (roslisp-msg-protocol:ros-message)
  ((reprojection_matrix
    :reader reprojection_matrix
    :initarg :reprojection_matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ReprojectionMatrix (<ReprojectionMatrix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReprojectionMatrix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReprojectionMatrix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_msgs-msg:<ReprojectionMatrix> is deprecated: use cob_msgs-msg:ReprojectionMatrix instead.")))

(cl:ensure-generic-function 'reprojection_matrix-val :lambda-list '(m))
(cl:defmethod reprojection_matrix-val ((m <ReprojectionMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:reprojection_matrix-val is deprecated.  Use cob_msgs-msg:reprojection_matrix instead.")
  (reprojection_matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReprojectionMatrix>) ostream)
  "Serializes a message object of type '<ReprojectionMatrix>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reprojection_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'reprojection_matrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReprojectionMatrix>) istream)
  "Deserializes a message object of type '<ReprojectionMatrix>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reprojection_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reprojection_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReprojectionMatrix>)))
  "Returns string type for a message object of type '<ReprojectionMatrix>"
  "cob_msgs/ReprojectionMatrix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReprojectionMatrix)))
  "Returns string type for a message object of type 'ReprojectionMatrix"
  "cob_msgs/ReprojectionMatrix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReprojectionMatrix>)))
  "Returns md5sum for a message object of type '<ReprojectionMatrix>"
  "347c3c63edb5563c79ffa1fe3c81fe8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReprojectionMatrix)))
  "Returns md5sum for a message object of type 'ReprojectionMatrix"
  "347c3c63edb5563c79ffa1fe3c81fe8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReprojectionMatrix>)))
  "Returns full string definition for message of type '<ReprojectionMatrix>"
  (cl:format cl:nil "float32[] reprojection_matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReprojectionMatrix)))
  "Returns full string definition for message of type 'ReprojectionMatrix"
  (cl:format cl:nil "float32[] reprojection_matrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReprojectionMatrix>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reprojection_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReprojectionMatrix>))
  "Converts a ROS message object to a list"
  (cl:list 'ReprojectionMatrix
    (cl:cons ':reprojection_matrix (reprojection_matrix msg))
))
