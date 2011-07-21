; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude GetTransformCamera2Base-request.msg.html

(cl:defclass <GetTransformCamera2Base-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTransformCamera2Base-request (<GetTransformCamera2Base-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformCamera2Base-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformCamera2Base-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetTransformCamera2Base-request> is deprecated: use cob_srvs-srv:GetTransformCamera2Base-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformCamera2Base-request>) ostream)
  "Serializes a message object of type '<GetTransformCamera2Base-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformCamera2Base-request>) istream)
  "Deserializes a message object of type '<GetTransformCamera2Base-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformCamera2Base-request>)))
  "Returns string type for a service object of type '<GetTransformCamera2Base-request>"
  "cob_srvs/GetTransformCamera2BaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformCamera2Base-request)))
  "Returns string type for a service object of type 'GetTransformCamera2Base-request"
  "cob_srvs/GetTransformCamera2BaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformCamera2Base-request>)))
  "Returns md5sum for a message object of type '<GetTransformCamera2Base-request>"
  "8316a0598b4d0c36e9a64cce2457d6c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformCamera2Base-request)))
  "Returns md5sum for a message object of type 'GetTransformCamera2Base-request"
  "8316a0598b4d0c36e9a64cce2457d6c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformCamera2Base-request>)))
  "Returns full string definition for message of type '<GetTransformCamera2Base-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformCamera2Base-request)))
  "Returns full string definition for message of type 'GetTransformCamera2Base-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformCamera2Base-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformCamera2Base-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformCamera2Base-request
))
;//! \htmlinclude GetTransformCamera2Base-response.msg.html

(cl:defclass <GetTransformCamera2Base-response> (roslisp-msg-protocol:ros-message)
  ((transformation
    :reader transformation
    :initarg :transformation
    :type cob_msgs-msg:Transformation
    :initform (cl:make-instance 'cob_msgs-msg:Transformation)))
)

(cl:defclass GetTransformCamera2Base-response (<GetTransformCamera2Base-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTransformCamera2Base-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTransformCamera2Base-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetTransformCamera2Base-response> is deprecated: use cob_srvs-srv:GetTransformCamera2Base-response instead.")))

(cl:ensure-generic-function 'transformation-val :lambda-list '(m))
(cl:defmethod transformation-val ((m <GetTransformCamera2Base-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:transformation-val is deprecated.  Use cob_srvs-srv:transformation instead.")
  (transformation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTransformCamera2Base-response>) ostream)
  "Serializes a message object of type '<GetTransformCamera2Base-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transformation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTransformCamera2Base-response>) istream)
  "Deserializes a message object of type '<GetTransformCamera2Base-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transformation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTransformCamera2Base-response>)))
  "Returns string type for a service object of type '<GetTransformCamera2Base-response>"
  "cob_srvs/GetTransformCamera2BaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformCamera2Base-response)))
  "Returns string type for a service object of type 'GetTransformCamera2Base-response"
  "cob_srvs/GetTransformCamera2BaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTransformCamera2Base-response>)))
  "Returns md5sum for a message object of type '<GetTransformCamera2Base-response>"
  "8316a0598b4d0c36e9a64cce2457d6c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTransformCamera2Base-response)))
  "Returns md5sum for a message object of type 'GetTransformCamera2Base-response"
  "8316a0598b4d0c36e9a64cce2457d6c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTransformCamera2Base-response>)))
  "Returns full string definition for message of type '<GetTransformCamera2Base-response>"
  (cl:format cl:nil "cob_msgs/Transformation transformation~%~%~%================================================================================~%MSG: cob_msgs/Transformation~%#message for exchanging transformations in x,y,z positions and roll, pitch, yaw angles~%~%#std_msgs/Header header~%~%#translation~%float64 x~%float64 y~%float64 z~%~%#rotation~%float64 roll #roll~%float64 pitch #pitch~%float64 yaw #yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTransformCamera2Base-response)))
  "Returns full string definition for message of type 'GetTransformCamera2Base-response"
  (cl:format cl:nil "cob_msgs/Transformation transformation~%~%~%================================================================================~%MSG: cob_msgs/Transformation~%#message for exchanging transformations in x,y,z positions and roll, pitch, yaw angles~%~%#std_msgs/Header header~%~%#translation~%float64 x~%float64 y~%float64 z~%~%#rotation~%float64 roll #roll~%float64 pitch #pitch~%float64 yaw #yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTransformCamera2Base-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transformation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTransformCamera2Base-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTransformCamera2Base-response
    (cl:cons ':transformation (transformation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTransformCamera2Base)))
  'GetTransformCamera2Base-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTransformCamera2Base)))
  'GetTransformCamera2Base-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTransformCamera2Base)))
  "Returns string type for a service object of type '<GetTransformCamera2Base>"
  "cob_srvs/GetTransformCamera2Base")
