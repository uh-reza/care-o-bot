; Auto-generated. Do not edit!


(cl:in-package cob_msgs-msg)


;//! \htmlinclude PersonHypothesis.msg.html

(cl:defclass <PersonHypothesis> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (p_f
    :reader p_f
    :initarg :p_f
    :type cl:float
    :initform 0.0))
)

(cl:defclass PersonHypothesis (<PersonHypothesis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonHypothesis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonHypothesis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_msgs-msg:<PersonHypothesis> is deprecated: use cob_msgs-msg:PersonHypothesis instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PersonHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:position-val is deprecated.  Use cob_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <PersonHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:rotation-val is deprecated.  Use cob_msgs-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'p_f-val :lambda-list '(m))
(cl:defmethod p_f-val ((m <PersonHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:p_f-val is deprecated.  Use cob_msgs-msg:p_f instead.")
  (p_f m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonHypothesis>) ostream)
  "Serializes a message object of type '<PersonHypothesis>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p_f))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonHypothesis>) istream)
  "Deserializes a message object of type '<PersonHypothesis>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p_f) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonHypothesis>)))
  "Returns string type for a message object of type '<PersonHypothesis>"
  "cob_msgs/PersonHypothesis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonHypothesis)))
  "Returns string type for a message object of type 'PersonHypothesis"
  "cob_msgs/PersonHypothesis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonHypothesis>)))
  "Returns md5sum for a message object of type '<PersonHypothesis>"
  "d8d82996742b4afe03775168cd018920")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonHypothesis)))
  "Returns md5sum for a message object of type 'PersonHypothesis"
  "d8d82996742b4afe03775168cd018920")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonHypothesis>)))
  "Returns full string definition for message of type '<PersonHypothesis>"
  (cl:format cl:nil "~%~%# header better in PersonList.msg~%#std_msgs/Header header				#  sequence ID: consecutively increasing ID ~%					## uint32 seq~%					#  Two-integer timestamp that is expressed as:~%					#  * stamp.secs: seconds (stamp_secs) since epoch~%					#  * stamp.nsecs: nanoseconds since stamp_secs~%					#  time-handling sugar is provided by the client library~%					## time stamp~%					#  Frame this data is associated with~%					#  0: no frame~%					#  1: global frame~%					## string frame_id~%~%~%############## position###########################################~%~%~%geometry_msgs/PoseWithCovariance position		#  Pose pose~%					#  Row-major representation of the 6x6 covariance matrix~%					#  The orientation parameters use a fixed-axis representation.~%					#  In order, the parameters are:~%					#  (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%					#  float64[36] covariance~%~%geometry_msgs/TwistWithCovariance rotation 		#  This expresses velocity in free space with uncertianty.~%					# Row-major representation of the 6x6 covariance matrix~%					# The orientation parameters use a fixed-axis representation.~%					# In order, the parameters are:~%					# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%~%float32 p_f				#  probabillity_false = 1-w, w= probability~%					#  reliability of the detection~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertianty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into it's linear and angular parts. ~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonHypothesis)))
  "Returns full string definition for message of type 'PersonHypothesis"
  (cl:format cl:nil "~%~%# header better in PersonList.msg~%#std_msgs/Header header				#  sequence ID: consecutively increasing ID ~%					## uint32 seq~%					#  Two-integer timestamp that is expressed as:~%					#  * stamp.secs: seconds (stamp_secs) since epoch~%					#  * stamp.nsecs: nanoseconds since stamp_secs~%					#  time-handling sugar is provided by the client library~%					## time stamp~%					#  Frame this data is associated with~%					#  0: no frame~%					#  1: global frame~%					## string frame_id~%~%~%############## position###########################################~%~%~%geometry_msgs/PoseWithCovariance position		#  Pose pose~%					#  Row-major representation of the 6x6 covariance matrix~%					#  The orientation parameters use a fixed-axis representation.~%					#  In order, the parameters are:~%					#  (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%					#  float64[36] covariance~%~%geometry_msgs/TwistWithCovariance rotation 		#  This expresses velocity in free space with uncertianty.~%					# Row-major representation of the 6x6 covariance matrix~%					# The orientation parameters use a fixed-axis representation.~%					# In order, the parameters are:~%					# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%~%float32 p_f				#  probabillity_false = 1-w, w= probability~%					#  reliability of the detection~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertianty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into it's linear and angular parts. ~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonHypothesis>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonHypothesis>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonHypothesis
    (cl:cons ':position (position msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':p_f (p_f msg))
))
