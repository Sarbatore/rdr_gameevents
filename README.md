# Description
This resource aims to reproduce the functioning of FiveM's "gameEventTriggered" on RedM.

# Links
- [Github](https://github.com/Sarbatore/rdr_gameevents)

# Installation
- `ensure rdr_gameevents`

# Example of use
```lua
AddEventHandler("gameEventTriggered", function(name, args)
	if (name == "CEventEntityDamaged") then
		local victim = args[1]
		local attacker = args[2]
		print(("%d damaged entity %d"):format(attacker, victim))
	end
end)
```

# Documentation

| Event | Args |
|---|---|
| CEventBuckedOff | ```{a1: any, a2: any, a3: any}``` |
| CEventCalculateLoot | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any, a24: any, a25: any, a26: any}``` |
| CEventCalmPed | ```{a1: any, a2: any, a3: any, a4: any}``` |
| CEventCarriablePromptInfoRequest | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any}``` |
| CEventCarriableUpdateCarryState | ```{a1: carriedEntity, a2: instigatorPed, a3: carrierPed, a4: any, a5: isDropped}``` |
| CEventCarriableVehicleStowComplete | ```{a1: any, a2: any, a3: any}``` |
| CEventCarriableVehicleStowStart | ```{a1: any, a2: any, a3: any, a4: any, a5: any}``` |
| CEventChallengeGoalComplete | ```{a1: any}``` |
| CEventChallengeGoalUpdate | ```{a1: any}``` |
| CEventChallengeReward | ```{a1: any, a2: any, a3: any}``` |
| CEventContainerInteraction | ```{a1: any, a2: any, a3: any, a4: any}``` |
| CEventCrimeConfirmed | ```{a1: any, a2: any, a3: any}``` |
| CEventDailyChallengeStreakCompleted | ```{a1: any}``` |
| CEventEntityBroken | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any}``` |
| CEventEntityDamaged | ```{a1: destroyedEntity, a2: destroyerEntity, a3: weaponHash, a4: ammoHash, a5: any, a6: any, a7: any, a8: any, a9: any}``` |
| CEventEntityDestroyed | ```{a1: destroyedEntity, a2: destroyerEntity, a3: weaponHash, a4: ammoHash, a5: any, a6: any, a7: any, a8: any, a9: any}``` |
| CEventEntityDisarmed | ```{a1: any, a2: any, a3: any, a4: any}``` |
| CEventEntityExplosion | ```{a1: instigator, a2: any, a3: any, a4: x, a5: y, a6: z}``` |
| CEventEntityHogtied | ```{a1: any, a2: any, a3: any}``` |
| CEventHeadshotBlockedByHat | ```{a1: any, a2: any}``` |
| CEventHelpTextRequest | ```{a1: any, a2: any, a3: any, a4: any}``` |
| CEventHitchAnimal | ```{a1: any, a2: any, a3: any, a4: any}``` |
| CEventHogtiedEntityPickedUp | ```{a1: any, a2: any}``` |
| CEventHorseBroken | ```{a1: any, a2: any, a3: any}``` |
| CEventImpendingSamplePrompt | ```{a1: any, a2: any}``` |
| CEventInventoryItemPickedUp | ```{a1: any, a2: any, a3: any, a4: any, a5: any}``` |
| CEventInventoryItemRemoved | ```{a1: any}``` |
| CEventItemPromptInfoRequest | ```{a1: any, a2: any}``` |
| CEventLoot | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any, a24: any, a25: any, a26: looterPed, a27: lootedEntity, a28: any, a29: any, a30: any, a31: any, a32: any, a33: any, a34: any, a35: any, a36: any}``` |
| CEventLootComplete | ```{a1: looterPed, a2: lootedEntity, a3: wasSuccessfull}``` |
| CEventLootPlantStart | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any, a24: any, a25: any, a26: any, a27: any, a28: any, a29: any, a30: any, a31: any, a32: any, a33: any, a34: any, a35: any, a36: any}``` |
| CEventLootValidationFail | ```{a1: any, a2: any}``` |
| CEventMissIntendedTarget | ```{a1: shooterPed, a2: targetEntity, a3: weaponHash}``` |
| CEventMountOverspurred | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any}``` |
| CEventNetworkAwardClaimed | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any}``` |
| CEventNetworkBountyRequestComplete | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any}``` |
| CEventNetworkBulletImpactedMultiplePeds | ```{a1: instigatorPed, a2: any, a3: any, a4: any}``` |
| CEventNetworkCashInventoryTransaction | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any}``` |
| CEventNetworkCrewCreation | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventNetworkCrewDisbanded | ```{a1: any, a2: any}``` |
| CEventNetworkCrewInviteReceived | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any}``` |
| CEventNetworkCrewJoined | ```{a1: any, a2: any}``` |
| CEventNetworkCrewKicked | ```{a1: any, a2: any}``` |
| CEventNetworkCrewLeft | ```{a1: any, a2: any}``` |
| CEventNetworkCrewRankChange | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any}``` |
| CEventNetworkDamageEntity | ```{a1: victimEntity, a2: attackerPed, a3: any, a4: any, a5: any, a6: weaponHash, a7: ammoHash, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any, a24: any, a25: any, a26: any, a27: any, a28: any, a29: any, a30: any, a31: any, a32: any}``` |
| CEventNetworkGang | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any}``` |
| CEventNetworkGangWaypointChanged | ```{a1: any, a2: any, a3: any}``` |
| CEventNetworkHogtieBegin | ```{a1: any, a2: any}``` |
| CEventNetworkHogtieEnd | ```{a1: any, a2: any}``` |
| CEventNetworkHubUpdate | ```{a1: any}``` |
| CEventNetworkIncapacitatedEntity | ```{a1: any, a2: any, a3: any, a4: any}``` |
| CEventNetworkLassoAttach | ```{a1: any, a2: any}``` |
| CEventNetworkLassoDetach | ```{a1: any, a2: any}``` |
| CEventNetworkLootClaimed | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any}``` |
| CEventNetworkMinigameRequestComplete | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any}``` |
| CEventNetworkPedDisarmed | ```{a1: any, a2: any, a3: any}``` |
| CEventNetworkPedHatShotOff | ```{a1: any, a2: any, a3: any}``` |
| CEventNetworkPermissionCheckResult | ```{a1: any, a2: any}``` |
| CEventNetworkPickupCollectionFailed | ```{a1: any, a2: any, a3: any}``` |
| CEventNetworkPickupRespawned | ```{a1: any, a2: any}``` |
| CEventNetworkPlayerCollectedPickup | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any}``` |
| CEventNetworkPlayerCollectedPortablePickup | ```{a1: any, a2: any, a3: any}``` |
| CEventNetworkPlayerDroppedPortablePickup | ```{a1: any, a2: any, a3: any}``` |
| CEventNetworkPlayerJoinScript | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any, a24: any, a25: any, a26: any, a27: any, a28: any, a29: any, a30: any, a31: any, a32: any, a33: any, a34: any, a35: any, a36: any, a37: any, a38: any, a39: any, a40: any, a41: any}``` |
| CEventNetworkPlayerJoinSession | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventNetworkPlayerLeftScript | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any, a24: any, a25: any, a26: any, a27: any, a28: any, a29: any, a30: any, a31: any, a32: any, a33: any, a34: any, a35: any, a36: any, a37: any, a38: any, a39: any, a40: any, a41: any}``` |
| CEventNetworkPlayerLeftSession | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventNetworkPlayerMissedShot | ```{a1: shooterPed, a2: weaponHash, a3: hasMissedShot, a4: any, a5: any, a6: any, a7: x, a8: y, a9: z}``` |
| CEventNetworkPosseCreated | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventNetworkPosseDataChanged | ```{a1: any, a2: any}``` |
| CEventNetworkPosseDisbanded | ```{a1: any, a2: any}``` |
| CEventNetworkPosseExAdminDisbanded | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any}``` |
| CEventNetworkPosseExInactiveDisbanded | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventNetworkPosseJoined | ```{a1: any, a2: any}``` |
| CEventNetworkPosseLeaderSetActive | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any}``` |
| CEventNetworkPosseLeft | ```{a1: any}``` |
| CEventNetworkPosseMemberDisbanded | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any}``` |
| CEventNetworkPosseMemberJoined | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any}``` |
| CEventNetworkPosseMemberKicked | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any}``` |
| CEventNetworkPosseMemberLeft | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any}``` |
| CEventNetworkPosseMemberSetActive | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any, a11: any, a12: any, a13: any, a14: any, a15: any, a16: any, a17: any, a18: any, a19: any, a20: any, a21: any, a22: any, a23: any}``` |
| CEventNetworkProjectileAttached | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any}``` |
| CEventNetworkProjectileNoDamageImpact | ```{a1: any, a2: any}``` |
| CEventNetworkRevivedEntity | ```{a1: any, a2: any}``` |
| CEventNetworkSessionEvent | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventNetworkSessionMergeEnd | ```{a1: any}``` |
| CEventNetworkSessionMergeStart | ```{a1: any}``` |
| CEventNetworkVehicleLooted | ```{a1: any, a2: any, a3: any}``` |
| CEventNetworkVehicleUndrivable | ```{a1: any, a2: any, a3: any}``` |
| CEventObjectInteraction | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventPedAnimalInteraction | ```{a1: any, a2: any, a3: any}``` |
| CEventPedCreated | ```{a1: ped}``` |
| CEventPedDestroyed | ```{a1: ped}``` |
| CEventPedHatKnockedOff | ```{a1: ped, a2: hatObject}``` |
| CEventPedWhistle | ```{a1: any, a2: any}``` |
| CEventPickupCarriable | ```{a1: carrierPed, a2: carriedEntity, a3: any, a4: any}``` |
| CEventPlaceCarriableOntoParent | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any}``` |
| CEventPlayerCollectedAmbientPickup | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any}``` |
| CEventPlayerEscalatedPed | ```{a1: any, a2: any}``` |
| CEventPlayerHatEquipped | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventPlayerHatKnockedOff | ```{a1: any, a2: any, a3: any, a4: any, a5: any}``` |
| CEventPlayerHorseAgitatedByAnimal | ```{a1: any, a2: any, a3: any, a4: any}``` |
| CEventPlayerMountWildHorse | ```{a1: any}``` |
| CEventPlayerPromptTriggered | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any, a7: any, a8: any, a9: any, a10: any}``` |
| CEventRanOverPed | ```{a1: instigatorPed, a2: targetPed}``` |
| CEventReviveEntity | ```{a1: any, a2: any, a3: any}``` |
| CEventScenarioAddPed | ```{a1: any, a2: any}``` |
| CEventScenarioDestroyProp | ```{a1: any, a2: any}``` |
| CEventScenarioRemovePed | ```{a1: any, a2: any}``` |
| CEventShockingItemStolen | ```{a1: any, a2: any, a3: any}``` |
| CEventShotFiredBulletImpact | ```{a1: entity}``` |
| CEventShotFiredWhizzedBy | ```{a1: entity}``` |
| CEventStatValueChanged | ```{a1: any, a2: any}``` |
| CEventTriggeredAnimalWrithe | ```{a1: any, a2: any}``` |
| CEventUiItemInspectActioned | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any}``` |
| CEventUiQuickItemUsed | ```{a1: any, a2: any, a3: any, a4: any, a5: any, a6: any}``` |
| CEventVehicleCreated | ```{a1: vehicle}``` |
| CEventVehicleDestroyed | ```{a1: vehicle}``` |