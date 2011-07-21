; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude GetTransformCamera2BasePoint-request.msg.html

(cl:defclass <GetTransformCamera2BasePoint-request> (roslisp-msg-protocol:ros-message)
  ((point_camera
    :reader point_camera
    :initarg :point_camera
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetTransformCamera2BasePoint-request (<GetTransformCamera2BasePoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformCamera2BasePoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformCamera2BasePoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetTransformCamera2BasePoint-request> is deprecated: use cob_srvs-srv:GetTransformCamera2BasePoint-request instead.")))

(cl:ensure-generic-function 'point_camera-val :lambda-list '(m))
(cl:defmethod point_camera-val ((m <GetTransformCamera2BasePoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:point_camera-val is deprecated.  Use cob_srvs-srv:point_camera instead.")
  (point_camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformCamera2BasePoint-request>) ostream)
  "Serializes a message object of type '<GetTransformCamera2BasePoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_camera) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformCamera2BasePoint-request>) istream)
  "Deserializes a message object of type '<GetTransformCamera2BasePoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_camera) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformCamera2BasePoint-request>)))
  "Returns string type for a service object of type '<GetTransformCamera2BasePoint-request>"
  "cob_srvs/GetTransformCamera2BasePointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformCamera2BasePoint-request)))
  "Returns string type for a service object of type 'GetTransformCamera2BasePoint-request"
  "cob_srvs/GetTransformCamera2BasePointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformCamera2BasePoint-request>)))
  "Returns md5sum for a message object of type '<GetTransformCamera2BasePoint-request>"
  "6b29eeb293b36ac2baec55d56ee6647b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformCamera2BasePoint-request)))
  "Returns md5sum for a message object of type 'GetTransformCamera2BasePoint-request"
  "6b29eeb293b36ac2baec55d56ee6647b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformCamera2BasePoint-request>)))
  "Returns full string definition for message of type '<GetTransformCamera2BasePoint-request>"
  (cl:format cl:nil "geometry_msgs/Point point_camera~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformCamera2BasePoint-request)))
  "Returns full string definition for message of type 'GetTransformCamera2BasePoint-request"
  (cl:format cl:nil "geometry_msgs/Point point_camera~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformCamera2BasePoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_camera))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformCamera2BasePoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformCamera2BasePoint-request
    (cl:cons ':point_camera (point_camera msg))
))
;//! \htmlinclude GetTransformCamera2BasePoint-response.msg.html

(cl:defclass <GetTransformCamera2BasePoint-response> (roslisp-msg-protocol:ros-message)
  ((point_base
    :reader point_base
    :initarg :point_base
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetTransformCamera2BasePoint-response (<GetTransformCamera2BasePoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformCamera2BasePoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformCamera2BasePoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetTransformCamera2BasePoint-response> is deprecated: use cob_srvs-srv:GetTransformCamera2BasePoint-response instead.")))

(cl:ensure-generic-function 'point_base-val :lambda-list '(m))
(cl:defmethod point_base-val ((m <GetTransformCamera2BasePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:point_base-val is deprecated.  Use cob_srvs-srv:point_base instead.")
  (point_base m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformCamera2BasePoint-response>) ostream)
  "Serializes a message object of type '<GetTransformCamera2BasePoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_base) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformCamera2BasePoint-response>) istream)
  "Deserializes a message object of type '<GetTransformCamera2BasePoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_base) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformCamera2BasePoint-response>)))
  "Returns string type for a service object of type '<GetTransformCamera2BasePoint-response>"
  "cob_srvs/GetTransformCamera2BasePointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformCamera2BasePoint-response)))
  "Returns string type for a service object of type 'GetTransformCamera2BasePoint-response"
  "cob_srvs/GetTransformCamera2BasePointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformCamera2BasePoint-response>)))
  "Returns md5sum for a message object of type '<GetTransformCamera2BasePoint-response>"
  "6b29eeb293b36ac2baec55d56ee6647b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformCamera2BasePoint-response)))
  "Returns md5sum for a message object of type 'GetTransformCamera2BasePoint-response"
  "6b29eeb293b36ac2baec55d56ee6647b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformCamera2BasePoint-response>)))
  "Returns full string definition for message of type '<GetTransformCamera2BasePoint-response>"
  (cl:format cl:nil "geometry_msgs/Point point_base~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformCamera2BasePoint-response)))
  "Returns full string definition for message of type 'GetTransformCamera2BasePoint-response"
  (cl:format cl:nil "geometry_msgs/Point point_base~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformCamera2BasePoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_base))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformCamera2BasePoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformCamera2BasePoint-response
    (cl:cons ':point_base (point_base msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransformCamera2BasePoint)))
  'GetTransformCamera2BasePoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransformCamera2BasePoint)))
  'GetTransformCamera2BasePoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformCamera2BasePoint)))
  "Returns string type for a service object of type '<GetTransformCamera2BasePoint>"
  "cob_srvs/GetTransformCamera2BasePoint")
