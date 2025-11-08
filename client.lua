CreateThread(function()
	while true do
		for eventType = 0, 1 do
			local eventsNumber = GetNumberOfEvents(eventType)
			if (eventsNumber > 0) then
				for eventIndex = 0, eventsNumber - 1 do
					local eventHash = GetEventAtIndex(eventType, eventIndex)
                    if (not Config.DisabledEvents[eventHash]) then
                        local event = Config.Events[eventHash]
                        if (event) then
                            local eventData = DataView.ArrayBuffer(event.size*8)
                            if (Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, eventType, eventIndex, eventData:Buffer(), event.size)) then -- GET_EVENT_DATA
                                local eventArgs = {}
                                for i = 0, event.size - 1 do
                                    table.insert(eventArgs, eventData:GetInt32(i*8))
                                end

                                TriggerEvent("gameEventTriggered", event.name, eventArgs)
                            else
                                if (Config.Debug) then
                                    print(("Failed to get data for event %s"):format(event.name))
                                end
                            end
                        else
                            if (Config.Debug) then
                                print(("Event with hash %d not handled"):format(eventHash))
                            end
                        end
                    end
				end
			end
		end
        Wait(0)
	end
end)
