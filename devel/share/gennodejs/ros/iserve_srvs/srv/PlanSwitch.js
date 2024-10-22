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

class PlanSwitchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.swith_on = null;
      this.end_pose = null;
      this.joint_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('swith_on')) {
        this.swith_on = initObj.swith_on
      }
      else {
        this.swith_on = false;
      }
      if (initObj.hasOwnProperty('end_pose')) {
        this.end_pose = initObj.end_pose
      }
      else {
        this.end_pose = [];
      }
      if (initObj.hasOwnProperty('joint_pos')) {
        this.joint_pos = initObj.joint_pos
      }
      else {
        this.joint_pos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanSwitchRequest
    // Serialize message field [swith_on]
    bufferOffset = _serializer.bool(obj.swith_on, buffer, bufferOffset);
    // Serialize message field [end_pose]
    bufferOffset = _arraySerializer.float64(obj.end_pose, buffer, bufferOffset, null);
    // Serialize message field [joint_pos]
    bufferOffset = _arraySerializer.float64(obj.joint_pos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanSwitchRequest
    let len;
    let data = new PlanSwitchRequest(null);
    // Deserialize message field [swith_on]
    data.swith_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [end_pose]
    data.end_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_pos]
    data.joint_pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.end_pose.length;
    length += 8 * object.joint_pos.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/PlanSwitchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cf446b28b6ddff4476cb5d9001a7e9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #indicate start or stop plan
    bool swith_on
    float64[] end_pose
    float64[] joint_pos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanSwitchRequest(null);
    if (msg.swith_on !== undefined) {
      resolved.swith_on = msg.swith_on;
    }
    else {
      resolved.swith_on = false
    }

    if (msg.end_pose !== undefined) {
      resolved.end_pose = msg.end_pose;
    }
    else {
      resolved.end_pose = []
    }

    if (msg.joint_pos !== undefined) {
      resolved.joint_pos = msg.joint_pos;
    }
    else {
      resolved.joint_pos = []
    }

    return resolved;
    }
};

class PlanSwitchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.waypoints = null;
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
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanSwitchResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [waypoints]
    bufferOffset = _arraySerializer.float64(obj.waypoints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanSwitchResponse
    let len;
    let data = new PlanSwitchResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    data.waypoints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += 8 * object.waypoints.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/PlanSwitchResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '773867baf99f509801542161dfb1883a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    float64[] waypoints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanSwitchResponse(null);
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

    if (msg.waypoints !== undefined) {
      resolved.waypoints = msg.waypoints;
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PlanSwitchRequest,
  Response: PlanSwitchResponse,
  md5sum() { return 'cfeabc4c78e5fd8d5dc411ef1421855a'; },
  datatype() { return 'iserve_srvs/PlanSwitch'; }
};
