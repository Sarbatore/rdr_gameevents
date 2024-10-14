local bindedEventGroups = {}
local bindedEvents = {}
local resourceEvents = {}

Citizen.CreateThread(function()
	local associativeEventData = {}
	for _, event in ipairs(eventData) do
		associativeEventData[joaat(event.eventName)] = event
	end

  	while true do
      	Citizen.Wait(0)

      	for eventTypeIndex = 0, 4 do
			local numEvents = GetNumberOfEvents(eventTypeIndex)
			if (numEvents > 0) then
				for eventIndex = 0, numEvents - 1 do
					local eventHash = GetEventAtIndex(eventTypeIndex, eventIndex)
					local event = associativeEventData[eventHash]
					if (event) then
						if (bindedEvents[eventHash]) then
							local eventDataStruct = DataView.ArrayBuffer(event.eventDataSize * 8)
							for i = 0, event.eventDataSize - 1 do
								eventDataStruct:SetInt32(i * 8, 0)
							end

							local doesDataExists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, eventTypeIndex, eventIndex, eventDataStruct:Buffer(), event.eventDataSize) -- GET_EVENT_DATA
							if (doesDataExists) then
								local tbl = {}
								
								for i = 0, event.eventDataSize - 1 do
									table.insert(tbl, eventDataStruct:GetInt32(i * 8))
								end

								for resource, callbacks in pairs(bindedEvents[eventHash]) do
									print("Event", event.eventName, "fired for", resource)
									for _, callback in ipairs(callbacks) do
										callback(table.unpack(tbl))
									end
								end
							else
								print("Event data does not exist for event", event.eventName)
							end
						end
					end
				end
			end
		end
	end
end)

AddEventHandler("onResourceStop", function(resourceName)
	if (resourceName == GetCurrentResourceName()) then return end

	for eventHash, resourceEvents in pairs(bindedEvents) do
		for resource, callbacks in pairs(resourceEvents) do
			if (resource == resourceName) then
				bindedEvents[eventHash][resource] = nil
				print("Unbinded", resourceName, "from event", eventHash)
				goto continue
			end
		end
		::continue::
	end
end)

exports("BindEventHandler", function(resourceName, eventName, callback)
	print("Binding", resourceName, "to event", eventName)

	local eventHash = joaat(eventName)

	bindedEvents[eventHash] = bindedEvents[eventHash] or {}
	bindedEvents[eventHash][resourceName] = bindedEvents[eventHash][resourceName] or {}
	table.insert(bindedEvents[eventHash][resourceName], callback)
end)