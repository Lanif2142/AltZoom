function ALTZOOM_ON_INIT(addon, frame)
	frame:ShowWindow(1);
	frame:RunUpdateScript("ALTZOOM_UPDATE", 0, 0, 0, 1);
end

local currentZoom = 100;

local ZOOM_AMOUNT = 10;
local MINIMUM_ZOOM = 50;
local MAXIMUM_ZOOM = 750;


function ALTZOOM_IN()
	currentZoom = currentZoom - ZOOM_AMOUNT;
	ALTZOOM_CLAMP();
	camera.CustomZoom(currentZoom);
end

function ALTZOOM_OUT()
	currentZoom = currentZoom + ZOOM_AMOUNT;
	ALTZOOM_CLAMP();
	camera.CustomZoom(currentZoom);
end

function ALTZOOM_CLAMP()
	if currentZoom < MINIMUM_ZOOM then
		currentZoom = MINIMUM_ZOOM;
	elseif currentZoom > MAXIMUM_ZOOM then
		currentZoom = MAXIMUM_ZOOM;
	end
end

function ALTZOOM_UPDATE(frame)
	if keyboard.IsKeyPressed("LALT") == 1 then
		if keyboard.IsKeyPressed("ADD") == 1 then
			ALTZOOM_IN();
		elseif keyboard.IsKeyPressed("NUMMINUS") == 1 then
			ALTZOOM_OUT();
		elseif keyboard.IsKeyPressed("NUMPAD4") == 1 then
			currentZoom = 250
			camera.CustomZoom(currentZoom);
		elseif keyboard.IsKeyPressed("NUMPAD5") == 1 then
			currentZoom = 300
			camera.CustomZoom(currentZoom);
		elseif keyboard.IsKeyPressed("NUMPAD6") == 1 then
			currentZoom = 350
			camera.CustomZoom(currentZoom);
		elseif keyboard.IsKeyPressed("NUMPAD7") == 1 then
			currentZoom = 400
			camera.CustomZoom(currentZoom);
		elseif keyboard.IsKeyPressed("NUMPAD8") == 1 then
			currentZoom = 450
			camera.CustomZoom(currentZoom);
		elseif keyboard.IsKeyPressed("NUMPAD9") == 1 then
			currentZoom = 500
			camera.CustomZoom(currentZoom);
		end
	end
	return 1;
end
