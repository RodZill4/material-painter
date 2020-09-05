extends Viewport

"""
A `Viewport` to generate a normal map from a grayscale heightmap
"""

const TextureUtils = preload("res://utils/texture_utils.gd")

onready var height_map_texture_sprite : Sprite = $HeightMapTextureSprite

func get_normal_map(height_map : ImageTexture) -> ImageTexture:
	size = height_map.get_size()
	height_map_texture_sprite.texture = height_map
	
	render_target_update_mode = Viewport.UPDATE_ONCE
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	
	height_map_texture_sprite.texture = null
	
	return TextureUtils.viewport_to_image(get_texture())