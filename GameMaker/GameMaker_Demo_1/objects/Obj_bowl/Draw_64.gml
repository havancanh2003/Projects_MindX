/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 320CD8D2
/// @DnDArgument : "font" "fon_score"
/// @DnDSaveInfo : "font" "fon_score"
draw_set_font(fon_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 4A2E6E9D
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Điểm: ""
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;draw_text(10, 10, string("Điểm: ") + string(__dnd_score));