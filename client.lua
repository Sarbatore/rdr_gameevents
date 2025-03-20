local Events = {
    [`EVENT_NETWORK_DAMAGE_ENTITY`] = {
        name = "NetworkDamageEntity",
        size = 36,
    },
    [`EVENT_NETWORK_PLAYER_MISSED_SHOT`] = {
        name = "NetworkPlayerMissedShot",
        size = 9,
    },
    [`EVENT_NETWORK_SCRIPT_EVENT`] = {
        name = "NetworkScriptEvent",
        size = 4,
    },
    [`EVENT_NETWORK_VEHICLE_UNDRIVABLE`] = {
        name = "NetworkVehicleUndriveable",
        size = 1,
    },
    
    [`EVENT_SCENARIO_ADD_PED`] = {
        name = "ScenarioAddPed",
        size = 2,
    },
    [`EVENT_SCENARIO_REMOVE_PED`] = {
        name = "ScenarioRemovePed",
        size = 2,
    },
    [`EVENT_SCENARIO_DESTROY_PROP`] = {
        name = "ScenarioDestroyProp",
        size = 2,
    },
    [`EVENT_ENTITY_DAMAGED`] = {
        name = "EntityDamaged",
        size = 9,
    },
    [`EVENT_SHOT_FIRED_BULLET_IMPACT`] = {
        name = "ShotFiredBulletImpact",
        size = 1,
    },
    [`EVENT_SHOT_FIRED_WHIZZED_BY`] = {
        name = "ShotFiredWhizzedBy",
        size = 1,
    },
    [`EVENT_PED_CREATED`] = {
        name = "PedCreated",
        size = 1,
    },
    [`EVENT_PED_DESTROYED`] = {
        name = "PedDestroyed",
        size = 1,
    },
    [`EVENT_CHALLENGE_GOAL_UPDATE`] = {
        name = "ChallengeGoalUpdate",
        size = 1,
    },
    [`EVENT_ENTITY_DESTROYED`] = {
        name = "EntityDestroyed",
        size = 10,
    },
    [`EVENT_PED_HAT_KNOCKED_OFF`] = {
        name = "PedHatKnockedOff",
        size = 2,
    },
    [`EVENT_LOOT`] = {
        name = "Loot",
        size = 36,
    },
    [`EVENT_LOOT_COMPLETE`] = {
        name = "LootComplete",
        size = 3,
    },
    [`EVENT_CARRIABLE_UPDATE_CARRY_STATE`] = {
        name = "CarriableUpdateCarryState",
        size = 5,
    },
    [`EVENT_PICKUP_CARRIABLE`] = {
        name = "PickupCarriable",
        size = 4,
    },
    [`EVENT_PLAYER_HAT_EQUIPPED`] = {
        name = "PlayerHatEquipped",
        size = 10,
    },
    [`EVENT_HITCH_ANIMAL`] = {
        name = "HitchAnimal",
        size = 4,
    },
    [`EVENT_PED_WHISTLE`] = {
        name = "PedWhistle",
        size = 2,
    },
    [`EVENT_CALCULATE_LOOT`] = {
        name = "CalculateLoot",
        size = 26,
    },
    [`EVENT_MISS_INTENDED_TARGET`] = {
        name = "MissIntendedTarget",
        size = 3,
    },
    [`EVENT_STAT_VALUE_CHANGED`] = {
        name = "StatValueChanged",
        size = 2,
    },
    [`EVENT_NETWORK_PED_HAT_SHOT_OFF`] = {
        name = "NetworkPedHatShotOff",
        size = 3,
    },
    [`EVENT_CRIME_CONFIRMED`] = {
        name = "CrimeConfirmed",
        size = 3,
    },
    [`EVENT_NETWORK_BULLET_IMPACTED_MULTIPLE_PEDS`] = {
        name = "NetworkBulletImpactedMultiplePeds",
        size = 4,
    },
    [`EVENT_ENTITY_EXPLOSION`] = {
        name = "EntityExplosion",
        size = 6,
    },
    [`EVENT_PLAYER_PROMPT_TRIGGERED`] = {
        name = "PlayerPromptTriggered",
        size = 10,
    },
    [`EVENT_ITEM_PROMPT_INFO_REQUEST`] = {
        name = "ItemPromptInfoRequest",
        size = 2,
    },
    [`EVENT_PLAYER_ESCALATED_PED`] = {
        name = "PlayerEscalatedPed",
        size = 2,
    },
    [`EVENT_PLAYER_HAT_KNOCKED_OFF`] = {
        name = "PlayerHatKnockedOff",
        size = 5,
    },
    [`EVENT_RAN_OVER_PED`] = {
        name = "RanOverPed",
        size = 2,
    },
    [`EVENT_PED_ANIMAL_INTERACTION`] = {
        name = "PedAnimalInteraction",
        size = 3,
    },
    [`EVENT_PLACE_CARRIABLE_ONTO_PARENT`] = {
        name = "PlaceCarriableOntoParent",
        size = 6,
    },
    [`EVENT_NETWORK_LASSO_ATTACH`] = {
        name = "NetworkLassoAttach",
        size = 2,
    },
    [`EVENT_ENTITY_HOGTIED`] = {
        name = "EntityHogtied",
        size = 3,
    },
    [`EVENT_NETWORK_HOGTIE_END`] = {
        name = "NetworkHogtieEnd",
        size = 2,
    },
    [`EVENT_VEHICLE_DESTROYED`] = {
		name = "VehicleDestroyed",
		size = 1,
	},
	[`EVENT_VEHICLE_CREATED`] = {
		name = "VehicleCreated",
		size = 1,
	},
    [`EVENT_ENTITY_BROKEN`] = {
		name = "EntityBroken",
		size = 1,
	},
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		for eventTypeIndex = 0, 1 do
			local eventsNumber = GetNumberOfEvents(eventTypeIndex)
			if (eventsNumber > 0) then
				for eventIndex = 0, eventsNumber - 1 do
					local eventHash = GetEventAtIndex(eventTypeIndex, eventIndex)
					local eventTable = Events[eventHash]
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
						--print("Event", eventHash, "not found")
					end
				end
			end
		end
	end
end)