"""autogenerated by genmsg_py from SetJointStiffnessRequest.msg. Do not edit."""
import roslib.message
import struct


class SetJointStiffnessRequest(roslib.message.Message):
  _md5sum = "3f30c4d99702f028fe1bef65668a3d21"
  _type = "cob_srvs/SetJointStiffnessRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32[] joint_stiffness

"""
  __slots__ = ['joint_stiffness']
  _slot_types = ['float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       joint_stiffness
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(SetJointStiffnessRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.joint_stiffness is None:
        self.joint_stiffness = []
    else:
      self.joint_stiffness = []

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
      length = len(self.joint_stiffness)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.joint_stiffness))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_stiffness = struct.unpack(pattern, str[start:end])
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
      length = len(self.joint_stiffness)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.joint_stiffness.tostring())
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_stiffness = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
"""autogenerated by genmsg_py from SetJointStiffnessResponse.msg. Do not edit."""
import roslib.message
import struct

import std_msgs.msg

class SetJointStiffnessResponse(roslib.message.Message):
  _md5sum = "bdad515e8f4c013bd650d3407753d2b8"
  _type = "cob_srvs/SetJointStiffnessResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """std_msgs/Bool success
std_msgs/String error_message


================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: std_msgs/String
string data

"""
  __slots__ = ['success','error_message']
  _slot_types = ['std_msgs/Bool','std_msgs/String']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       success,error_message
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(SetJointStiffnessResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = std_msgs.msg.Bool()
      if self.error_message is None:
        self.error_message = std_msgs.msg.String()
    else:
      self.success = std_msgs.msg.Bool()
      self.error_message = std_msgs.msg.String()

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
      buff.write(_struct_B.pack(self.success.data))
      _x = self.error_message.data
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      if self.success is None:
        self.success = std_msgs.msg.Bool()
      if self.error_message is None:
        self.error_message = std_msgs.msg.String()
      end = 0
      start = end
      end += 1
      (self.success.data,) = _struct_B.unpack(str[start:end])
      self.success.data = bool(self.success.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.error_message.data = str[start:end]
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
      buff.write(_struct_B.pack(self.success.data))
      _x = self.error_message.data
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      if self.success is None:
        self.success = std_msgs.msg.Bool()
      if self.error_message is None:
        self.error_message = std_msgs.msg.String()
      end = 0
      start = end
      end += 1
      (self.success.data,) = _struct_B.unpack(str[start:end])
      self.success.data = bool(self.success.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.error_message.data = str[start:end]
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_B = struct.Struct("<B")
class SetJointStiffness(roslib.message.ServiceDefinition):
  _type          = 'cob_srvs/SetJointStiffness'
  _md5sum = '2ae9ddd5d3294ccf3c876d966e4e11a3'
  _request_class  = SetJointStiffnessRequest
  _response_class = SetJointStiffnessResponse