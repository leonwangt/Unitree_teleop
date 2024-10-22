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

class TestCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.testItem = null;
      this.isLoad = null;
      this.isSingleJoint = null;
      this.jointNo = null;
      this.cycleTimes = null;
      this.velocity = null;
      this.pointIndex = null;
      this.segmentNo = null;
      this.startIndex = null;
      this.endIndex = null;
    }
    else {
      if (initObj.hasOwnProperty('testItem')) {
        this.testItem = initObj.testItem
      }
      else {
        this.testItem = '';
      }
      if (initObj.hasOwnProperty('isLoad')) {
        this.isLoad = initObj.isLoad
      }
      else {
        this.isLoad = false;
      }
      if (initObj.hasOwnProperty('isSingleJoint')) {
        this.isSingleJoint = initObj.isSingleJoint
      }
      else {
        this.isSingleJoint = false;
      }
      if (initObj.hasOwnProperty('jointNo')) {
        this.jointNo = initObj.jointNo
      }
      else {
        this.jointNo = 0;
      }
      if (initObj.hasOwnProperty('cycleTimes')) {
        this.cycleTimes = initObj.cycleTimes
      }
      else {
        this.cycleTimes = 0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('pointIndex')) {
        this.pointIndex = initObj.pointIndex
      }
      else {
        this.pointIndex = 0;
      }
      if (initObj.hasOwnProperty('segmentNo')) {
        this.segmentNo = initObj.segmentNo
      }
      else {
        this.segmentNo = '';
      }
      if (initObj.hasOwnProperty('startIndex')) {
        this.startIndex = initObj.startIndex
      }
      else {
        this.startIndex = 0;
      }
      if (initObj.hasOwnProperty('endIndex')) {
        this.endIndex = initObj.endIndex
      }
      else {
        this.endIndex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestCommandRequest
    // Serialize message field [testItem]
    bufferOffset = _serializer.string(obj.testItem, buffer, bufferOffset);
    // Serialize message field [isLoad]
    bufferOffset = _serializer.bool(obj.isLoad, buffer, bufferOffset);
    // Serialize message field [isSingleJoint]
    bufferOffset = _serializer.bool(obj.isSingleJoint, buffer, bufferOffset);
    // Serialize message field [jointNo]
    bufferOffset = _serializer.int32(obj.jointNo, buffer, bufferOffset);
    // Serialize message field [cycleTimes]
    bufferOffset = _serializer.int32(obj.cycleTimes, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [pointIndex]
    bufferOffset = _serializer.int32(obj.pointIndex, buffer, bufferOffset);
    // Serialize message field [segmentNo]
    bufferOffset = _serializer.string(obj.segmentNo, buffer, bufferOffset);
    // Serialize message field [startIndex]
    bufferOffset = _serializer.int32(obj.startIndex, buffer, bufferOffset);
    // Serialize message field [endIndex]
    bufferOffset = _serializer.int32(obj.endIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestCommandRequest
    let len;
    let data = new TestCommandRequest(null);
    // Deserialize message field [testItem]
    data.testItem = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [isLoad]
    data.isLoad = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isSingleJoint]
    data.isSingleJoint = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [jointNo]
    data.jointNo = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cycleTimes]
    data.cycleTimes = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pointIndex]
    data.pointIndex = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [segmentNo]
    data.segmentNo = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [startIndex]
    data.startIndex = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [endIndex]
    data.endIndex = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.testItem);
    length += _getByteLength(object.segmentNo);
    return length + 38;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/TestCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fa6b05583c7b8dd0dddb40da0b1f6ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #noiseTest, motionStabilityTest, loadTest, jointAngleTest, accuracyTest, powTest, breakTest, motionTest, goHome
    string testItem
    
    bool isLoad
    bool isSingleJoint
    
    #0, 1, 2, 3, 4, 5
    int32 jointNo
    
    # at least 1
    int32 cycleTimes
    float64 velocity
    
    # 1, 2, 3, 4, 5
    int32 pointIndex
    
    #toShelf, toLocker, goHome
    string segmentNo
    
    int32 startIndex
    int32 endIndex
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestCommandRequest(null);
    if (msg.testItem !== undefined) {
      resolved.testItem = msg.testItem;
    }
    else {
      resolved.testItem = ''
    }

    if (msg.isLoad !== undefined) {
      resolved.isLoad = msg.isLoad;
    }
    else {
      resolved.isLoad = false
    }

    if (msg.isSingleJoint !== undefined) {
      resolved.isSingleJoint = msg.isSingleJoint;
    }
    else {
      resolved.isSingleJoint = false
    }

    if (msg.jointNo !== undefined) {
      resolved.jointNo = msg.jointNo;
    }
    else {
      resolved.jointNo = 0
    }

    if (msg.cycleTimes !== undefined) {
      resolved.cycleTimes = msg.cycleTimes;
    }
    else {
      resolved.cycleTimes = 0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.pointIndex !== undefined) {
      resolved.pointIndex = msg.pointIndex;
    }
    else {
      resolved.pointIndex = 0
    }

    if (msg.segmentNo !== undefined) {
      resolved.segmentNo = msg.segmentNo;
    }
    else {
      resolved.segmentNo = ''
    }

    if (msg.startIndex !== undefined) {
      resolved.startIndex = msg.startIndex;
    }
    else {
      resolved.startIndex = 0
    }

    if (msg.endIndex !== undefined) {
      resolved.endIndex = msg.endIndex;
    }
    else {
      resolved.endIndex = 0
    }

    return resolved;
    }
};

class TestCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.testItem = null;
      this.isLoad = null;
      this.cycleTimes = null;
      this.velocity = null;
      this.isSingleJoint = null;
      this.jointNo = null;
      this.segmentNo = null;
      this.pointIndex = null;
      this.startIndex = null;
      this.endIndex = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('testItem')) {
        this.testItem = initObj.testItem
      }
      else {
        this.testItem = '';
      }
      if (initObj.hasOwnProperty('isLoad')) {
        this.isLoad = initObj.isLoad
      }
      else {
        this.isLoad = false;
      }
      if (initObj.hasOwnProperty('cycleTimes')) {
        this.cycleTimes = initObj.cycleTimes
      }
      else {
        this.cycleTimes = 0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('isSingleJoint')) {
        this.isSingleJoint = initObj.isSingleJoint
      }
      else {
        this.isSingleJoint = false;
      }
      if (initObj.hasOwnProperty('jointNo')) {
        this.jointNo = initObj.jointNo
      }
      else {
        this.jointNo = 0;
      }
      if (initObj.hasOwnProperty('segmentNo')) {
        this.segmentNo = initObj.segmentNo
      }
      else {
        this.segmentNo = '';
      }
      if (initObj.hasOwnProperty('pointIndex')) {
        this.pointIndex = initObj.pointIndex
      }
      else {
        this.pointIndex = 0;
      }
      if (initObj.hasOwnProperty('startIndex')) {
        this.startIndex = initObj.startIndex
      }
      else {
        this.startIndex = 0;
      }
      if (initObj.hasOwnProperty('endIndex')) {
        this.endIndex = initObj.endIndex
      }
      else {
        this.endIndex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [testItem]
    bufferOffset = _serializer.string(obj.testItem, buffer, bufferOffset);
    // Serialize message field [isLoad]
    bufferOffset = _serializer.bool(obj.isLoad, buffer, bufferOffset);
    // Serialize message field [cycleTimes]
    bufferOffset = _serializer.int32(obj.cycleTimes, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [isSingleJoint]
    bufferOffset = _serializer.bool(obj.isSingleJoint, buffer, bufferOffset);
    // Serialize message field [jointNo]
    bufferOffset = _serializer.int32(obj.jointNo, buffer, bufferOffset);
    // Serialize message field [segmentNo]
    bufferOffset = _serializer.string(obj.segmentNo, buffer, bufferOffset);
    // Serialize message field [pointIndex]
    bufferOffset = _serializer.int32(obj.pointIndex, buffer, bufferOffset);
    // Serialize message field [startIndex]
    bufferOffset = _serializer.int32(obj.startIndex, buffer, bufferOffset);
    // Serialize message field [endIndex]
    bufferOffset = _serializer.int32(obj.endIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestCommandResponse
    let len;
    let data = new TestCommandResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [testItem]
    data.testItem = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [isLoad]
    data.isLoad = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cycleTimes]
    data.cycleTimes = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [isSingleJoint]
    data.isSingleJoint = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [jointNo]
    data.jointNo = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [segmentNo]
    data.segmentNo = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pointIndex]
    data.pointIndex = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [startIndex]
    data.startIndex = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [endIndex]
    data.endIndex = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.testItem);
    length += _getByteLength(object.segmentNo);
    return length + 39;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/TestCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ed57eefe99697913fd727b43196556f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string testItem
    bool isLoad
    int32 cycleTimes
    float64 velocity
    bool isSingleJoint
    int32 jointNo
    string segmentNo
    int32 pointIndex
    int32 startIndex
    int32 endIndex
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestCommandResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.testItem !== undefined) {
      resolved.testItem = msg.testItem;
    }
    else {
      resolved.testItem = ''
    }

    if (msg.isLoad !== undefined) {
      resolved.isLoad = msg.isLoad;
    }
    else {
      resolved.isLoad = false
    }

    if (msg.cycleTimes !== undefined) {
      resolved.cycleTimes = msg.cycleTimes;
    }
    else {
      resolved.cycleTimes = 0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.isSingleJoint !== undefined) {
      resolved.isSingleJoint = msg.isSingleJoint;
    }
    else {
      resolved.isSingleJoint = false
    }

    if (msg.jointNo !== undefined) {
      resolved.jointNo = msg.jointNo;
    }
    else {
      resolved.jointNo = 0
    }

    if (msg.segmentNo !== undefined) {
      resolved.segmentNo = msg.segmentNo;
    }
    else {
      resolved.segmentNo = ''
    }

    if (msg.pointIndex !== undefined) {
      resolved.pointIndex = msg.pointIndex;
    }
    else {
      resolved.pointIndex = 0
    }

    if (msg.startIndex !== undefined) {
      resolved.startIndex = msg.startIndex;
    }
    else {
      resolved.startIndex = 0
    }

    if (msg.endIndex !== undefined) {
      resolved.endIndex = msg.endIndex;
    }
    else {
      resolved.endIndex = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: TestCommandRequest,
  Response: TestCommandResponse,
  md5sum() { return '56cbc0917dc3153d523ed8899f37edfb'; },
  datatype() { return 'iserve_srvs/TestCommand'; }
};
