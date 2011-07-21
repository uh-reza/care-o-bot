; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude GetColoredPointCloud-request.msg.html

(cl:defclass <GetColoredPointCloud-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetColoredPointCloud-request (<GetColoredPointCloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetColoredPointCloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetColoredPointCloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetColoredPointCloud-request> is deprecated: use cob_srvs-srv:GetColoredPointCloud-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetColoredPointCloud-request>) ostream)
  "Serializes a message object of type '<GetColoredPointCloud-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetColoredPointCloud-request>) istream)
  "Deserializes a message object of type '<GetColoredPointCloud-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetColoredPointCloud-request>)))
  "Returns string type for a service object of type '<GetColoredPointCloud-request>"
  "cob_srvs/GetColoredPointCloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetColoredPointCloud-request)))
  "Returns string type for a service object of type 'GetColoredPointCloud-request"
  "cob_srvs/GetColoredPointCloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetColoredPointCloud-request>)))
  "Returns md5sum for a message object of type '<GetColoredPointCloud-request>"
  "cf3355f2241f2ad04bcf295859caf912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetColoredPointCloud-request)))
  "Returns md5sum for a message object of type 'GetColoredPointCloud-request"
  "cf3355f2241f2ad04bcf295859caf912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetColoredPointCloud-request>)))
  "Returns full string definition for message of type '<GetColoredPointCloud-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetColoredPointCloud-request)))
  "Returns full string definition for message of type 'GetColoredPointCloud-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetColoredPointCloud-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetColoredPointCloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetColoredPointCloud-request
))
;//! \htmlinclude GetColoredPointCloud-response.msg.html

(cl:defclass <GetColoredPointCloud-response> (roslisp-msg-protocol:ros-message)
  ((colorImage
    :reader colorImage
    :initarg :colorImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (xyzImage
    :reader xyzImage
    :initarg :xyzImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (confidenceMask
    :reader confidenceMask
    :initarg :confidenceMask
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (reprojectionMatrix
    :reader reprojectionMatrix
    :initarg :reprojectionMatrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetColoredPointCloud-response (<GetColoredPointCloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetColoredPointCloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetColoredPointCloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetColoredPointCloud-response> is deprecated: use cob_srvs-srv:GetColoredPointCloud-response instead.")))

(cl:ensure-generic-function 'colorImage-val :lambda-list '(m))
(cl:defmethod colorImage-val ((m <GetColoredPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:colorImage-val is deprecated.  Use cob_srvs-srv:colorImage instead.")
  (colorImage m))

(cl:ensure-generic-function 'xyzImage-val :lambda-list '(m))
(cl:defmethod xyzImage-val ((m <GetColoredPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:xyzImage-val is deprecated.  Use cob_srvs-srv:xyzImage instead.")
  (xyzImage m))

(cl:ensure-generic-function 'confidenceMask-val :lambda-list '(m))
(cl:defmethod confidenceMask-val ((m <GetColoredPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:confidenceMask-val is deprecated.  Use cob_srvs-srv:confidenceMask instead.")
  (confidenceMask m))

(cl:ensure-generic-function 'reprojectionMatrix-val :lambda-list '(m))
(cl:defmethod reprojectionMatrix-val ((m <GetColoredPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:reprojectionMatrix-val is deprecated.  Use cob_srvs-srv:reprojectionMatrix instead.")
  (reprojectionMatrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetColoredPointCloud-response>) ostream)
  "Serializes a message object of type '<GetColoredPointCloud-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'colorImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xyzImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'confidenceMask) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetColoredPointCloud-response>) istream)
  "Deserializes a message object of type '<GetColoredPointCloud-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'colorImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xyzImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'confidenceMask) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetColoredPointCloud-response>)))
  "Returns string type for a service object of type '<GetColoredPointCloud-response>"
  "cob_srvs/GetColoredPointCloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetColoredPointCloud-response)))
  "Returns string type for a service object of type 'GetColoredPointCloud-response"
  "cob_srvs/GetColoredPointCloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetColoredPointCloud-response>)))
  "Returns md5sum for a message object of type '<GetColoredPointCloud-response>"
  "cf3355f2241f2ad04bcf295859caf912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetColoredPointCloud-response)))
  "Returns md5sum for a message object of type 'GetColoredPointCloud-response"
  "cf3355f2241f2ad04bcf295859caf912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetColoredPointCloud-response>)))
  "Returns full string definition for message of type '<GetColoredPointCloud-response>"
  (cl:format cl:nil "sensor_msgs/Image colorImage~%sensor_msgs/Image xyzImage~%sensor_msgs/Image confidenceMask~%~%~%~%float64[9] reprojectionMatrix~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in src/image_encodings.cpp~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetColoredPointCloud-response)))
  "Returns full string definition for message of type 'GetColoredPointCloud-response"
  (cl:format cl:nil "sensor_msgs/Image colorImage~%sensor_msgs/Image xyzImage~%sensor_msgs/Image confidenceMask~%~%~%~%float64[9] reprojectionMatrix~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in src/image_encodings.cpp~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetColoredPointCloud-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'colorImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xyzImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'confidenceMask))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reprojectionMatrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetColoredPointCloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetColoredPointCloud-response
    (cl:cons ':colorImage (colorImage msg))
    (cl:cons ':xyzImage (xyzImage msg))
    (cl:cons ':confidenceMask (confidenceMask msg))
    (cl:cons ':reprojectionMatrix (reprojectionMatrix msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetColoredPointCloud)))
  'GetColoredPointCloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetColoredPointCloud)))
  'GetColoredPointCloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetColoredPointCloud)))
  "Returns string type for a service object of type '<GetColoredPointCloud>"
  "cob_srvs/GetColoredPointCloud")
