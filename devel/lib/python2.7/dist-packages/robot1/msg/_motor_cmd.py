# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robot1/motor_cmd.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class motor_cmd(genpy.Message):
  _md5sum = "e39fb850cd33bf75c7d2d2cb00151e67"
  _type = "robot1/motor_cmd"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 motor_id

bool motor_onoff
bool  motor_desired_direction 
int32 motor_desired_rpm
int32 motor_desired_angle

"""
  __slots__ = ['motor_id','motor_onoff','motor_desired_direction','motor_desired_rpm','motor_desired_angle']
  _slot_types = ['int8','bool','bool','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       motor_id,motor_onoff,motor_desired_direction,motor_desired_rpm,motor_desired_angle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(motor_cmd, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.motor_id is None:
        self.motor_id = 0
      if self.motor_onoff is None:
        self.motor_onoff = False
      if self.motor_desired_direction is None:
        self.motor_desired_direction = False
      if self.motor_desired_rpm is None:
        self.motor_desired_rpm = 0
      if self.motor_desired_angle is None:
        self.motor_desired_angle = 0
    else:
      self.motor_id = 0
      self.motor_onoff = False
      self.motor_desired_direction = False
      self.motor_desired_rpm = 0
      self.motor_desired_angle = 0

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
      _x = self
      buff.write(_get_struct_b2B2i().pack(_x.motor_id, _x.motor_onoff, _x.motor_desired_direction, _x.motor_desired_rpm, _x.motor_desired_angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 11
      (_x.motor_id, _x.motor_onoff, _x.motor_desired_direction, _x.motor_desired_rpm, _x.motor_desired_angle,) = _get_struct_b2B2i().unpack(str[start:end])
      self.motor_onoff = bool(self.motor_onoff)
      self.motor_desired_direction = bool(self.motor_desired_direction)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_b2B2i().pack(_x.motor_id, _x.motor_onoff, _x.motor_desired_direction, _x.motor_desired_rpm, _x.motor_desired_angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 11
      (_x.motor_id, _x.motor_onoff, _x.motor_desired_direction, _x.motor_desired_rpm, _x.motor_desired_angle,) = _get_struct_b2B2i().unpack(str[start:end])
      self.motor_onoff = bool(self.motor_onoff)
      self.motor_desired_direction = bool(self.motor_desired_direction)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_b2B2i = None
def _get_struct_b2B2i():
    global _struct_b2B2i
    if _struct_b2B2i is None:
        _struct_b2B2i = struct.Struct("<b2B2i")
    return _struct_b2B2i
