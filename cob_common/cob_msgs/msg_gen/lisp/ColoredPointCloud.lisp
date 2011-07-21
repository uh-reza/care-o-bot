; Auto-generated. Do not edit!


(cl:in-package cob_msgs-msg)


;//! \htmlinclude ColoredPointCloud.msg.html

(cl:defclass <ColoredPointCloud> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (colorImage
    :reader colorImage
    :initarg :colorImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (greyImage
    :reader greyImage
    :initarg :greyImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (pointCloud
    :reader pointCloud
    :initarg :pointCloud
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (reprojectionMatrix
    :reader reprojectionMatrix
    :initarg :reprojectionMatrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ColoredPointCloud (<ColoredPointCloud>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColoredPointCloud>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColoredPointCloud)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_msgs-msg:<ColoredPointCloud> is deprecated: use cob_msgs-msg:ColoredPointCloud instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ColoredPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:header-val is deprecated.  Use cob_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'colorImage-val :lambda-list '(m))
(cl:defmethod colorImage-val ((m <ColoredPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:colorImage-val is deprecated.  Use cob_msgs-msg:colorImage instead.")
  (colorImage m))

(cl:ensure-generic-function 'greyImage-val :lambda-list '(m))
(cl:defmethod greyImage-val ((m <ColoredPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:greyImage-val is deprecated.  Use cob_msgs-msg:greyImage instead.")
  (greyImage m))

(cl:ensure-generic-function 'pointCloud-val :lambda-list '(m))
(cl:defmethod pointCloud-val ((m <ColoredPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:pointCloud-val is deprecated.  Use cob_msgs-msg:pointCloud instead.")
  (pointCloud m))

(cl:ensure-generic-function 'reprojectionMatrix-val :lambda-list '(m))
(cl:defmethod reprojectionMatrix-val ((m <ColoredPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_msgs-msg:reprojectionMatrix-val is deprecated.  Use cob_msgs-msg:reprojectionMatrix instead.")
  (reprojectionMatrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColoredPointCloud>) ostream)
  "Serializes a message object of type '<ColoredPointCloud>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'colorImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'greyImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointCloud) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'reprojectionMatrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColoredPointCloud>) istream)
  "Deserializes a message object of type '<ColoredPointCloud>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'colorImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'greyImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointCloud) istream)
  (cl:setf (cl:slot-value msg 'reprojectionMatrix) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'reprojectionMatrix)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColoredPointCloud>)))
  "Returns string type for a message object of type '<ColoredPointCloud>"
  "cob_msgs/ColoredPointCloud")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColoredPointCloud)))
  "Returns string type for a message object of type 'ColoredPointCloud"
  "cob_msgs/ColoredPointCloud")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColoredPointCloud>)))
  "Returns md5sum for a message object of type '<ColoredPointCloud>"
  "9df9d7cfcd776b110f86cb41086c7b74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColoredPointCloud)))
  "Returns md5sum for a message object of type 'ColoredPointCloud"
  "9df9d7cfcd776b110f86cb41086c7b74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColoredPointCloud>)))
  "Returns full string definition for message of type '<ColoredPointCloud>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/Image colorImage~%sensor_msgs/Image greyImage~%sensor_msgs/Image pointCloud~%~%# Reprojection matrix~%# Reprojects 3-D coordinates to image coordinates~%float64[9] reprojectionMatrix # 3x3 row-major matrix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in src/image_encodings.cpp~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColoredPointCloud)))
  "Returns full string definition for message of type 'ColoredPointCloud"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/Image colorImage~%sensor_msgs/Image greyImage~%sensor_msgs/Image pointCloud~%~%# Reprojection matrix~%# Reprojects 3-D coordinates to image coordinates~%float64[9] reprojectionMatrix # 3x3 row-major matrix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in src/image_encodings.cpp~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColoredPointCloud>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'colorImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'greyImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointCloud))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reprojectionMatrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColoredPointCloud>))
  "Converts a ROS message object to a list"
  (cl:list 'ColoredPointCloud
    (cl:cons ':header (header msg))
    (cl:cons ':colorImage (colorImage msg))
    (cl:cons ':greyImage (greyImage msg))
    (cl:cons ':pointCloud (pointCloud msg))
    (cl:cons ':reprojectionMatrix (reprojectionMatrix msg))
))
