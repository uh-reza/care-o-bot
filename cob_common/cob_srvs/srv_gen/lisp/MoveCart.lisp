; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude MoveCart-request.msg.html

(cl:defclass <MoveCart-request> (roslisp-msg-protocol:ros-message)
  ((goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass MoveCart-request (<MoveCart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveCart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveCart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<MoveCart-request> is deprecated: use cob_srvs-srv:MoveCart-request instead.")))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <MoveCart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:goal_pose-val is deprecated.  Use cob_srvs-srv:goal_pose instead.")
  (goal_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveCart-request>) ostream)
  "Serializes a message object of type '<MoveCart-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveCart-request>) istream)
  "Deserializes a message object of type '<MoveCart-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveCart-request>)))
  "Returns string type for a service object of type '<MoveCart-request>"
  "cob_srvs/MoveCartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCart-request)))
  "Returns string type for a service object of type 'MoveCart-request"
  "cob_srvs/MoveCartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveCart-request>)))
  "Returns md5sum for a message object of type '<MoveCart-request>"
  "235bf6357a6a3d1742c1b14312acb4ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveCart-request)))
  "Returns md5sum for a message object of type 'MoveCart-request"
  "235bf6357a6a3d1742c1b14312acb4ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveCart-request>)))
  "Returns full string definition for message of type '<MoveCart-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped goal_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveCart-request)))
  "Returns full string definition for message of type 'MoveCart-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped goal_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveCart-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveCart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveCart-request
    (cl:cons ':goal_pose (goal_pose msg))
))
;//! \htmlinclude MoveCart-response.msg.html

(cl:defclass <MoveCart-response> (roslisp-msg-protocol:ros-message)
  ((return_code
    :reader return_code
    :initarg :return_code
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveCart-response (<MoveCart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveCart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveCart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<MoveCart-response> is deprecated: use cob_srvs-srv:MoveCart-response instead.")))

(cl:ensure-generic-function 'return_code-val :lambda-list '(m))
(cl:defmethod return_code-val ((m <MoveCart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:return_code-val is deprecated.  Use cob_srvs-srv:return_code instead.")
  (return_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveCart-response>) ostream)
  "Serializes a message object of type '<MoveCart-response>"
  (cl:let* ((signed (cl:slot-value msg 'return_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveCart-response>) istream)
  "Deserializes a message object of type '<MoveCart-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'return_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveCart-response>)))
  "Returns string type for a service object of type '<MoveCart-response>"
  "cob_srvs/MoveCartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCart-response)))
  "Returns string type for a service object of type 'MoveCart-response"
  "cob_srvs/MoveCartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveCart-response>)))
  "Returns md5sum for a message object of type '<MoveCart-response>"
  "235bf6357a6a3d1742c1b14312acb4ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveCart-response)))
  "Returns md5sum for a message object of type 'MoveCart-response"
  "235bf6357a6a3d1742c1b14312acb4ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveCart-response>)))
  "Returns full string definition for message of type '<MoveCart-response>"
  (cl:format cl:nil "int32 return_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveCart-response)))
  "Returns full string definition for message of type 'MoveCart-response"
  (cl:format cl:nil "int32 return_code~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveCart-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveCart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveCart-response
    (cl:cons ':return_code (return_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveCart)))
  'MoveCart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveCart)))
  'MoveCart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCart)))
  "Returns string type for a service object of type '<MoveCart>"
  "cob_srvs/MoveCart")
