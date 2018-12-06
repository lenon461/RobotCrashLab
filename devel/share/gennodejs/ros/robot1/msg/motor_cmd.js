// Auto-generated. Do not edit!

// (in-package robot1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motor_cmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_id = null;
      this.motor_onoff = null;
      this.motor_desired_direction = null;
      this.motor_desired_rpm = null;
      this.motor_desired_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_id')) {
        this.motor_id = initObj.motor_id
      }
      else {
        this.motor_id = 0;
      }
      if (initObj.hasOwnProperty('motor_onoff')) {
        this.motor_onoff = initObj.motor_onoff
      }
      else {
        this.motor_onoff = false;
      }
      if (initObj.hasOwnProperty('motor_desired_direction')) {
        this.motor_desired_direction = initObj.motor_desired_direction
      }
      else {
        this.motor_desired_direction = false;
      }
      if (initObj.hasOwnProperty('motor_desired_rpm')) {
        this.motor_desired_rpm = initObj.motor_desired_rpm
      }
      else {
        this.motor_desired_rpm = 0;
      }
      if (initObj.hasOwnProperty('motor_desired_angle')) {
        this.motor_desired_angle = initObj.motor_desired_angle
      }
      else {
        this.motor_desired_angle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor_cmd
    // Serialize message field [motor_id]
    bufferOffset = _serializer.int8(obj.motor_id, buffer, bufferOffset);
    // Serialize message field [motor_onoff]
    bufferOffset = _serializer.bool(obj.motor_onoff, buffer, bufferOffset);
    // Serialize message field [motor_desired_direction]
    bufferOffset = _serializer.bool(obj.motor_desired_direction, buffer, bufferOffset);
    // Serialize message field [motor_desired_rpm]
    bufferOffset = _serializer.int32(obj.motor_desired_rpm, buffer, bufferOffset);
    // Serialize message field [motor_desired_angle]
    bufferOffset = _serializer.int32(obj.motor_desired_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor_cmd
    let len;
    let data = new motor_cmd(null);
    // Deserialize message field [motor_id]
    data.motor_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [motor_onoff]
    data.motor_onoff = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_desired_direction]
    data.motor_desired_direction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_desired_rpm]
    data.motor_desired_rpm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor_desired_angle]
    data.motor_desired_angle = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot1/motor_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e39fb850cd33bf75c7d2d2cb00151e67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 motor_id
    
    bool motor_onoff
    bool  motor_desired_direction 
    int32 motor_desired_rpm
    int32 motor_desired_angle
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor_cmd(null);
    if (msg.motor_id !== undefined) {
      resolved.motor_id = msg.motor_id;
    }
    else {
      resolved.motor_id = 0
    }

    if (msg.motor_onoff !== undefined) {
      resolved.motor_onoff = msg.motor_onoff;
    }
    else {
      resolved.motor_onoff = false
    }

    if (msg.motor_desired_direction !== undefined) {
      resolved.motor_desired_direction = msg.motor_desired_direction;
    }
    else {
      resolved.motor_desired_direction = false
    }

    if (msg.motor_desired_rpm !== undefined) {
      resolved.motor_desired_rpm = msg.motor_desired_rpm;
    }
    else {
      resolved.motor_desired_rpm = 0
    }

    if (msg.motor_desired_angle !== undefined) {
      resolved.motor_desired_angle = msg.motor_desired_angle;
    }
    else {
      resolved.motor_desired_angle = 0
    }

    return resolved;
    }
};

module.exports = motor_cmd;
