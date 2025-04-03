extends Node2D
@onready var label=$Label
@onready var less_button=$HBoxContainer/less
@onready var more_button=$HBoxContainer/more
@onready var right_button=$HBoxContainer/right
var max_number=100
var min_number=0
var num;
func _ready() -> void:
	num=randi_range(0,100)
func _process(_delta: float) -> void:
	label.text="你猜的是不是:"+var_to_str(num)
	



func _on_less_button_down() -> void:
	min_number=num
	num=randi_range(min_number,max_number)

	  


func _on_more_button_down() -> void:
	max_number=num
	num=randi_range(min_number,max_number)


func _on_right_button_down() -> void:
	get_tree().change_scene_to_file("res://right.tscn")
