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

class DragTeachRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeStamp = null;
      this.describe_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0.0;
      }
      if (initObj.hasOwnProperty('describe_msg')) {
        this.describe_msg = initObj.describe_msg
      }
      else {
        this.describe_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DragTeachRequest
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.float64(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [describe_msg]
    bufferOffset = _serializer.string(obj.describe_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DragTeachRequest
    let len;
    let data = new DragTeachRequest(null);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [describe_msg]
    data.describe_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.describe_msg);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/DragTeachRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4197ecc7bc481a408fe96f6036ab818';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #absolute timestamp from start(0)
    float64 timeStamp
    
    #brief explain of the point
    string describe_msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DragTeachRequest(null);
    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0.0
    }

    if (msg.describe_msg !== undefined) {
      resolved.describe_msg = msg.describe_msg;
    }
    else {
      resolved.describe_msg = ''
    }

    return resolved;
    }
};

class DragTeachResponse {
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
    // Serializes a message object of type DragTeachResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DragTeachResponse
    let len;
    let data = new DragTeachResponse(null);
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
    return 'iserve_srvs/DragTeachResponse';
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
    const resolved = new DragTeachResponse(null);
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
  Request: DragTeachRequest,
  Response: DragTeachResponse,
  md5sum() { return '0ec3616815302eee28b553178a1eed29'; },
  datatype() { return 'iserve_srvs/DragTeach'; }
};
