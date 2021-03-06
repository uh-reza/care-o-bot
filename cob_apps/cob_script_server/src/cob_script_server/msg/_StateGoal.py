"""autogenerated by genmsg_py from StateGoal.msg. Do not edit."""
import roslib.message
import struct

import cob_script_server.msg
import std_msgs.msg

class StateGoal(roslib.message.Message):
  _md5sum = "5d2b1a5f7b8263c9eb024ed31a5dbee9"
  _type = "cob_script_server/StateGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
cob_script_server/ScriptState state

================================================================================
MSG: cob_script_server/ScriptState
Header header
int16 number
string function_name
string component_name
string parameter_name
string full_graph_name

# Possible execution states
byte UNKNOWN=0
byte ACTIVE=1
byte SUCCEEDED=2
byte FAILED=3
byte PAUSED=4

byte state # state of execution
int16 error_code # current error_code for state

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['state']
  _slot_types = ['cob_script_server/ScriptState']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       state
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(StateGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.state is None:
        self.state = cob_script_server.msg.ScriptState()
    else:
      self.state = cob_script_server.msg.ScriptState()

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
      buff.write(_struct_3I.pack(_x.state.header.seq, _x.state.header.stamp.secs, _x.state.header.stamp.nsecs))
      _x = self.state.header.frame_id
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_h.pack(self.state.number))
      _x = self.state.function_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.state.component_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.state.parameter_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.state.full_graph_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_bh.pack(_x.state.state, _x.state.error_code))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      if self.state is None:
        self.state = cob_script_server.msg.ScriptState()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.state.header.seq, _x.state.header.stamp.secs, _x.state.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.header.frame_id = str[start:end]
      start = end
      end += 2
      (self.state.number,) = _struct_h.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.function_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.component_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.parameter_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.full_graph_name = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.state.state, _x.state.error_code,) = _struct_bh.unpack(str[start:end])
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
      buff.write(_struct_3I.pack(_x.state.header.seq, _x.state.header.stamp.secs, _x.state.header.stamp.nsecs))
      _x = self.state.header.frame_id
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_h.pack(self.state.number))
      _x = self.state.function_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.state.component_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.state.parameter_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.state.full_graph_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_bh.pack(_x.state.state, _x.state.error_code))
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
      if self.state is None:
        self.state = cob_script_server.msg.ScriptState()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.state.header.seq, _x.state.header.stamp.secs, _x.state.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.header.frame_id = str[start:end]
      start = end
      end += 2
      (self.state.number,) = _struct_h.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.function_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.component_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.parameter_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.state.full_graph_name = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.state.state, _x.state.error_code,) = _struct_bh.unpack(str[start:end])
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_h = struct.Struct("<h")
_struct_3I = struct.Struct("<3I")
_struct_bh = struct.Struct("<bh")
