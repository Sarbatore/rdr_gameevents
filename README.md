## Description
This resource aims to reproduce the functioning of FiveM's "gameEventTriggered" on RedM.

## Usage:
```lua
AddEventHandler("gameEventTriggered", function(name, args)
	print("gameEventTriggered", name, json.encode(args))
end)
```