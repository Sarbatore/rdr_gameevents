-- Overwrite print function to enable debug prints based on config
local _print = print
local function print(...)
    if Config.Debug then
        _print(...)
    end
end

CreateThread(function()
	while true do
		for eventType = 0, 4 do
			local numberOfEvents = GetNumberOfEvents(eventType)
			if (numberOfEvents > 0) then
				for eventIndex = 0, numberOfEvents - 1 do
					local eventHash = GetEventAtIndex(eventType, eventIndex)
                    if (not Config.DisabledEvents[eventHash]) then
                        local event = Config.Events[eventHash]
                        if (event) then
                            local eventSize = event.size or 64
                            local eventData = DataView.ArrayBuffer(eventSize*8)
                            if (Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, eventType, eventIndex, eventData:Buffer(), eventSize)) then -- GET_EVENT_DATA
                                local eventArgs = {}
                                for i = 0, eventSize - 1 do
                                    local argType = event.args and event.args[i] or "int32"
                                    local arg = nil
                                    if (argType == "int32") then
                                        arg = eventData:GetInt32(i*8)
                                    elseif (argType == "float32") then
                                        arg = eventData:GetFloat32(i*8)
                                    elseif (argType == "boolean") then
                                        arg = eventData:GetInt32(i*8) == 1
                                    end
                                    table.insert(eventArgs, arg)
                                end

                                TriggerEvent("gameEventTriggered", event.name, eventArgs)
                                print(("gameEventTriggered(%s, %s)"):format(event.name, json.encode(eventArgs)))
                            else
                                print(("Failed to handle event %s"):format(event.name))
                            end
                        else
                            print(("Event with hash %d not handled"):format(eventHash))
                        end
                    end
				end
			end
		end
        Wait(0)
	end
end)
