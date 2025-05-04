extends CharacterBody3D


const SPEED = 3.5
const JUMP_VELOCITY = 4.5
var camera_pan_speed : float = 0.003

var locomotion_blend_path : String = "parameters/blend_position"
@onready var animation_tree: AnimationTree = $AnimationTree
var input_cur : Vector2 = Vector2(0, 0)
var input_acc : float = 0.1

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_right", "ui_left", "ui_down", "ui_up")
	input_cur += (input_dir - input_cur).clamp(Vector2(-input_acc, -input_acc), Vector2(input_acc, input_acc))
	animation_tree.set(locomotion_blend_path, input_cur)
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		# Handle Mouse speed to rotate player
		var mouse_vel = Input.get_last_mouse_velocity()
		var new_rot_y = rotation.y - mouse_vel.x * delta * camera_pan_speed
		var new_rot_x = clampf($CameraPivot.rotation.x + mouse_vel.y * delta * camera_pan_speed, -0.27 * PI/2, 0.8 * PI/2)
		rotation.y = new_rot_y
		$CameraPivot.rotation.x = new_rot_x
		
		if Input.is_action_just_pressed("ui_cancel"):
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	else:
		if Input.is_action_just_pressed("ui_cancel"):
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

	move_and_slide()
