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

class CommandTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.plan_type = null;
      this.commandVel = null;
      this.waypoints = null;
      this.timeStamps = null;
      this.operation_mode = null;
      this.isFileTask = null;
      this.isCartesian = null;
      this.directCommand = null;
      this.isWaitFinish = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = '';
      }
      if (initObj.hasOwnProperty('plan_type')) {
        this.plan_type = initObj.plan_type
      }
      else {
        this.plan_type = '';
      }
      if (initObj.hasOwnProperty('commandVel')) {
        this.commandVel = initObj.commandVel
      }
      else {
        this.commandVel = 0.0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
      if (initObj.hasOwnProperty('timeStamps')) {
        this.timeStamps = initObj.timeStamps
      }
      else {
        this.timeStamps = [];
      }
      if (initObj.hasOwnProperty('operation_mode')) {
        this.operation_mode = initObj.operation_mode
      }
      else {
        this.operation_mode = 0;
      }
      if (initObj.hasOwnProperty('isFileTask')) {
        this.isFileTask = initObj.isFileTask
      }
      else {
        this.isFileTask = false;
      }
      if (initObj.hasOwnProperty('isCartesian')) {
        this.isCartesian = initObj.isCartesian
      }
      else {
        this.isCartesian = false;
      }
      if (initObj.hasOwnProperty('directCommand')) {
        this.directCommand = initObj.directCommand
      }
      else {
        this.directCommand = [];
      }
      if (initObj.hasOwnProperty('isWaitFinish')) {
        this.isWaitFinish = initObj.isWaitFinish
      }
      else {
        this.isWaitFinish = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandTaskRequest
    // Serialize message field [task_id]
    bufferOffset = _serializer.string(obj.task_id, buffer, bufferOffset);
    // Serialize message field [plan_type]
    bufferOffset = _serializer.string(obj.plan_type, buffer, bufferOffset);
    // Serialize message field [commandVel]
    bufferOffset = _serializer.float64(obj.commandVel, buffer, bufferOffset);
    // Serialize message field [waypoints]
    bufferOffset = _arraySerializer.float64(obj.waypoints, buffer, bufferOffset, null);
    // Serialize message field [timeStamps]
    bufferOffset = _arraySerializer.float64(obj.timeStamps, buffer, bufferOffset, null);
    // Serialize message field [operation_mode]
    bufferOffset = _serializer.int32(obj.operation_mode, buffer, bufferOffset);
    // Serialize message field [isFileTask]
    bufferOffset = _serializer.bool(obj.isFileTask, buffer, bufferOffset);
    // Serialize message field [isCartesian]
    bufferOffset = _serializer.bool(obj.isCartesian, buffer, bufferOffset);
    // Serialize message field [directCommand]
    bufferOffset = _arraySerializer.float64(obj.directCommand, buffer, bufferOffset, null);
    // Serialize message field [isWaitFinish]
    bufferOffset = _serializer.bool(obj.isWaitFinish, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandTaskRequest
    let len;
    let data = new CommandTaskRequest(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [plan_type]
    data.plan_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [commandVel]
    data.commandVel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    data.waypoints = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [timeStamps]
    data.timeStamps = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [operation_mode]
    data.operation_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isFileTask]
    data.isFileTask = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isCartesian]
    data.isCartesian = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [directCommand]
    data.directCommand = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [isWaitFinish]
    data.isWaitFinish = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.task_id);
    length += _getByteLength(object.plan_type);
    length += 8 * object.waypoints.length;
    length += 8 * object.timeStamps.length;
    length += 8 * object.directCommand.length;
    return length + 35;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/CommandTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20900e4ff1dba6ccd8bfb55d3879360c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string task_id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandTaskRequest(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = ''
    }

    if (msg.plan_type !== undefined) {
      resolved.plan_type = msg.plan_type;
    }
    else {
      resolved.plan_type = ''
    }

    if (msg.commandVel !== undefined) {
      resolved.commandVel = msg.commandVel;
    }
    else {
      resolved.commandVel = 0.0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = msg.waypoints;
    }
    else {
      resolved.waypoints = []
    }

    if (msg.timeStamps !== undefined) {
      resolved.timeStamps = msg.timeStamps;
    }
    else {
      resolved.timeStamps = []
    }

    if (msg.operation_mode !== undefined) {
      resolved.operation_mode = msg.operation_mode;
    }
    else {
      resolved.operation_mode = 0
    }

    if (msg.isFileTask !== undefined) {
      resolved.isFileTask = msg.isFileTask;
    }
    else {
      resolved.isFileTask = false
    }

    if (msg.isCartesian !== undefined) {
      resolved.isCartesian = msg.isCartesian;
    }
    else {
      resolved.isCartesian = false
    }

    if (msg.directCommand !== undefined) {
      resolved.directCommand = msg.directCommand;
    }
    else {
      resolved.directCommand = []
    }

    if (msg.isWaitFinish !== undefined) {
      resolved.isWaitFinish = msg.isWaitFinish;
    }
    else {
      resolved.isWaitFinish = false
    }

    return resolved;
    }
};

class CommandTaskResponse {
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
    // Serializes a message object of type CommandTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandTaskResponse
    let len;
    let data = new CommandTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/CommandTaskResponse';
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
    const resolved = new CommandTaskResponse(null);
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
  Request: CommandTaskRequest,
  Response: CommandTaskResponse,
  md5sum() { return 'b97ea1c2b9159c8055dbffd61ee371b9'; },
  datatype() { return 'iserve_srvs/CommandTask'; }
};
