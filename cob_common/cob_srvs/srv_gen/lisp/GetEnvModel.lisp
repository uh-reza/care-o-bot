; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude GetEnvModel-request.msg.html

(cl:defclass <GetEnvModel-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEnvModel-request (<GetEnvModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEnvModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEnvModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetEnvModel-request> is deprecated: use cob_srvs-srv:GetEnvModel-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEnvModel-request>) ostream)
  "Serializes a message object of type '<GetEnvModel-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEnvModel-request>) istream)
  "Deserializes a message object of type '<GetEnvModel-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEnvModel-request>)))
  "Returns string type for a service object of type '<GetEnvModel-request>"
  "cob_srvs/GetEnvModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvModel-request)))
  "Returns string type for a service object of type 'GetEnvModel-request"
  "cob_srvs/GetEnvModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEnvModel-request>)))
  "Returns md5sum for a message object of type '<GetEnvModel-request>"
  "390cbff96d168abc35f84f5ed0728288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEnvModel-request)))
  "Returns md5sum for a message object of type 'GetEnvModel-request"
  "390cbff96d168abc35f84f5ed0728288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEnvModel-request>)))
  "Returns full string definition for message of type '<GetEnvModel-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEnvModel-request)))
  "Returns full string definition for message of type 'GetEnvModel-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEnvModel-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEnvModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEnvModel-request
))
;//! \htmlinclude GetEnvModel-response.msg.html

(cl:defclass <GetEnvModel-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GetEnvModel-response (<GetEnvModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEnvModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEnvModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetEnvModel-response> is deprecated: use cob_srvs-srv:GetEnvModel-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetEnvModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:data-val is deprecated.  Use cob_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEnvModel-response>) ostream)
  "Serializes a message object of type '<GetEnvModel-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEnvModel-response>) istream)
  "Deserializes a message object of type '<GetEnvModel-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEnvModel-response>)))
  "Returns string type for a service object of type '<GetEnvModel-response>"
  "cob_srvs/GetEnvModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvModel-response)))
  "Returns string type for a service object of type 'GetEnvModel-response"
  "cob_srvs/GetEnvModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEnvModel-response>)))
  "Returns md5sum for a message object of type '<GetEnvModel-response>"
  "390cbff96d168abc35f84f5ed0728288")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEnvModel-response)))
  "Returns md5sum for a message object of type 'GetEnvModel-response"
  "390cbff96d168abc35f84f5ed0728288")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEnvModel-response>)))
  "Returns full string definition for message of type '<GetEnvModel-response>"
  (cl:format cl:nil "geometry_msgs/Point[] data~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEnvModel-response)))
  "Returns full string definition for message of type 'GetEnvModel-response"
  (cl:format cl:nil "geometry_msgs/Point[] data~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEnvModel-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEnvModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEnvModel-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEnvModel)))
  'GetEnvModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEnvModel)))
  'GetEnvModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvModel)))
  "Returns string type for a service object of type '<GetEnvModel>"
  "cob_srvs/GetEnvModel")
