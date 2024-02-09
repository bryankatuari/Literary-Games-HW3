extends AnimatedSprite2D

# Center point of the orbit
var center: Vector2 = Vector2(0, 0) # Adjust this to your desired center
# Radii of the ellipse (semi-major axis and semi-minor axis)
var radius_x: float = 750.0 # Horizontal radius
var radius_y: float = 400.0 # Vertical radius
# Orbit speed
var speed: float = 1.0
# Internal angle to track the position along the ellipse
var angle: float = 0.0

func _process(delta: float) -> void:
	# Increment the angle based on the speed and delta time
	angle += speed * delta
	# Calculate the new position
	var x: float = center.x + radius_x * cos(angle)
	var y: float = center.y + radius_y * sin(angle)
	# Update the position of the node
	position = Vector2(x, y)

func _ready():
	play()
	pass
