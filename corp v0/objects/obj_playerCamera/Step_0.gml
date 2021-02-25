if (keyboard_check(ord("D")) && cameraX < room_width)
	camera_set_view_pos(camera, (cameraX + cameraSpeed), cameraY);
	
if (keyboard_check(ord("A")) && cameraX > 0)
	camera_set_view_pos(camera, cameraX - cameraSpeed, cameraY);
	
if (keyboard_check(ord("W")) && cameraY > 0)
	camera_set_view_pos(camera, cameraX, cameraY - cameraSpeed);
	
if (keyboard_check(ord("S")) && cameraY < room_height)
	camera_set_view_pos(camera, cameraX, cameraY + cameraSpeed);
	
cameraSpeed = round((cameraW / 1000) * baseSpeed);