extends Node2D
@onready var label=$Label
@onready var less_button=$HBoxContainer/less
@onready var more_button=$HBoxContainer/more
@onready var right_button=$HBoxContainer/right
var max_number=100
var min_number=0
var num;
func _ready() -> void:
	num=randi_range(min_number,max_number)
func _process(_delta: float) -> void:
	label.text="你想的是不是:"+var_to_str(num)
	



func _on_less_button_up() -> void:
	min_number=num+1
	num=(min_number+max_number)/2

	  


func _on_more_button_up() -> void:
	max_number=num-1
	num=(min_number+max_number)/2


func _on_right_button_up() -> void:
	get_tree().change_scene_to_file("res://right.tscn")
