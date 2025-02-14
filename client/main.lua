Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		for eventTypeIndex = 0, 4 do
			local eventsNumber = GetNumberOfEvents(eventTypeIndex)
			if (eventsNumber > 0) then
				for eventIndex = 0, eventsNumber - 1 do
					local eventHash = GetEventAtIndex(eventTypeIndex, eventIndex)
					local eventTable = Config.Events[eventHash]
					if (eventTable) then
						local eventDataStruct = DataView.ArrayBuffer(eventTable.size * 8)
						for i = 0, eventTable.size - 1 do
							eventDataStruct:SetInt32(i * 8, 0)
						end

						if (Citizen.InvokeNative(0x57EC5FA4D4D6AFCA, eventTypeIndex, eventIndex, eventDataStruct:Buffer(), eventTable.size)) then -- GET_EVENT_DATA
							local eventArgs = {}
							for i = 0, eventTable.size - 1 do
								table.insert(eventArgs, eventDataStruct:GetInt32(i * 8))
							end

							TriggerEvent("gameEventTriggered", eventTable.name, eventArgs)
						end
					else
						print("Event", eventHash, "not found")
					end
				end
			end
		end
	end
end)