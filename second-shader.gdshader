shader_type spatial;

uniform sampler2D noise;
uniform sampler2D normal_map;
uniform float height_scale = 0.5;

float mesh_to_texture_coords(float mesh_coord) {
  return (mesh_coord / 2.0) + 0.5;
}

void vertex() {
	float height = texture(
    noise,
    VERTEX.xz / 2.0 * 0.5
  ).x;
  VERTEX.y += height * height_scale;
}

void fragment() {
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
