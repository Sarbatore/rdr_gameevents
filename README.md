## Description
This resource aims to reproduce the functioning of FiveM's "gameEventTriggered" on RedM. You can handle RedM events and UI Events.

## Links
- [Github](https://github.com/Sarbatore/rdr_gameevents)

## Installation
- Provide a path to a dataview file in the fxmanifest.lua
- Ensure the resource

## Usage:
```lua
AddEventHandler("gameEventTriggered", function(name, args)
	print("gameEventTriggered", name, json.encode(args))
end)
```

Use UI events
```lua
AddEventHandler("gameEventTriggered", function(name, args)
	if (name ~= "UiappMessage") then return end
	local uiapp = args[1]
	if (uiapp ~= `hud_quick_select`) then return end

end)
```