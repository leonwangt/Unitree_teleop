
"use strict";

let DeliveryRobotTask = require('./DeliveryRobotTask.js')
let DragTeachSwitch = require('./DragTeachSwitch.js')
let GripperTask = require('./GripperTask.js')
let DragTeach = require('./DragTeach.js')
let PlanSwitch = require('./PlanSwitch.js')
let ImpedanceTask = require('./ImpedanceTask.js')
let CommandTask = require('./CommandTask.js')
let JointPose = require('./JointPose.js')
let TestCommand = require('./TestCommand.js')
let Enable_cv_anmo = require('./Enable_cv_anmo.js')
let SetInt = require('./SetInt.js')

module.exports = {
  DeliveryRobotTask: DeliveryRobotTask,
  DragTeachSwitch: DragTeachSwitch,
  GripperTask: GripperTask,
  DragTeach: DragTeach,
  PlanSwitch: PlanSwitch,
  ImpedanceTask: ImpedanceTask,
  CommandTask: CommandTask,
  JointPose: JointPose,
  TestCommand: TestCommand,
  Enable_cv_anmo: Enable_cv_anmo,
  SetInt: SetInt,
};
