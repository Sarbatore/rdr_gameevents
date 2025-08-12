local Events = {
    [`EVENT_BUCKED_OFF`] = {name = "EventBuckedOff", size = 3},
    [`EVENT_CALCULATE_LOOT`] = {name = "EventCalculateLoot", size = 26},
    [`EVENT_CALM_PED`] = {name = "EventCalmPed", size = 4},
    [`EVENT_CARRIABLE_UPDATE_CARRY_STATE`] = {name = "EventCarriableUpdateCarryState", size = 5},
    [`EVENT_CARRIABLE_PROMPT_INFO_REQUEST`] = {name = "EventCarriablePromptInfoRequest", size = 6},
    [`EVENT_CARRIABLE_VEHICLE_STOW_START`] = {name = "EventCarriableVehicleStowStart", size = 5},
    [`EVENT_CARRIABLE_VEHICLE_STOW_COMPLETE`] = {name = "EventCarriableVehicleStowComplete", size = 3},
    [`EVENT_CHALLENGE_GOAL_COMPLETE`] = {name = "EventChallengeGoalComplete", size = 1},
    [`EVENT_CHALLENGE_GOAL_UPDATE`] = {name = "EventChallengeGoalUpdate", size = 1},
    [`EVENT_CHALLENGE_REWARD`] = {name = "EventChallengeReward", size = 3},
    [`EVENT_CONTAINER_INTERACTION`] = {name = "EventContainerInteraction", size = 4},
    [`EVENT_CRIME_CONFIRMED`] = {name = "EventCrimeConfirmed", size = 3},
    [`EVENT_DAILY_CHALLENGE_STREAK_COMPLETED`] = {name = "EventDailyChallengeStreakCompleted", size = 1},
    [`EVENT_ENTITY_BROKEN`] = {name = "EventEntityBroken", size = 9},
    [`EVENT_ENTITY_DAMAGED`] = {name = "EventEntityDamaged", size = 9},
    [`EVENT_ENTITY_DESTROYED`] = {name = "EventEntityDestroyed", size = 9},
    [`EVENT_ENTITY_DISARMED`] = {name = "EventEntityDisarmed", size = 4},
    [`EVENT_ENTITY_EXPLOSION`] = {name = "EventEntityExplosion", size = 6},
    [`EVENT_ENTITY_HOGTIED`] = {name = "EventEntityHogtied", size = 3},
    [`EVENT_HEADSHOT_BLOCKED_BY_HAT`] = {name = "EventHeadshotBlockedByHat", size = 2},
    [`EVENT_HELP_TEXT_REQUEST`] = {name = "EventHelpTextRequest", size = 4},
    [`EVENT_HITCH_ANIMAL`] = {name = "EventHitchAnimal", size = 4},
    [`EVENT_HOGTIED_ENTITY_PICKED_UP`] = {name = "EventHogtiedEntityPickedUp", size = 2},
    [`EVENT_HORSE_BROKEN`] = {name = "EventHorseBroken", size = 3},
    [`EVENT_IMPENDING_SAMPLE_PROMPT`] = {name = "EventImpendingSamplePrompt", size = 2},
    [`EVENT_INVENTORY_ITEM_PICKED_UP`] = {name = "EventInventoryItemPickedUp", size = 5},
    [`EVENT_INVENTORY_ITEM_REMOVED`] = {name = "EventInventoryItemRemoved", size = 1},
    [`EVENT_ITEM_PROMPT_INFO_REQUEST`] = {name = "EventItemPromptInfoRequest", size = 2},
    [`EVENT_LOOT`] = {name = "EventLoot", size = 36},
    [`EVENT_LOOT_COMPLETE`] = {name = "EventLootComplete", size = 3},
    [`EVENT_LOOT_PLANT_START`] = {name = "EventLootPlantStart", size = 36},
    [`EVENT_LOOT_VALIDATION_FAIL`] = {name = "EventLootValidationFail", size = 2},
    [`EVENT_MISS_INTENDED_TARGET`] = {name = "EventMissIntendedTarget", size = 3},
    [`EVENT_MOUNT_OVERSPURRED`] = {name = "EventMountOverspurred", size = 6},
    [`EVENT_NETWORK_AWARD_CLAIMED`] = {name = "EventNetworkAwardClaimed", size = 12},
    [`EVENT_NETWORK_BOUNTY_REQUEST_COMPLETE`] = {name = "EventNetworkBountyRequestComplete", size = 7},
    [`EVENT_NETWORK_BULLET_IMPACTED_MULTIPLE_PEDS`] = {name = "EventNetworkBulletImpactedMultiplePeds", size = 4},
    [`EVENT_NETWORK_CASHINVENTORY_TRANSACTION`] = {name = "EventNetworkCashInventoryTransaction", size = 6},
    [`EVENT_NETWORK_CREW_CREATION`] = {name = "EventNetworkCrewCreation", size = 10},
    [`EVENT_NETWORK_CREW_DISBANDED`] = {name = "EventNetworkCrewDisbanded", size = 2},
    [`EVENT_NETWORK_CREW_INVITE_RECEIVED`] = {name = "EventNetworkCrewInviteReceived", size = 11},
    [`EVENT_NETWORK_CREW_JOINED`] = {name = "EventNetworkCrewJoined", size = 2},
    [`EVENT_NETWORK_CREW_KICKED`] = {name = "EventNetworkCrewKicked", size = 2},
    [`EVENT_NETWORK_CREW_LEFT`] = {name = "EventNetworkCrewLeft", size = 2},
    [`EVENT_NETWORK_CREW_RANK_CHANGE`] = {name = "EventNetworkCrewRankChange", size = 7},
    [`EVENT_NETWORK_DAMAGE_ENTITY`] = {name = "EventNetworkDamageEntity", size = 32},
    [`EVENT_NETWORK_GANG`] = {name = "EventNetworkGang", size = 18},
    [`EVENT_NETWORK_GANG_WAYPOINT_CHANGED`] = {name = "EventNetworkGangWaypointChanged", size = 3},
    [`EVENT_NETWORK_HOGTIE_BEGIN`] = {name = "EventNetworkHogtieBegin", size = 2},
    [`EVENT_NETWORK_HOGTIE_END`] = {name = "EventNetworkHogtieEnd", size = 2},
    [`EVENT_NETWORK_HUB_UPDATE`] = {name = "EventNetworkHubUpdate", size = 1},
    [`EVENT_NETWORK_INCAPACITATED_ENTITY`] = {name = "EventNetworkIncapacitatedEntity", size = 4},
    [`EVENT_NETWORK_LASSO_ATTACH`] = {name = "EventNetworkLassoAttach", size = 2},
    [`EVENT_NETWORK_LASSO_DETACH`] = {name = "EventNetworkLassoDetach", size = 2},
    [`EVENT_NETWORK_LOOT_CLAIMED`] = {name = "EventNetworkLootClaimed", size = 9},
    [`EVENT_NETWORK_MINIGAME_REQUEST_COMPLETE`] = {name = "EventNetworkMinigameRequestComplete", size = 6},
    [`EVENT_NETWORK_PED_DISARMED`] = {name = "EventNetworkPedDisarmed", size = 3},
    [`EVENT_NETWORK_PED_HAT_SHOT_OFF`] = {name = "EventNetworkPedHatShotOff", size = 3},
    [`EVENT_NETWORK_PERMISSION_CHECK_RESULT`] = {name = "EventNetworkPermissionCheckResult", size = 2},
    [`EVENT_NETWORK_PICKUP_COLLECTION_FAILED`] = {name = "EventNetworkPickupCollectionFailed", size = 3},
    [`EVENT_NETWORK_PICKUP_RESPAWNED`] = {name = "EventNetworkPickupRespawned", size = 2},
    [`EVENT_NETWORK_PLAYER_COLLECTED_PICKUP`] = {name = "EventNetworkPlayerCollectedPickup", size = 8},
    [`EVENT_NETWORK_PLAYER_COLLECTED_PORTABLE_PICKUP`] = {name = "EventNetworkPlayerCollectedPortablePickup", size = 3},
    [`EVENT_NETWORK_PLAYER_DROPPED_PORTABLE_PICKUP`] = {name = "EventNetworkPlayerDroppedPortablePickup", size = 3},
    [`EVENT_NETWORK_PLAYER_JOIN_SCRIPT`] = {name = "EventNetworkPlayerJoinScript", size = 41},
    [`EVENT_NETWORK_PLAYER_LEFT_SCRIPT`] = {name = "EventNetworkPlayerLeftScript", size = 41},
    [`EVENT_NETWORK_PLAYER_JOIN_SESSION`] = {name = "EventNetworkPlayerJoinSession", size = 10},
    [`EVENT_NETWORK_PLAYER_LEFT_SESSION`] = {name = "EventNetworkPlayerLeftSession", size = 10},
    [`EVENT_NETWORK_PLAYER_MISSED_SHOT`] = {name = "EventNetworkPlayerMissedShot", size = 9},
    [`EVENT_NETWORK_POSSE_CREATED`] = {name = "EventNetworkPosseCreated", size = 10},
    [`EVENT_NETWORK_POSSE_DATA_CHANGED`] = {name = "EventNetworkPosseDataChanged", size = 2},
    [`EVENT_NETWORK_POSSE_DISBANDED`] = {name = "EventNetworkPosseDisbanded", size = 2},
    [`EVENT_NETWORK_POSSE_EX_ADMIN_DISBANDED`] = {name = "EventNetworkPosseExAdminDisbanded", size = 9},
    [`EVENT_NETWORK_POSSE_EX_INACTIVE_DISBANDED`] = {name = "EventNetworkPosseExInactiveDisbanded", size = 10},
    [`EVENT_NETWORK_POSSE_JOINED`] = {name = "EventNetworkPosseJoined", size = 2},
    [`EVENT_NETWORK_POSSE_LEADER_SET_ACTIVE`] = {name = "EventNetworkPosseLeaderSetActive", size = 23},
    [`EVENT_NETWORK_POSSE_LEFT`] = {name = "EventNetworkPosseLeft", size = 1},
    [`EVENT_NETWORK_POSSE_MEMBER_DISBANDED`] = {name = "EventNetworkPosseMemberDisbanded", size = 23},
    [`EVENT_NETWORK_POSSE_MEMBER_JOINED`] = {name = "EventNetworkPosseMemberJoined", size = 23},
    [`EVENT_NETWORK_POSSE_MEMBER_KICKED`] = {name = "EventNetworkPosseMemberKicked", size = 23},
    [`EVENT_NETWORK_POSSE_MEMBER_LEFT`] = {name = "EventNetworkPosseMemberLeft", size = 23},
    [`EVENT_NETWORK_POSSE_MEMBER_SET_ACTIVE`] = {name = "EventNetworkPosseMemberSetActive", size = 23},
    [`EVENT_NETWORK_PROJECTILE_ATTACHED`] = {name = "EventNetworkProjectileAttached", size = 6},
    [`EVENT_NETWORK_PROJECTILE_NO_DAMAGE_IMPACT`] = {name = "EventNetworkProjectileNoDamageImpact", size = 2},
    [`EVENT_NETWORK_REVIVED_ENTITY`] = {name = "EventNetworkRevivedEntity", size = 2},
    [`EVENT_NETWORK_SESSION_EVENT`] = {name = "EventNetworkSessionEvent", size = 10},
    [`EVENT_NETWORK_SESSION_MERGE_END`] = {name = "EventNetworkSessionMergeEnd", size = 1},
    [`EVENT_NETWORK_SESSION_MERGE_START`] = {name = "EventNetworkSessionMergeStart", size = 1},
    [`EVENT_NETWORK_VEHICLE_LOOTED`] = {name = "EventNetworkVehicleLooted", size = 3},
    [`EVENT_NETWORK_VEHICLE_UNDRIVABLE`] = {name = "EventNetworkVehicleUndrivable", size = 3},
    [`EVENT_OBJECT_INTERACTION`] = {name = "EventObjectInteraction", size = 10},
    [`EVENT_PED_ANIMAL_INTERACTION`] = {name = "EventPedAnimalInteraction", size = 3},
    [`EVENT_PED_CREATED`] = {name = "EventPedCreated", size = 1},
    [`EVENT_PED_DESTROYED`] = {name = "EventPedDestroyed", size = 1},
    [`EVENT_PED_HAT_KNOCKED_OFF`] = {name = "EventPedHatKnockedOff", size = 2},
    [`EVENT_PED_WHISTLE`] = {name = "EventPedWhistle", size = 2},
    [`EVENT_PICKUP_CARRIABLE`] = {name = "EventPickupCarriable", size = 4},
    [`EVENT_PLACE_CARRIABLE_ONTO_PARENT`] = {name = "EventPlaceCarriableOntoParent", size = 6},
    [`EVENT_PLAYER_COLLECTED_AMBIENT_PICKUP`] = {name = "EventPlayerCollectedAmbientPickup", size = 8},
    [`EVENT_PLAYER_ESCALATED_PED`] = {name = "EventPlayerEscalatedPed", size = 2},
    [`EVENT_PLAYER_HAT_EQUIPPED`] = {name = "EventPlayerHatEquipped", size = 10},
    [`EVENT_PLAYER_HAT_KNOCKED_OFF`] = {name = "EventPlayerHatKnockedOff", size = 5},
    [`EVENT_PLAYER_HORSE_AGITATED_BY_ANIMAL`] = {name = "EventPlayerHorseAgitatedByAnimal", size = 4},
    [`EVENT_PLAYER_MOUNT_WILD_HORSE`] = {name = "EventPlayerMountWildHorse", size = 1},
    [`EVENT_PLAYER_PROMPT_TRIGGERED`] = {name = "EventPlayerPromptTriggered", size = 10},
    [`EVENT_RAN_OVER_PED`] = {name = "EventRanOverPed", size = 2},
    [`EVENT_REVIVE_ENTITY`] = {name = "EventReviveEntity", size = 3},
    [`EVENT_SCENARIO_ADD_PED`] = {name = "EventScenarioAddPed", size = 2},
    [`EVENT_SCENARIO_DESTROY_PROP`] = {name = "EventScenarioDestroyProp", size = 2},
    [`EVENT_SCENARIO_REMOVE_PED`] = {name = "EventScenarioRemovePed", size = 2},
    [`EVENT_SHOCKING_ITEM_STOLEN`] = {name = "EventShockingItemStolen", size = 3},
    [`EVENT_SHOT_FIRED_BULLET_IMPACT`] = {name = "EventShotFiredBulletImpact", size = 1},
    [`EVENT_SHOT_FIRED_WHIZZED_BY`] = {name = "EventShotFiredWhizzedBy", size = 1},
    [`EVENT_STAT_VALUE_CHANGED`] = {name = "EventStatValueChanged", size = 2},
    [`EVENT_TRIGGERED_ANIMAL_WRITHE`] = {name = "EventTriggeredAnimalWrithe", size = 2},
    [`EVENT_UI_ITEM_INSPECT_ACTIONED`] = {name = "EventUiItemInspectActioned", size = 6},
    [`EVENT_UI_QUICK_ITEM_USED`] = {name = "EventUiQuickItemUsed", size = 6},
    [`EVENT_VEHICLE_CREATED`] = {name = "EventVehicleCreated", size = 1},
    [`EVENT_VEHICLE_DESTROYED`] = {name = "EventVehicleDestroyed", size = 1},
}

CreateThread(function()
	while true do
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

                            --print(eventTable.name, json.encode(eventArgs))

							TriggerEvent("gameEventTriggered", eventTable.name, eventArgs)
                        else
                            print("Invalid event data for", eventTable.name, "with hash", eventHash)
						end
					else
						print("Event", eventHash, "not registered")
					end
				end
			end
		end
        Wait(0)
	end
end)