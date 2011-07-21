; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude TransformCamera2Base-request.msg.html

(cl:defclass <TransformCamera2Base-request> (roslisp-msg-protocol:ros-message)
  ((point_camera
    :reader point_camera
    :initarg :point_camera
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass TransformCamera2Base-request (<TransformCamera2Base-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformCamera2Base-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformCamera2Base-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<TransformCamera2Base-request> is deprecated: use cob_srvs-srv:TransformCamera2Base-request instead.")))

(cl:ensure-generic-function 'point_camera-val :lambda-list '(m))
(cl:defmethod point_camera-val ((m <TransformCamera2Base-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:point_camera-val is deprecated.  Use cob_srvs-srv:point_camera instead.")
  (point_camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformCamera2Base-request>) ostream)
  "Serializes a message object of type '<TransformCamera2Base-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_camera) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformCamera2Base-request>) istream)
  "Deserializes a message object of type '<TransformCamera2Base-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_camera) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformCamera2Base-request>)))
  "Returns string type for a service object of type '<TransformCamera2Base-request>"
  "cob_srvs/TransformCamera2BaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformCamera2Base-request)))
  "Returns string type for a service object of type 'TransformCamera2Base-request"
  "cob_srvs/TransformCamera2BaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformCamera2Base-request>)))
  "Returns md5sum for a message object of type '<TransformCamera2Base-request>"
  "6b29eeb293b36ac2baec55d56ee6647b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformCamera2Base-request)))
  "Returns md5sum for a message object of type 'TransformCamera2Base-request"
  "6b29eeb293b36ac2baec55d56ee6647b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformCamera2Base-request>)))
  "Returns full string definition for message of type '<TransformCamera2Base-request>"
  (cl:format cl:nil "geometry_msgs/Point point_camera~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformCamera2Base-request)))
  "Returns full string definition for message of type 'TransformCamera2Base-request"
  (cl:format cl:nil "geometry_msgs/Point point_camera~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformCamera2Base-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_camera))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformCamera2Base-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformCamera2Base-request
    (cl:cons ':point_camera (point_camera msg))
))
;//! \htmlinclude TransformCamera2Base-response.msg.html

(cl:defclass <TransformCamera2Base-response> (roslisp-msg-protocol:ros-message)
  ((point_base
    :reader point_base
    :initarg :point_base
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass TransformCamera2Base-response (<TransformCamera2Base-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformCamera2Base-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformCamera2Base-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<TransformCamera2Base-response> is deprecated: use cob_srvs-srv:TransformCamera2Base-response instead.")))

(cl:ensure-generic-function 'point_base-val :lambda-list '(m))
(cl:defmethod point_base-val ((m <TransformCamera2Base-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:point_base-val is deprecated.  Use cob_srvs-srv:point_base instead.")
  (point_base m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformCamera2Base-response>) ostream)
  "Serializes a message object of type '<TransformCamera2Base-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_base) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformCamera2Base-response>) istream)
  "Deserializes a message object of type '<TransformCamera2Base-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_base) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformCamera2Base-response>)))
  "Returns string type for a service object of type '<TransformCamera2Base-response>"
  "cob_srvs/TransformCamera2BaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformCamera2Base-response)))
  "Returns string type for a service object of type 'TransformCamera2Base-response"
  "cob_srvs/TransformCamera2BaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformCamera2Base-response>)))
  "Returns md5sum for a message object of type '<TransformCamera2Base-response>"
  "6b29eeb293b36ac2baec55d56ee6647b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformCamera2Base-response)))
  "Returns md5sum for a message object of type 'TransformCamera2Base-response"
  "6b29eeb293b36ac2baec55d56ee6647b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformCamera2Base-response>)))
  "Returns full string definition for message of type '<TransformCamera2Base-response>"
  (cl:format cl:nil "geometry_msgs/Point point_base~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformCamera2Base-response)))
  "Returns full string definition for message of type 'TransformCamera2Base-response"
  (cl:format cl:nil "geometry_msgs/Point point_base~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformCamera2Base-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_base))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformCamera2Base-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformCamera2Base-response
    (cl:cons ':point_base (point_base msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TransformCamera2Base)))
  'TransformCamera2Base-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TransformCamera2Base)))
  'TransformCamera2Base-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformCamera2Base)))
  "Returns string type for a service object of type '<TransformCamera2Base>"
  "cob_srvs/TransformCamera2Base")
