// Auto-generated. Do not edit!

// (in-package catmessage.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VisionMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = '';
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionMsg
    // Serialize message field [center]
    bufferOffset = _serializer.string(obj.center, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.string(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionMsg
    let len;
    let data = new VisionMsg(null);
    // Deserialize message field [center]
    data.center = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.center.length;
    length += object.width.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'catmessage/VisionMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bcb967f84e12c29dcf056a2d3db22ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string center
    string width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionMsg(null);
    if (msg.center !== undefined) {
      resolved.center = msg.center;
    }
    else {
      resolved.center = ''
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = ''
    }

    return resolved;
    }
};

module.exports = VisionMsg;
