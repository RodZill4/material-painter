extends "res://addons/property_panel/property_panel.gd"

"""
The `PropertyPanel` that exposes the properties of the selected `TextureLayer`
"""

const TextureLayer = preload("res://texture_layers/texture_layer.gd")

func load_texture_layer(texture_layer : TextureLayer) -> void:
	set_properties(texture_layer.get_properties())
	load_values(texture_layer.properties)