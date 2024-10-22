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

class ImpedanceTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swith_on = null;
      this.control_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('swith_on')) {
        this.swith_on = initObj.swith_on
      }
      else {
        this.swith_on = false;
      }
      if (initObj.hasOwnProperty('control_flag')) {
        this.control_flag = initObj.control_flag
      }
      else {
        this.control_flag = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImpedanceTaskRequest
    // Serialize message field [swith_on]
    bufferOffset = _serializer.bool(obj.swith_on, buffer, bufferOffset);
    // Serialize message field [control_flag]
    bufferOffset = _arraySerializer.int32(obj.control_flag, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImpedanceTaskRequest
    let len;
    let data = new ImpedanceTaskRequest(null);
    // Deserialize message field [swith_on]
    data.swith_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [control_flag]
    data.control_flag = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.control_flag.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/ImpedanceTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7cb76790dca58d15273a3fdceca7923';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool swith_on
    int32[] control_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImpedanceTaskRequest(null);
    if (msg.swith_on !== undefined) {
      resolved.swith_on = msg.swith_on;
    }
    else {
      resolved.swith_on = false
    }

    if (msg.control_flag !== undefined) {
      resolved.control_flag = msg.control_flag;
    }
    else {
      resolved.control_flag = []
    }

    return resolved;
    }
};

class ImpedanceTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImpedanceTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImpedanceTaskResponse
    let len;
    let data = new ImpedanceTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/ImpedanceTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImpedanceTaskResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ImpedanceTaskRequest,
  Response: ImpedanceTaskResponse,
  md5sum() { return '21908f874f4e6cb2dd60a1908a933187'; },
  datatype() { return 'iserve_srvs/ImpedanceTask'; }
};
