/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 343D2270
/// @DnDArgument : "xpos" "irandom(900)+10"
/// @DnDArgument : "ypos" "-70"
/// @DnDArgument : "objectid" "Obj_ball"
/// @DnDSaveInfo : "objectid" "Obj_ball"
instance_create_layer(irandom(900)+10, -70, "Instances", Obj_ball);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4EE85E0D
/// @DnDArgument : "steps" "90"
alarm_set(0, 90);