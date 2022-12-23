extends RigidBody

onready var prompt = $CameraRig/Prompt

export var rolling_force = 40
export var jumping_impulse = 750
export var rolling_jump_force = 40

var nbJump = 0


func _ready():
	$CameraRig.set_as_toplevel(true)
	
	


func _physics_process(delta):
	prompt.text = "Jumps: " + str(nbJump)
	
	var old_camera_pos = $CameraRig.global_transform.origin
	var ball_pos = global_transform.origin
	var new_camera_pos = lerp(old_camera_pos, ball_pos, 0.01)
	$CameraRig.global_transform.origin = new_camera_pos
	
	if Input.is_action_just_pressed("forward"):
		nbJump += 1
		linear_velocity.z -= rolling_jump_force*delta
		apply_central_impulse(Vector3.UP*jumping_impulse)
	elif Input.is_action_just_pressed("back"):
		nbJump += 1
		linear_velocity.z += rolling_jump_force*delta
		apply_central_impulse(Vector3.UP*jumping_impulse) 
	elif Input.is_action_just_pressed("left"):
		nbJump += 1
		linear_velocity.x -= rolling_jump_force*delta
		apply_central_impulse(Vector3.UP*jumping_impulse)  
	elif Input.is_action_just_pressed("right"):
		nbJump += 1
		linear_velocity.x += rolling_jump_force*delta
		apply_central_impulse(Vector3.UP*jumping_impulse)    
		
	#elif Input.is_action_just_pressed("jump"):
	#	nbJump += 1
	#	print(nbJump)
	#	linear_velocity.z -= rolling_jump_force*delta
	#	apply_central_impulse(Vector3.UP*jumping_impulse) 
