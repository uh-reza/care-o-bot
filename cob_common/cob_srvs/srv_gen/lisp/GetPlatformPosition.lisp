; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude GetPlatformPosition-request.msg.html

(cl:defclass <GetPlatformPosition-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPlatformPosition-request (<GetPlatformPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPlatformPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPlatformPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetPlatformPosition-request> is deprecated: use cob_srvs-srv:GetPlatformPosition-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPlatformPosition-request>) ostream)
  "Serializes a message object of type '<GetPlatformPosition-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPlatformPosition-request>) istream)
  "Deserializes a message object of type '<GetPlatformPosition-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPlatformPosition-request>)))
  "Returns string type for a service object of type '<GetPlatformPosition-request>"
  "cob_srvs/GetPlatformPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlatformPosition-request)))
  "Returns string type for a service object of type 'GetPlatformPosition-request"
  "cob_srvs/GetPlatformPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPlatformPosition-request>)))
  "Returns md5sum for a message object of type '<GetPlatformPosition-request>"
  "fc732fd7bf4afe28875c1f3fc3a31875")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPlatformPosition-request)))
  "Returns md5sum for a message object of type 'GetPlatformPosition-request"
  "fc732fd7bf4afe28875c1f3fc3a31875")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPlatformPosition-request>)))
  "Returns full string definition for message of type '<GetPlatformPosition-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPlatformPosition-request)))
  "Returns full string definition for message of type 'GetPlatformPosition-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPlatformPosition-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPlatformPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPlatformPosition-request
))
;//! \htmlinclude GetPlatformPosition-response.msg.html

(cl:defclass <GetPlatformPosition-response> (roslisp-msg-protocol:ros-message)
  ((platform_pose
    :reader platform_pose
    :initarg :platform_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass GetPlatformPosition-response (<GetPlatformPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPlatformPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPlatformPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetPlatformPosition-response> is deprecated: use cob_srvs-srv:GetPlatformPosition-response instead.")))

(cl:ensure-generic-function 'platform_pose-val :lambda-list '(m))
(cl:defmethod platform_pose-val ((m <GetPlatformPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:platform_pose-val is deprecated.  Use cob_srvs-srv:platform_pose instead.")
  (platform_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPlatformPosition-response>) ostream)
  "Serializes a message object of type '<GetPlatformPosition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'platform_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPlatformPosition-response>) istream)
  "Deserializes a message object of type '<GetPlatformPosition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'platform_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPlatformPosition-response>)))
  "Returns string type for a service object of type '<GetPlatformPosition-response>"
  "cob_srvs/GetPlatformPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlatformPosition-response)))
  "Returns string type for a service object of type 'GetPlatformPosition-response"
  "cob_srvs/GetPlatformPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPlatformPosition-response>)))
  "Returns md5sum for a message object of type '<GetPlatformPosition-response>"
  "fc732fd7bf4afe28875c1f3fc3a31875")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPlatformPosition-response)))
  "Returns md5sum for a message object of type 'GetPlatformPosition-response"
  "fc732fd7bf4afe28875c1f3fc3a31875")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPlatformPosition-response>)))
  "Returns full string definition for message of type '<GetPlatformPosition-response>"
  (cl:format cl:nil "geometry_msgs/Pose2D platform_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPlatformPosition-response)))
  "Returns full string definition for message of type 'GetPlatformPosition-response"
  (cl:format cl:nil "geometry_msgs/Pose2D platform_pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPlatformPosition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'platform_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPlatformPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPlatformPosition-response
    (cl:cons ':platform_pose (platform_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPlatformPosition)))
  'GetPlatformPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPlatformPosition)))
  'GetPlatformPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlatformPosition)))
  "Returns string type for a service object of type '<GetPlatformPosition>"
  "cob_srvs/GetPlatformPosition")
