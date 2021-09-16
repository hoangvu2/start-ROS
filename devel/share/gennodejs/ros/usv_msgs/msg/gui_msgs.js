// Auto-generated. Do not edit!

// (in-package usv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gui_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setyaw = null;
      this.BT1 = null;
      this.Bspline_px = null;
    }
    else {
      if (initObj.hasOwnProperty('setyaw')) {
        this.setyaw = initObj.setyaw
      }
      else {
        this.setyaw = 0;
      }
      if (initObj.hasOwnProperty('BT1')) {
        this.BT1 = initObj.BT1
      }
      else {
        this.BT1 = 0;
      }
      if (initObj.hasOwnProperty('Bspline_px')) {
        this.Bspline_px = initObj.Bspline_px
      }
      else {
        this.Bspline_px = new Array(15).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gui_msgs
    // Serialize message field [setyaw]
    bufferOffset = _serializer.int32(obj.setyaw, buffer, bufferOffset);
    // Serialize message field [BT1]
    bufferOffset = _serializer.uint16(obj.BT1, buffer, bufferOffset);
    // Check that the constant length array field [Bspline_px] has the right length
    if (obj.Bspline_px.length !== 15) {
      throw new Error('Unable to serialize array field Bspline_px - length must be 15')
    }
    // Serialize message field [Bspline_px]
    bufferOffset = _arraySerializer.float64(obj.Bspline_px, buffer, bufferOffset, 15);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gui_msgs
    let len;
    let data = new gui_msgs(null);
    // Deserialize message field [setyaw]
    data.setyaw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [BT1]
    data.BT1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Bspline_px]
    data.Bspline_px = _arrayDeserializer.float64(buffer, bufferOffset, 15)
    return data;
  }

  static getMessageSize(object) {
    return 126;
  }

  static datatype() {
    // Returns string type for a message object
    return 'usv_msgs/gui_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e85378122f7e5778d97d9e6e96c6698a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #huong dan msg trong ros
    	int32 setyaw			
    	uint16 BT1			    
    	float64[15] Bspline_px
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gui_msgs(null);
    if (msg.setyaw !== undefined) {
      resolved.setyaw = msg.setyaw;
    }
    else {
      resolved.setyaw = 0
    }

    if (msg.BT1 !== undefined) {
      resolved.BT1 = msg.BT1;
    }
    else {
      resolved.BT1 = 0
    }

    if (msg.Bspline_px !== undefined) {
      resolved.Bspline_px = msg.Bspline_px;
    }
    else {
      resolved.Bspline_px = new Array(15).fill(0)
    }

    return resolved;
    }
};

module.exports = gui_msgs;
