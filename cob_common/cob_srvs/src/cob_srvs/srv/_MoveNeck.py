"""autogenerated by genmsg_py from MoveNeckRequest.msg. Do not edit."""
import roslib.message
import struct


class MoveNeckRequest(roslib.message.Message):
  _md5sum = "b0e7ec4179e43c1e83359d2cf0c44885"
  _type = "cob_srvs/MoveNeckRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 joint_angle_1
float32 joint_angle_2
float32 joint_angle_3
float32 joint_angle_4

"""
  __slots__ = ['joint_angle_1','joint_angle_2','joint_angle_3','joint_angle_4']
  _slot_types = ['float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       joint_angle_1,joint_angle_2,joint_angle_3,joint_angle_4
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(MoveNeckRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.joint_angle_1 is None:
        self.joint_angle_1 = 0.
      if self.joint_angle_2 is None:
        self.joint_angle_2 = 0.
      if self.joint_angle_3 is None:
        self.joint_angle_3 = 0.
      if self.joint_angle_4 is None:
        self.joint_angle_4 = 0.
    else:
      self.joint_angle_1 = 0.
      self.joint_angle_2 = 0.
      self.joint_angle_3 = 0.
      self.joint_angle_4 = 0.

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
      buff.write(_struct_4f.pack(_x.joint_angle_1, _x.joint_angle_2, _x.joint_angle_3, _x.joint_angle_4))
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
      _x = self
      start = end
      end += 16
      (_x.joint_angle_1, _x.joint_angle_2, _x.joint_angle_3, _x.joint_angle_4,) = _struct_4f.unpack(str[start:end])
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
      buff.write(_struct_4f.pack(_x.joint_angle_1, _x.joint_angle_2, _x.joint_angle_3, _x.joint_angle_4))
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
      _x = self
      start = end
      end += 16
      (_x.joint_angle_1, _x.joint_angle_2, _x.joint_angle_3, _x.joint_angle_4,) = _struct_4f.unpack(str[start:end])
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_4f = struct.Struct("<4f")
"""autogenerated by genmsg_py from MoveNeckResponse.msg. Do not edit."""
import roslib.message
import struct

import std_msgs.msg

class MoveNeckResponse(roslib.message.Message):
  _md5sum = "fff2fd61c570b3016de5f27e6dc433be"
  _type = "cob_srvs/MoveNeckResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 success
std_msgs/String errorMessage


================================================================================
MSG: std_msgs/String
string data

"""
  __slots__ = ['success','errorMessage']
  _slot_types = ['int64','std_msgs/String']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       success,errorMessage
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(MoveNeckResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = 0
      if self.errorMessage is None:
        self.errorMessage = std_msgs.msg.String()
    else:
      self.success = 0
      self.errorMessage = std_msgs.msg.String()

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
      buff.write(_struct_q.pack(self.success))
      _x = self.errorMessage.data
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
      if self.errorMessage is None:
        self.errorMessage = std_msgs.msg.String()
      end = 0
      start = end
      end += 8
      (self.success,) = _struct_q.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.errorMessage.data = str[start:end]
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
      buff.write(_struct_q.pack(self.success))
      _x = self.errorMessage.data
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
      if self.errorMessage is None:
        self.errorMessage = std_msgs.msg.String()
      end = 0
      start = end
      end += 8
      (self.success,) = _struct_q.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.errorMessage.data = str[start:end]
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_q = struct.Struct("<q")
class MoveNeck(roslib.message.ServiceDefinition):
  _type          = 'cob_srvs/MoveNeck'
  _md5sum = '718a31b14e9cb510862ca312064f3b28'
  _request_class  = MoveNeckRequest
  _response_class = MoveNeckResponse
