local function pressFn(mods, key)
	if key == nil then
		key = mods
		mods = {}
	end

	return function() hs.eventtap.keyStroke(mods, key, 1000) end
end

local function remap(mods, key, pressFn)
	hs.hotkey.bind(mods, key, pressFn, nil, pressFn)	
end

remap({'ctrl', 'rightshift'}, 'h', pressFn('left'))
remap({'ctrl', 'rightshift'}, 'j', pressFn('down'))
remap({'ctrl', 'rightshift'}, 'k', pressFn('up'))
remap({'ctrl', 'rightshift'}, 'l', pressFn('right'))
remap({'ctrl', 'rightshift'}, 'i', pressFn('return'))
