; Auto-generated. Do not edit!


(cl:in-package cob_arm_navigation-srv)


;//! \htmlinclude HandleObject-request.msg.html

(cl:defclass <HandleObject-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass HandleObject-request (<HandleObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandleObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandleObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_arm_navigation-srv:<HandleObject-request> is deprecated: use cob_arm_navigation-srv:HandleObject-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <HandleObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_arm_navigation-srv:object-val is deprecated.  Use cob_arm_navigation-srv:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandleObject-request>) ostream)
  "Serializes a message object of type '<HandleObject-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandleObject-request>) istream)
  "Deserializes a message object of type '<HandleObject-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandleObject-request>)))
  "Returns string type for a service object of type '<HandleObject-request>"
  "cob_arm_navigation/HandleObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandleObject-request)))
  "Returns string type for a service object of type 'HandleObject-request"
  "cob_arm_navigation/HandleObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandleObject-request>)))
  "Returns md5sum for a message object of type '<HandleObject-request>"
  "c364d5bbd6a527257660ea94f735ed4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandleObject-request)))
  "Returns md5sum for a message object of type 'HandleObject-request"
  "c364d5bbd6a527257660ea94f735ed4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandleObject-request>)))
  "Returns full string definition for message of type '<HandleObject-request>"
  (cl:format cl:nil "std_msgs/String object~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandleObject-request)))
  "Returns full string definition for message of type 'HandleObject-request"
  (cl:format cl:nil "std_msgs/String object~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandleObject-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandleObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HandleObject-request
    (cl:cons ':object (object msg))
))
;//! \htmlinclude HandleObject-response.msg.html

(cl:defclass <HandleObject-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (error_message
    :reader error_message
    :initarg :error_message
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass HandleObject-response (<HandleObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandleObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandleObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_arm_navigation-srv:<HandleObject-response> is deprecated: use cob_arm_navigation-srv:HandleObject-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <HandleObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_arm_navigation-srv:success-val is deprecated.  Use cob_arm_navigation-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <HandleObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_arm_navigation-srv:error_message-val is deprecated.  Use cob_arm_navigation-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandleObject-response>) ostream)
  "Serializes a message object of type '<HandleObject-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandleObject-response>) istream)
  "Deserializes a message object of type '<HandleObject-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandleObject-response>)))
  "Returns string type for a service object of type '<HandleObject-response>"
  "cob_arm_navigation/HandleObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandleObject-response)))
  "Returns string type for a service object of type 'HandleObject-response"
  "cob_arm_navigation/HandleObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandleObject-response>)))
  "Returns md5sum for a message object of type '<HandleObject-response>"
  "c364d5bbd6a527257660ea94f735ed4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandleObject-response)))
  "Returns md5sum for a message object of type 'HandleObject-response"
  "c364d5bbd6a527257660ea94f735ed4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandleObject-response>)))
  "Returns full string definition for message of type '<HandleObject-response>"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandleObject-response)))
  "Returns full string definition for message of type 'HandleObject-response"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandleObject-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandleObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HandleObject-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HandleObject)))
  'HandleObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HandleObject)))
  'HandleObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandleObject)))
  "Returns string type for a service object of type '<HandleObject>"
  "cob_arm_navigation/HandleObject")
