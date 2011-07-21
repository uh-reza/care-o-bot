"""autogenerated by genmsg_py from TransformCamera2BaseRequest.msg. Do not edit."""
import roslib.message
import struct

import geometry_msgs.msg

class TransformCamera2BaseRequest(roslib.message.Message):
  _md5sum = "58845d259e05cda5b5f670342b07a1d5"
  _type = "cob_srvs/TransformCamera2BaseRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point point_camera

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

"""
  __slots__ = ['point_camera']
  _slot_types = ['geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       point_camera
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(TransformCamera2BaseRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.point_camera is None:
        self.point_camera = geometry_msgs.msg.Point()
    else:
      self.point_camera = geometry_msgs.msg.Point()

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
      buff.write(_struct_3d.pack(_x.point_camera.x, _x.point_camera.y, _x.point_camera.z))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      if self.point_camera is None:
        self.point_camera = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.point_camera.x, _x.point_camera.y, _x.point_camera.z,) = _struct_3d.unpack(str[start:end])
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
      buff.write(_struct_3d.pack(_x.point_camera.x, _x.point_camera.y, _x.point_camera.z))
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
      if self.point_camera is None:
        self.point_camera = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.point_camera.x, _x.point_camera.y, _x.point_camera.z,) = _struct_3d.unpack(str[start:end])
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_3d = struct.Struct("<3d")
"""autogenerated by genmsg_py from TransformCamera2BaseResponse.msg. Do not edit."""
import roslib.message
import struct

import geometry_msgs.msg

class TransformCamera2BaseResponse(roslib.message.Message):
  _md5sum = "cccf1d67f15fb6046f0d92724135886b"
  _type = "cob_srvs/TransformCamera2BaseResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point point_base


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

"""
  __slots__ = ['point_base']
  _slot_types = ['geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       point_base
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(TransformCamera2BaseResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.point_base is None:
        self.point_base = geometry_msgs.msg.Point()
    else:
      self.point_base = geometry_msgs.msg.Point()

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
      buff.write(_struct_3d.pack(_x.point_base.x, _x.point_base.y, _x.point_base.z))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      if self.point_base is None:
        self.point_base = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.point_base.x, _x.point_base.y, _x.point_base.z,) = _struct_3d.unpack(str[start:end])
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
      buff.write(_struct_3d.pack(_x.point_base.x, _x.point_base.y, _x.point_base.z))
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
      if self.point_base is None:
        self.point_base = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.point_base.x, _x.point_base.y, _x.point_base.z,) = _struct_3d.unpack(str[start:end])
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_3d = struct.Struct("<3d")
class TransformCamera2Base(roslib.message.ServiceDefinition):
  _type          = 'cob_srvs/TransformCamera2Base'
  _md5sum = '6b29eeb293b36ac2baec55d56ee6647b'
  _request_class  = TransformCamera2BaseRequest
  _response_class = TransformCamera2BaseResponse
