; Auto-generated. Do not edit!


(cl:in-package cob_msgs-msg)


;//! \htmlinclude MoveCartResult.msg.html

(cl:defclass <MoveCartResult> (roslisp-msg-protocol:ros-message)
  ((return_value
    :reader return_value
    :initarg :return_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MoveCartResult (<MoveCartResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveCartResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveCartResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_msgs-msg:<MoveCartResult> is deprecated: use cob_msgs-msg:MoveCartResult instead.")))

(cl:ensure-generic-function 'return_value-val :lambda-list '(m))
(cl:defmethod return_value-val ((m <MoveCartResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:return_value-val is deprecated.  Use cob_msgs-msg:return_value instead.")
  (return_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveCartResult>) ostream)
  "Serializes a message object of type '<MoveCartResult>"
  (cl:let* ((signed (cl:slot-value msg 'return_value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveCartResult>) istream)
  "Deserializes a message object of type '<MoveCartResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'return_value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveCartResult>)))
  "Returns string type for a message object of type '<MoveCartResult>"
  "cob_msgs/MoveCartResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCartResult)))
  "Returns string type for a message object of type 'MoveCartResult"
  "cob_msgs/MoveCartResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveCartResult>)))
  "Returns md5sum for a message object of type '<MoveCartResult>"
  "cfe8a15d5e2e01586cd5e05f2094f7c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveCartResult)))
  "Returns md5sum for a message object of type 'MoveCartResult"
  "cfe8a15d5e2e01586cd5e05f2094f7c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveCartResult>)))
  "Returns full string definition for message of type '<MoveCartResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%int16 return_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveCartResult)))
  "Returns full string definition for message of type 'MoveCartResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%int16 return_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveCartResult>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveCartResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveCartResult
    (cl:cons ':return_value (return_value msg))
))