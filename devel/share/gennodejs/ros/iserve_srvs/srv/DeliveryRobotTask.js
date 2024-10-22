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

class DeliveryRobotTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.switch_on = null;
      this.scene_id = null;
      this.look_id = null;
      this.place_id = null;
      this.object_name = null;
      this.speed_scale = null;
    }
    else {
      if (initObj.hasOwnProperty('switch_on')) {
        this.switch_on = initObj.switch_on
      }
      else {
        this.switch_on = false;
      }
      if (initObj.hasOwnProperty('scene_id')) {
        this.scene_id = initObj.scene_id
      }
      else {
        this.scene_id = 0;
      }
      if (initObj.hasOwnProperty('look_id')) {
        this.look_id = initObj.look_id
      }
      else {
        this.look_id = 0;
      }
      if (initObj.hasOwnProperty('place_id')) {
        this.place_id = initObj.place_id
      }
      else {
        this.place_id = 0;
      }
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
      if (initObj.hasOwnProperty('speed_scale')) {
        this.speed_scale = initObj.speed_scale
      }
      else {
        this.speed_scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeliveryRobotTaskRequest
    // Serialize message field [switch_on]
    bufferOffset = _serializer.bool(obj.switch_on, buffer, bufferOffset);
    // Serialize message field [scene_id]
    bufferOffset = _serializer.int32(obj.scene_id, buffer, bufferOffset);
    // Serialize message field [look_id]
    bufferOffset = _serializer.int32(obj.look_id, buffer, bufferOffset);
    // Serialize message field [place_id]
    bufferOffset = _serializer.int32(obj.place_id, buffer, bufferOffset);
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    // Serialize message field [speed_scale]
    bufferOffset = _serializer.float64(obj.speed_scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeliveryRobotTaskRequest
    let len;
    let data = new DeliveryRobotTaskRequest(null);
    // Deserialize message field [switch_on]
    data.switch_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scene_id]
    data.scene_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [look_id]
    data.look_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [place_id]
    data.place_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed_scale]
    data.speed_scale = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_name);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/DeliveryRobotTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ca3ea91120e66a6e1d8b1ec95d2107b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool switch_on       #该次服务调用是否有效
    int32 scene_id       #场景id
    int32 look_id      #对几号抽屉进行抓放
    int32 place_id       #对抽屉的几号放置位进行放置
    string object_name   #抓取物体的名称
    float64 speed_scale  #用于调速，高中低三挡
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeliveryRobotTaskRequest(null);
    if (msg.switch_on !== undefined) {
      resolved.switch_on = msg.switch_on;
    }
    else {
      resolved.switch_on = false
    }

    if (msg.scene_id !== undefined) {
      resolved.scene_id = msg.scene_id;
    }
    else {
      resolved.scene_id = 0
    }

    if (msg.look_id !== undefined) {
      resolved.look_id = msg.look_id;
    }
    else {
      resolved.look_id = 0
    }

    if (msg.place_id !== undefined) {
      resolved.place_id = msg.place_id;
    }
    else {
      resolved.place_id = 0
    }

    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    if (msg.speed_scale !== undefined) {
      resolved.speed_scale = msg.speed_scale;
    }
    else {
      resolved.speed_scale = 0.0
    }

    return resolved;
    }
};

class DeliveryRobotTaskResponse {
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
    // Serializes a message object of type DeliveryRobotTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeliveryRobotTaskResponse
    let len;
    let data = new DeliveryRobotTaskResponse(null);
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
    return 'iserve_srvs/DeliveryRobotTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success         #反馈服务是否调用成功
    string message       #相关的comment
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeliveryRobotTaskResponse(null);
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
  Request: DeliveryRobotTaskRequest,
  Response: DeliveryRobotTaskResponse,
  md5sum() { return '1d4bbb7bd00384e7a69a86662cfc883c'; },
  datatype() { return 'iserve_srvs/DeliveryRobotTask'; }
};
