// Auto-generated. Do not edit!

// (in-package iserve_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ManipulationCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drawer_id = null;
      this.object_name = null;
      this.operation_type = null;
      this.grasp_milk = null;
    }
    else {
      if (initObj.hasOwnProperty('drawer_id')) {
        this.drawer_id = initObj.drawer_id
      }
      else {
        this.drawer_id = 0;
      }
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
      if (initObj.hasOwnProperty('operation_type')) {
        this.operation_type = initObj.operation_type
      }
      else {
        this.operation_type = '';
      }
      if (initObj.hasOwnProperty('grasp_milk')) {
        this.grasp_milk = initObj.grasp_milk
      }
      else {
        this.grasp_milk = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManipulationCommand
    // Serialize message field [drawer_id]
    bufferOffset = _serializer.int32(obj.drawer_id, buffer, bufferOffset);
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    // Serialize message field [operation_type]
    bufferOffset = _serializer.string(obj.operation_type, buffer, bufferOffset);
    // Serialize message field [grasp_milk]
    bufferOffset = _serializer.bool(obj.grasp_milk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManipulationCommand
    let len;
    let data = new ManipulationCommand(null);
    // Deserialize message field [drawer_id]
    data.drawer_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [operation_type]
    data.operation_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [grasp_milk]
    data.grasp_milk = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_name);
    length += _getByteLength(object.operation_type);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iserve_msgs/ManipulationCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7bd5aa1378690e7afd00443d907131aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 drawer_id          #对几号抽屉进行抓放
    string object_name       #抓取物体的名称
    string operation_type    #操作模式，loading or unloading
    bool grasp_milk          #是否抓取牛奶
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManipulationCommand(null);
    if (msg.drawer_id !== undefined) {
      resolved.drawer_id = msg.drawer_id;
    }
    else {
      resolved.drawer_id = 0
    }

    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    if (msg.operation_type !== undefined) {
      resolved.operation_type = msg.operation_type;
    }
    else {
      resolved.operation_type = ''
    }

    if (msg.grasp_milk !== undefined) {
      resolved.grasp_milk = msg.grasp_milk;
    }
    else {
      resolved.grasp_milk = false
    }

    return resolved;
    }
};

module.exports = ManipulationCommand;
