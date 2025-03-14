## Description
This resource aims to reproduce the functioning of FiveM's "gameEventTriggered" on RedM.

## Installation
- Provide a path to a dataview file in the fxmanifest.lua
- Ensure the resource

## Usage:
```lua
AddEventHandler("gameEventTriggered", function(name, args)
	print("gameEventTriggered", name, json.encode(args))
end)
```