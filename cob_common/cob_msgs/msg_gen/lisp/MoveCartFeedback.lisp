; Auto-generated. Do not edit!


(cl:in-package cob_msgs-msg)


;//! \htmlinclude MoveCartFeedback.msg.html

(cl:defclass <MoveCartFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveCartFeedback (<MoveCartFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveCartFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveCartFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_msgs-msg:<MoveCartFeedback> is deprecated: use cob_msgs-msg:MoveCartFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveCartFeedback>) ostream)
  "Serializes a message object of type '<MoveCartFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveCartFeedback>) istream)
  "Deserializes a message object of type '<MoveCartFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveCartFeedback>)))
  "Returns string type for a message object of type '<MoveCartFeedback>"
  "cob_msgs/MoveCartFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCartFeedback)))
  "Returns string type for a message object of type 'MoveCartFeedback"
  "cob_msgs/MoveCartFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveCartFeedback>)))
  "Returns md5sum for a message object of type '<MoveCartFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveCartFeedback)))
  "Returns md5sum for a message object of type 'MoveCartFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveCartFeedback>)))
  "Returns full string definition for message of type '<MoveCartFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveCartFeedback)))
  "Returns full string definition for message of type 'MoveCartFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback definition~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveCartFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveCartFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveCartFeedback
))
