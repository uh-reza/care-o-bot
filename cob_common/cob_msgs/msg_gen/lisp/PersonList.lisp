; Auto-generated. Do not edit!


(cl:in-package cob_msgs-msg)


;//! \htmlinclude PersonList.msg.html

(cl:defclass <PersonList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num_persons
    :reader num_persons
    :initarg :num_persons
    :type cl:integer
    :initform 0)
   (list
    :reader list
    :initarg :list
    :type (cl:vector cob_msgs-msg:PersonHypothesis)
   :initform (cl:make-array 0 :element-type 'cob_msgs-msg:PersonHypothesis :initial-element (cl:make-instance 'cob_msgs-msg:PersonHypothesis)))
   (num_associations
    :reader num_associations
    :initarg :num_associations
    :type cl:integer
    :initform 0)
   (association_propability
    :reader association_propability
    :initarg :association_propability
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (ID
    :reader ID
    :initarg :ID
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (filter_update
    :reader filter_update
    :initarg :filter_update
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass PersonList (<PersonList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_msgs-msg:<PersonList> is deprecated: use cob_msgs-msg:PersonList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:header-val is deprecated.  Use cob_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_persons-val :lambda-list '(m))
(cl:defmethod num_persons-val ((m <PersonList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:num_persons-val is deprecated.  Use cob_msgs-msg:num_persons instead.")
  (num_persons m))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <PersonList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:list-val is deprecated.  Use cob_msgs-msg:list instead.")
  (list m))

(cl:ensure-generic-function 'num_associations-val :lambda-list '(m))
(cl:defmethod num_associations-val ((m <PersonList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:num_associations-val is deprecated.  Use cob_msgs-msg:num_associations instead.")
  (num_associations m))

(cl:ensure-generic-function 'association_propability-val :lambda-list '(m))
(cl:defmethod association_propability-val ((m <PersonList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:association_propability-val is deprecated.  Use cob_msgs-msg:association_propability instead.")
  (association_propability m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <PersonList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:ID-val is deprecated.  Use cob_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'filter_update-val :lambda-list '(m))
(cl:defmethod filter_update-val ((m <PersonList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:filter_update-val is deprecated.  Use cob_msgs-msg:filter_update instead.")
  (filter_update m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonList>) ostream)
  "Serializes a message object of type '<PersonList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_persons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_persons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_persons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_persons)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_associations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_associations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_associations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_associations)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'association_propability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'association_propability))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'ID))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'filter_update))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'filter_update))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonList>) istream)
  "Deserializes a message object of type '<PersonList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_persons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_persons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_persons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_persons)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_msgs-msg:PersonHypothesis))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_associations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_associations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_associations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_associations)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'association_propability) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'association_propability)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ID) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ID)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'filter_update) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'filter_update)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonList>)))
  "Returns string type for a message object of type '<PersonList>"
  "cob_msgs/PersonList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonList)))
  "Returns string type for a message object of type 'PersonList"
  "cob_msgs/PersonList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonList>)))
  "Returns md5sum for a message object of type '<PersonList>"
  "3824b7853ce08aa136e25272f004d5a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonList)))
  "Returns md5sum for a message object of type 'PersonList"
  "3824b7853ce08aa136e25272f004d5a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonList>)))
  "Returns full string definition for message of type '<PersonList>"
  (cl:format cl:nil "~%std_msgs/Header header					#  sequence ID: consecutively increasing ID ~%						## uint32 seq~%						#  Two-integer timestamp that is expressed as:~%						#  * stamp.secs: seconds (stamp_secs) since epoch~%						#  * stamp.nsecs: nanoseconds since stamp_secs~%						#  time-handling sugar is provided by the client library~%						## time stamp~%						#  Frame this data is associated with~%						#  0: no frame~%						#  1: global frame~%						## string frame_id~%	~%uint32 num_persons				#  number of detected Persons~%PersonHypothesis[] list				#  comprised the detected persons~%						#~%~%uint32 num_associations				#  number of associations (number of persons currently in filter)~%float32[] association_propability		#~%~%uint32[] ID					#  this are the person IDs (unique identifier to associate persons with a data base - for image based recognition)~%~%uint32[] filter_update				#  this table is for the filter update. if filter_update(i)==0 -> no filter update~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_msgs/PersonHypothesis~%~%~%# header better in PersonList.msg~%#std_msgs/Header header				#  sequence ID: consecutively increasing ID ~%					## uint32 seq~%					#  Two-integer timestamp that is expressed as:~%					#  * stamp.secs: seconds (stamp_secs) since epoch~%					#  * stamp.nsecs: nanoseconds since stamp_secs~%					#  time-handling sugar is provided by the client library~%					## time stamp~%					#  Frame this data is associated with~%					#  0: no frame~%					#  1: global frame~%					## string frame_id~%~%~%############## position###########################################~%~%~%geometry_msgs/PoseWithCovariance position		#  Pose pose~%					#  Row-major representation of the 6x6 covariance matrix~%					#  The orientation parameters use a fixed-axis representation.~%					#  In order, the parameters are:~%					#  (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%					#  float64[36] covariance~%~%geometry_msgs/TwistWithCovariance rotation 		#  This expresses velocity in free space with uncertianty.~%					# Row-major representation of the 6x6 covariance matrix~%					# The orientation parameters use a fixed-axis representation.~%					# In order, the parameters are:~%					# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%~%float32 p_f				#  probabillity_false = 1-w, w= probability~%					#  reliability of the detection~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertianty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into it's linear and angular parts. ~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonList)))
  "Returns full string definition for message of type 'PersonList"
  (cl:format cl:nil "~%std_msgs/Header header					#  sequence ID: consecutively increasing ID ~%						## uint32 seq~%						#  Two-integer timestamp that is expressed as:~%						#  * stamp.secs: seconds (stamp_secs) since epoch~%						#  * stamp.nsecs: nanoseconds since stamp_secs~%						#  time-handling sugar is provided by the client library~%						## time stamp~%						#  Frame this data is associated with~%						#  0: no frame~%						#  1: global frame~%						## string frame_id~%	~%uint32 num_persons				#  number of detected Persons~%PersonHypothesis[] list				#  comprised the detected persons~%						#~%~%uint32 num_associations				#  number of associations (number of persons currently in filter)~%float32[] association_propability		#~%~%uint32[] ID					#  this are the person IDs (unique identifier to associate persons with a data base - for image based recognition)~%~%uint32[] filter_update				#  this table is for the filter update. if filter_update(i)==0 -> no filter update~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_msgs/PersonHypothesis~%~%~%# header better in PersonList.msg~%#std_msgs/Header header				#  sequence ID: consecutively increasing ID ~%					## uint32 seq~%					#  Two-integer timestamp that is expressed as:~%					#  * stamp.secs: seconds (stamp_secs) since epoch~%					#  * stamp.nsecs: nanoseconds since stamp_secs~%					#  time-handling sugar is provided by the client library~%					## time stamp~%					#  Frame this data is associated with~%					#  0: no frame~%					#  1: global frame~%					## string frame_id~%~%~%############## position###########################################~%~%~%geometry_msgs/PoseWithCovariance position		#  Pose pose~%					#  Row-major representation of the 6x6 covariance matrix~%					#  The orientation parameters use a fixed-axis representation.~%					#  In order, the parameters are:~%					#  (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%					#  float64[36] covariance~%~%geometry_msgs/TwistWithCovariance rotation 		#  This expresses velocity in free space with uncertianty.~%					# Row-major representation of the 6x6 covariance matrix~%					# The orientation parameters use a fixed-axis representation.~%					# In order, the parameters are:~%					# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%~%float32 p_f				#  probabillity_false = 1-w, w= probability~%					#  reliability of the detection~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertianty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into it's linear and angular parts. ~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'association_propability) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ID) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'filter_update) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonList>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonList
    (cl:cons ':header (header msg))
    (cl:cons ':num_persons (num_persons msg))
    (cl:cons ':list (list msg))
    (cl:cons ':num_associations (num_associations msg))
    (cl:cons ':association_propability (association_propability msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':filter_update (filter_update msg))
))
