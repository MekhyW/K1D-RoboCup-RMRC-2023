const Config = {
  ROSBRIDGE_SERVER_IP: "127.0.0.1",
  ROSBRIDGE_SERVER_PORT: "9090",
  RECONNECTION_TIMER: 3000,

  TOPIC_AUTONOMOUS: "/autonomous_mode",
  TOPIC_DEXTERITY: "/dexterity_mode",
  TOPIC_QRCODE: "/qr_detection",
  TOPIC_HAZMAT: "/hazmat_detection",
  TOPIC_MOTION: "/motion_detection",
  TOPIC_CAMERA: "/webcam",
  TOPIC_TEMPERATURE: "/thermalcam",
  TOPIC_CO2: "/gas",

  MSGTYPE_AUTONOMOUS: "std_msgs/Bool",
  MSGTYPE_DEXTERITY: "std_msgs/Bool",
  MSGTYPE_QRCODE: "std_msgs/Bool",
  MSGTYPE_HAZMAT: "std_msgs/Bool",
  MSGTYPE_MOTION: "std_msgs/Bool",
  MSGTYPE_CAMERA: "std_msgs/String",
  MSGTYPE_TEMPERATURE: "std_msgs/String",
  MSGTYPE_CO2: "std_msgs/UInt16",
};

export default Config;
