# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iserve_srvs/CommandTaskRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CommandTaskRequest(genpy.Message):
  _md5sum = "20900e4ff1dba6ccd8bfb55d3879360c"
  _type = "iserve_srvs/CommandTaskRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string task_id
string plan_type
float64 commandVel
float64[] waypoints
float64[] timeStamps
int32 operation_mode
# if move the arm according to the record file
bool isFileTask
bool isCartesian
float64[] directCommand
bool isWaitFinish
"""
  __slots__ = ['task_id','plan_type','commandVel','waypoints','timeStamps','operation_mode','isFileTask','isCartesian','directCommand','isWaitFinish']
  _slot_types = ['string','string','float64','float64[]','float64[]','int32','bool','bool','float64[]','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       task_id,plan_type,commandVel,waypoints,timeStamps,operation_mode,isFileTask,isCartesian,directCommand,isWaitFinish

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CommandTaskRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.task_id is None:
        self.task_id = ''
      if self.plan_type is None:
        self.plan_type = ''
      if self.commandVel is None:
        self.commandVel = 0.
      if self.waypoints is None:
        self.waypoints = []
      if self.timeStamps is None:
        self.timeStamps = []
      if self.operation_mode is None:
        self.operation_mode = 0
      if self.isFileTask is None:
        self.isFileTask = False
      if self.isCartesian is None:
        self.isCartesian = False
      if self.directCommand is None:
        self.directCommand = []
      if self.isWaitFinish is None:
        self.isWaitFinish = False
    else:
      self.task_id = ''
      self.plan_type = ''
      self.commandVel = 0.
      self.waypoints = []
      self.timeStamps = []
      self.operation_mode = 0
      self.isFileTask = False
      self.isCartesian = False
      self.directCommand = []
      self.isWaitFinish = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.task_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.plan_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.commandVel
      buff.write(_get_struct_d().pack(_x))
      length = len(self.waypoints)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.waypoints))
      length = len(self.timeStamps)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.timeStamps))
      _x = self
      buff.write(_get_struct_i2B().pack(_x.operation_mode, _x.isFileTask, _x.isCartesian))
      length = len(self.directCommand)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.directCommand))
      _x = self.isWaitFinish
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.task_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.task_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.plan_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.plan_type = str[start:end]
      start = end
      end += 8
      (self.commandVel,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.waypoints = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.timeStamps = s.unpack(str[start:end])
      _x = self
      start = end
      end += 6
      (_x.operation_mode, _x.isFileTask, _x.isCartesian,) = _get_struct_i2B().unpack(str[start:end])
      self.isFileTask = bool(self.isFileTask)
      self.isCartesian = bool(self.isCartesian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.directCommand = s.unpack(str[start:end])
      start = end
      end += 1
      (self.isWaitFinish,) = _get_struct_B().unpack(str[start:end])
      self.isWaitFinish = bool(self.isWaitFinish)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.task_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.plan_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.commandVel
      buff.write(_get_struct_d().pack(_x))
      length = len(self.waypoints)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.waypoints.tostring())
      length = len(self.timeStamps)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.timeStamps.tostring())
      _x = self
      buff.write(_get_struct_i2B().pack(_x.operation_mode, _x.isFileTask, _x.isCartesian))
      length = len(self.directCommand)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.directCommand.tostring())
      _x = self.isWaitFinish
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.task_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.task_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.plan_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.plan_type = str[start:end]
      start = end
      end += 8
      (self.commandVel,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.waypoints = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.timeStamps = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 6
      (_x.operation_mode, _x.isFileTask, _x.isCartesian,) = _get_struct_i2B().unpack(str[start:end])
      self.isFileTask = bool(self.isFileTask)
      self.isCartesian = bool(self.isCartesian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.directCommand = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 1
      (self.isWaitFinish,) = _get_struct_B().unpack(str[start:end])
      self.isWaitFinish = bool(self.isWaitFinish)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_i2B = None
def _get_struct_i2B():
    global _struct_i2B
    if _struct_i2B is None:
        _struct_i2B = struct.Struct("<i2B")
    return _struct_i2B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iserve_srvs/CommandTaskResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CommandTaskResponse(genpy.Message):
  _md5sum = "358e233cde0c8a8bcfea4ce193f8fc15"
  _type = "iserve_srvs/CommandTaskResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool success

"""
  __slots__ = ['success']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CommandTaskResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
    else:
      self.success = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class CommandTask(object):
  _type          = 'iserve_srvs/CommandTask'
  _md5sum = 'b97ea1c2b9159c8055dbffd61ee371b9'
  _request_class  = CommandTaskRequest
  _response_class = CommandTaskResponse