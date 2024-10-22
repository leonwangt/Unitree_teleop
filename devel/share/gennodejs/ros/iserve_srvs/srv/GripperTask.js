// Auto-generated. Do not edit!

// (in-package iserve_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GripperTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isWaitFinish = null;
      this.gripper_mode = null;
      this.command_cur = null;
      this.command_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('isWaitFinish')) {
        this.isWaitFinish = initObj.isWaitFinish
      }
      else {
        this.isWaitFinish = false;
      }
      if (initObj.hasOwnProperty('gripper_mode')) {
        this.gripper_mode = initObj.gripper_mode
      }
      else {
        this.gripper_mode = 0;
      }
      if (initObj.hasOwnProperty('command_cur')) {
        this.command_cur = initObj.command_cur
      }
      else {
        this.command_cur = 0.0;
      }
      if (initObj.hasOwnProperty('command_pos')) {
        this.command_pos = initObj.command_pos
      }
      else {
        this.command_pos = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperTaskRequest
    // Serialize message field [isWaitFinish]
    bufferOffset = _serializer.bool(obj.isWaitFinish, buffer, bufferOffset);
    // Serialize message field [gripper_mode]
    bufferOffset = _serializer.int32(obj.gripper_mode, buffer, bufferOffset);
    // Serialize message field [command_cur]
    bufferOffset = _serializer.float64(obj.command_cur, buffer, bufferOffset);
    // Serialize message field [command_pos]
    bufferOffset = _serializer.float64(obj.command_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperTaskRequest
    let len;
    let data = new GripperTaskRequest(null);
    // Deserialize message field [isWaitFinish]
    data.isWaitFinish = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gripper_mode]
    data.gripper_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [command_cur]
    data.command_cur = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [command_pos]
    data.command_pos = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/GripperTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fde54d0d0e21c7edfcdb01d56a2d895b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isWaitFinish
    int32 gripper_mode
    float64 command_cur
    float64 command_pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperTaskRequest(null);
    if (msg.isWaitFinish !== undefined) {
      resolved.isWaitFinish = msg.isWaitFinish;
    }
    else {
      resolved.isWaitFinish = false
    }

    if (msg.gripper_mode !== undefined) {
      resolved.gripper_mode = msg.gripper_mode;
    }
    else {
      resolved.gripper_mode = 0
    }

    if (msg.command_cur !== undefined) {
      resolved.command_cur = msg.command_cur;
    }
    else {
      resolved.command_cur = 0.0
    }

    if (msg.command_pos !== undefined) {
      resolved.command_pos = msg.command_pos;
    }
    else {
      resolved.command_pos = 0.0
    }

    return resolved;
    }
};

class GripperTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperTaskResponse
    let len;
    let data = new GripperTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/GripperTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperTaskResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GripperTaskRequest,
  Response: GripperTaskResponse,
  md5sum() { return '007f99435ca61cac594944ddc645a469'; },
  datatype() { return 'iserve_srvs/GripperTask'; }
};
