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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class JointPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointNo = null;
      this.isNeedCalibration = null;
    }
    else {
      if (initObj.hasOwnProperty('jointNo')) {
        this.jointNo = initObj.jointNo
      }
      else {
        this.jointNo = 0;
      }
      if (initObj.hasOwnProperty('isNeedCalibration')) {
        this.isNeedCalibration = initObj.isNeedCalibration
      }
      else {
        this.isNeedCalibration = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointPoseRequest
    // Serialize message field [jointNo]
    bufferOffset = _serializer.int32(obj.jointNo, buffer, bufferOffset);
    // Serialize message field [isNeedCalibration]
    bufferOffset = _serializer.bool(obj.isNeedCalibration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointPoseRequest
    let len;
    let data = new JointPoseRequest(null);
    // Deserialize message field [jointNo]
    data.jointNo = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isNeedCalibration]
    data.isNeedCalibration = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/JointPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc2b83dff0d8c2989a330d0bc0d4f7e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32  jointNo
    bool isNeedCalibration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointPoseRequest(null);
    if (msg.jointNo !== undefined) {
      resolved.jointNo = msg.jointNo;
    }
    else {
      resolved.jointNo = 0
    }

    if (msg.isNeedCalibration !== undefined) {
      resolved.isNeedCalibration = msg.isNeedCalibration;
    }
    else {
      resolved.isNeedCalibration = false
    }

    return resolved;
    }
};

class JointPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reference_frame = null;
      this.success = null;
      this.transform = null;
    }
    else {
      if (initObj.hasOwnProperty('reference_frame')) {
        this.reference_frame = initObj.reference_frame
      }
      else {
        this.reference_frame = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointPoseResponse
    // Serialize message field [reference_frame]
    bufferOffset = _serializer.string(obj.reference_frame, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointPoseResponse
    let len;
    let data = new JointPoseResponse(null);
    // Deserialize message field [reference_frame]
    data.reference_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reference_frame);
    return length + 61;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iserve_srvs/JointPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bc5c59ee74eb3d525b9bdfef7053220';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string reference_frame
    bool success
    geometry_msgs/Transform transform
    
    
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointPoseResponse(null);
    if (msg.reference_frame !== undefined) {
      resolved.reference_frame = msg.reference_frame;
    }
    else {
      resolved.reference_frame = ''
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    return resolved;
    }
};

module.exports = {
  Request: JointPoseRequest,
  Response: JointPoseResponse,
  md5sum() { return '949fbcedff97c69401016e18f534c384'; },
  datatype() { return 'iserve_srvs/JointPose'; }
};
