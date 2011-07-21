"""autogenerated by genmsg_py from HandleObjectRequest.msg. Do not edit."""
import roslib.message
import struct

import std_msgs.msg

class HandleObjectRequest(roslib.message.Message):
  _md5sum = "b7ae75b160919d88ecc4832760505183"
  _type = "cob_arm_navigation/HandleObjectRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """std_msgs/String object

================================================================================
MSG: std_msgs/String
string data

"""
  __slots__ = ['object']
  _slot_types = ['std_msgs/String']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       object
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(HandleObjectRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.object is None:
        self.object = std_msgs.msg.String()
    else:
      self.object = std_msgs.msg.String()

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
      _x = self.object.data
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
      if self.object is None:
        self.object = std_msgs.msg.String()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.object.data = str[start:end]
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
      _x = self.object.data
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
      if self.object is None:
        self.object = std_msgs.msg.String()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.object.data = str[start:end]
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
"""autogenerated by genmsg_py from HandleObjectResponse.msg. Do not edit."""
import roslib.message
import struct

import std_msgs.msg

class HandleObjectResponse(roslib.message.Message):
  _md5sum = "bdad515e8f4c013bd650d3407753d2b8"
  _type = "cob_arm_navigation/HandleObjectResponse"
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
      super(HandleObjectResponse, self).__init__(*args, **kwds)
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
class HandleObject(roslib.message.ServiceDefinition):
  _type          = 'cob_arm_navigation/HandleObject'
  _md5sum = 'c364d5bbd6a527257660ea94f735ed4c'
  _request_class  = HandleObjectRequest
  _response_class = HandleObjectResponse
