; Auto-generated. Do not edit!


(cl:in-package cob_tray_sensors-srv)


;//! \htmlinclude CheckOccupied-request.msg.html

(cl:defclass <CheckOccupied-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CheckOccupied-request (<CheckOccupied-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckOccupied-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckOccupied-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_tray_sensors-srv:<CheckOccupied-request> is deprecated: use cob_tray_sensors-srv:CheckOccupied-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckOccupied-request>) ostream)
  "Serializes a message object of type '<CheckOccupied-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckOccupied-request>) istream)
  "Deserializes a message object of type '<CheckOccupied-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckOccupied-request>)))
  "Returns string type for a service object of type '<CheckOccupied-request>"
  "cob_tray_sensors/CheckOccupiedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckOccupied-request)))
  "Returns string type for a service object of type 'CheckOccupied-request"
  "cob_tray_sensors/CheckOccupiedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckOccupied-request>)))
  "Returns md5sum for a message object of type '<CheckOccupied-request>"
  "8d3b986d769546e750c9f1bcac9efd83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckOccupied-request)))
  "Returns md5sum for a message object of type 'CheckOccupied-request"
  "8d3b986d769546e750c9f1bcac9efd83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckOccupied-request>)))
  "Returns full string definition for message of type '<CheckOccupied-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckOccupied-request)))
  "Returns full string definition for message of type 'CheckOccupied-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckOccupied-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckOccupied-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckOccupied-request
))
;//! \htmlinclude CheckOccupied-response.msg.html

(cl:defclass <CheckOccupied-response> (roslisp-msg-protocol:ros-message)
  ((occupied
    :reader occupied
    :initarg :occupied
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass CheckOccupied-response (<CheckOccupied-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckOccupied-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckOccupied-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_tray_sensors-srv:<CheckOccupied-response> is deprecated: use cob_tray_sensors-srv:CheckOccupied-response instead.")))

(cl:ensure-generic-function 'occupied-val :lambda-list '(m))
(cl:defmethod occupied-val ((m <CheckOccupied-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_tray_sensors-srv:occupied-val is deprecated.  Use cob_tray_sensors-srv:occupied instead.")
  (occupied m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckOccupied-response>) ostream)
  "Serializes a message object of type '<CheckOccupied-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'occupied) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckOccupied-response>) istream)
  "Deserializes a message object of type '<CheckOccupied-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'occupied) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckOccupied-response>)))
  "Returns string type for a service object of type '<CheckOccupied-response>"
  "cob_tray_sensors/CheckOccupiedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckOccupied-response)))
  "Returns string type for a service object of type 'CheckOccupied-response"
  "cob_tray_sensors/CheckOccupiedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckOccupied-response>)))
  "Returns md5sum for a message object of type '<CheckOccupied-response>"
  "8d3b986d769546e750c9f1bcac9efd83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckOccupied-response)))
  "Returns md5sum for a message object of type 'CheckOccupied-response"
  "8d3b986d769546e750c9f1bcac9efd83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckOccupied-response>)))
  "Returns full string definition for message of type '<CheckOccupied-response>"
  (cl:format cl:nil "std_msgs/Bool occupied~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckOccupied-response)))
  "Returns full string definition for message of type 'CheckOccupied-response"
  (cl:format cl:nil "std_msgs/Bool occupied~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckOccupied-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occupied))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckOccupied-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckOccupied-response
    (cl:cons ':occupied (occupied msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckOccupied)))
  'CheckOccupied-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckOccupied)))
  'CheckOccupied-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckOccupied)))
  "Returns string type for a service object of type '<CheckOccupied>"
  "cob_tray_sensors/CheckOccupied")
