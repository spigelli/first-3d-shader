shader_type spatial;

uniform float hill_frequency = 4.0;

void vertex() {
	VERTEX.y += cos(VERTEX.z * hill_frequency) * sin(VERTEX.x * hill_frequency);
}

void fragment() {
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
