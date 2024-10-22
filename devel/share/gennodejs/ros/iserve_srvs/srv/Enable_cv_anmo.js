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

class Enable_cv_anmoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Enable = null;
    }
    else {
      if (initObj.hasOwnProperty('Enable')) {
        this.Enable = initObj.Enable
      }
      else {
        this.Enable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Enable_cv_anmoRequest
    // Serialize message field [Enable]
    bufferOffset = _serializer.bool(obj.Enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Enable_cv_anmoRequest
    let len;
    let data = new Enable_cv_anmoRequest(null);
    // Deserialize message field [Enable]
    data.Enable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/Enable_cv_anmoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '132b53c6b897b73e7dc72146d30f3b1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Enable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Enable_cv_anmoRequest(null);
    if (msg.Enable !== undefined) {
      resolved.Enable = msg.Enable;
    }
    else {
      resolved.Enable = false
    }

    return resolved;
    }
};

class Enable_cv_anmoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Enable_cv_anmoResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Enable_cv_anmoResponse
    let len;
    let data = new Enable_cv_anmoResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/Enable_cv_anmoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ok
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Enable_cv_anmoResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: Enable_cv_anmoRequest,
  Response: Enable_cv_anmoResponse,
  md5sum() { return 'e1e111322e6a2085adde944da2f908ec'; },
  datatype() { return 'iserve_srvs/Enable_cv_anmo'; }
};
