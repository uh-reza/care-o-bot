"""autogenerated by genmsg_py from PersonHypothesis.msg. Do not edit."""
import roslib.message
import struct

import geometry_msgs.msg

class PersonHypothesis(roslib.message.Message):
  _md5sum = "d8d82996742b4afe03775168cd018920"
  _type = "cob_msgs/PersonHypothesis"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

# header better in PersonList.msg
#std_msgs/Header header				#  sequence ID: consecutively increasing ID 
					## uint32 seq
					#  Two-integer timestamp that is expressed as:
					#  * stamp.secs: seconds (stamp_secs) since epoch
					#  * stamp.nsecs: nanoseconds since stamp_secs
					#  time-handling sugar is provided by the client library
					## time stamp
					#  Frame this data is associated with
					#  0: no frame
					#  1: global frame
					## string frame_id


############## position###########################################


geometry_msgs/PoseWithCovariance position		#  Pose pose
					#  Row-major representation of the 6x6 covariance matrix
					#  The orientation parameters use a fixed-axis representation.
					#  In order, the parameters are:
					#  (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
					#  float64[36] covariance

geometry_msgs/TwistWithCovariance rotation 		#  This expresses velocity in free space with uncertianty.
					# Row-major representation of the 6x6 covariance matrix
					# The orientation parameters use a fixed-axis representation.
					# In order, the parameters are:
					# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)

float32 p_f				#  probabillity_false = 1-w, w= probability
					#  reliability of the detection



================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertianty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into it's linear and angular parts. 
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 

float64 x
float64 y
float64 z
"""
  __slots__ = ['position','rotation','p_f']
  _slot_types = ['geometry_msgs/PoseWithCovariance','geometry_msgs/TwistWithCovariance','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       position,rotation,p_f
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(PersonHypothesis, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.position is None:
        self.position = geometry_msgs.msg.PoseWithCovariance()
      if self.rotation is None:
        self.rotation = geometry_msgs.msg.TwistWithCovariance()
      if self.p_f is None:
        self.p_f = 0.
    else:
      self.position = geometry_msgs.msg.PoseWithCovariance()
      self.rotation = geometry_msgs.msg.TwistWithCovariance()
      self.p_f = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self
      buff.write(_struct_7d.pack(_x.position.pose.position.x, _x.position.pose.position.y, _x.position.pose.position.z, _x.position.pose.orientation.x, _x.position.pose.orientation.y, _x.position.pose.orientation.z, _x.position.pose.orientation.w))
      buff.write(_struct_36d.pack(*self.position.covariance))
      _x = self
      buff.write(_struct_6d.pack(_x.rotation.twist.linear.x, _x.rotation.twist.linear.y, _x.rotation.twist.linear.z, _x.rotation.twist.angular.x, _x.rotation.twist.angular.y, _x.rotation.twist.angular.z))
      buff.write(_struct_36d.pack(*self.rotation.covariance))
      buff.write(_struct_f.pack(self.p_f))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.PoseWithCovariance()
      if self.rotation is None:
        self.rotation = geometry_msgs.msg.TwistWithCovariance()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.position.pose.position.x, _x.position.pose.position.y, _x.position.pose.position.z, _x.position.pose.orientation.x, _x.position.pose.orientation.y, _x.position.pose.orientation.z, _x.position.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      start = end
      end += 288
      self.position.covariance = _struct_36d.unpack(str[start:end])
      _x = self
      start = end
      end += 48
      (_x.rotation.twist.linear.x, _x.rotation.twist.linear.y, _x.rotation.twist.linear.z, _x.rotation.twist.angular.x, _x.rotation.twist.angular.y, _x.rotation.twist.angular.z,) = _struct_6d.unpack(str[start:end])
      start = end
      end += 288
      self.rotation.covariance = _struct_36d.unpack(str[start:end])
      start = end
      end += 4
      (self.p_f,) = _struct_f.unpack(str[start:end])
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self
      buff.write(_struct_7d.pack(_x.position.pose.position.x, _x.position.pose.position.y, _x.position.pose.position.z, _x.position.pose.orientation.x, _x.position.pose.orientation.y, _x.position.pose.orientation.z, _x.position.pose.orientation.w))
      buff.write(self.position.covariance.tostring())
      _x = self
      buff.write(_struct_6d.pack(_x.rotation.twist.linear.x, _x.rotation.twist.linear.y, _x.rotation.twist.linear.z, _x.rotation.twist.angular.x, _x.rotation.twist.angular.y, _x.rotation.twist.angular.z))
      buff.write(self.rotation.covariance.tostring())
      buff.write(_struct_f.pack(self.p_f))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      if self.position is None:
        self.position = geometry_msgs.msg.PoseWithCovariance()
      if self.rotation is None:
        self.rotation = geometry_msgs.msg.TwistWithCovariance()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.position.pose.position.x, _x.position.pose.position.y, _x.position.pose.position.z, _x.position.pose.orientation.x, _x.position.pose.orientation.y, _x.position.pose.orientation.z, _x.position.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      start = end
      end += 288
      self.position.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 48
      (_x.rotation.twist.linear.x, _x.rotation.twist.linear.y, _x.rotation.twist.linear.z, _x.rotation.twist.angular.x, _x.rotation.twist.angular.y, _x.rotation.twist.angular.z,) = _struct_6d.unpack(str[start:end])
      start = end
      end += 288
      self.rotation.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      start = end
      end += 4
      (self.p_f,) = _struct_f.unpack(str[start:end])
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_36d = struct.Struct("<36d")
_struct_7d = struct.Struct("<7d")
_struct_6d = struct.Struct("<6d")
_struct_f = struct.Struct("<f")
