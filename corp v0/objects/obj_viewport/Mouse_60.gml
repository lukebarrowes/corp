if (zoomIn > -5)
{
	camera_set_view_size(camera, cameraW - (cameraW / 10), cameraH - (cameraH / 10));
	zoomIn--;
}