Config = {}

Config.Debug = true -- Enable debug prints

Config.DisabledEvents = { -- Some events can be very spammy, so you can disable them here for CPU optimization.
    [`EVENT_CHALLENGE_GOAL_UPDATE`] = true,
}

Config.Events = {
    [`EVENT_BUCKED_OFF`] = {name = "CEventBuckedOff", size = 3},
    [`EVENT_CALCULATE_LOOT`] = {name = "CEventCalculateLoot", size = 26},
    [`EVENT_CALM_PED`] = {
        name = "CEventCalmPed",
        size = 4,
        args = {
            [3] = "boolean",
        }
    },
    [`EVENT_CARRIABLE_UPDATE_CARRY_STATE`] = {
        name = "CEventCarriableUpdateCarryState",
        size = 5,
        args = {
            [4] = "boolean",
        }
    },
    [`EVENT_CARRIABLE_PROMPT_INFO_REQUEST`] = {name = "CEventCarriablePromptInfoRequest", size = 6},
    [`EVENT_CARRIABLE_VEHICLE_STOW_START`] = {name = "CEventCarriableVehicleStowStart", size = 5},
    [`EVENT_CARRIABLE_VEHICLE_STOW_COMPLETE`] = {
        name = "CEventCarriableVehicleStowComplete",
        size = 3,
        args = {
            [2] = "boolean"
        }
    },
    [`EVENT_CHALLENGE_GOAL_COMPLETE`] = {name = "CEventChallengeGoalComplete", size = 1},
    [`EVENT_CHALLENGE_GOAL_UPDATE`] = {name = "CEventChallengeGoalUpdate", size = 1},
    [`EVENT_CHALLENGE_REWARD`] = {name = "CEventChallengeReward", size = 3},
    [`EVENT_CONTAINER_INTERACTION`] = {
        name = "CEventContainerInteraction",
        size = 4,
        args = {
            [3] = "boolean"
        }
    },
    [`EVENT_CRIME_CONFIRMED`] = {name = "CEventCrimeConfirmed", size = 3},
    [`EVENT_DAILY_CHALLENGE_STREAK_COMPLETED`] = {name = "CEventDailyChallengeStreakCompleted", size = 1},
    [`EVENT_ENTITY_BROKEN`] = {name = "CEventEntityBroken", size = 9},
    [`EVENT_ENTITY_DAMAGED`] = {
        name = "CEventEntityDamaged",
        size = 9
    },
    [`EVENT_ENTITY_DESTROYED`] = {
        name = "CEventEntityDestroyed",
        size = 9
    },
    [`EVENT_ENTITY_DISARMED`] = {name = "CEventEntityDisarmed", size = 4},
    [`EVENT_ENTITY_EXPLOSION`] = {
        name = "CEventEntityExplosion",
        size = 6,
        args = {
            [3] = "float32",
            [4] = "float32",
            [5] = "float32"
        }
    },
    [`EVENT_ENTITY_HOGTIED`] = {name = "CEventEntityHogtied", size = 3},
    [`EVENT_HEADSHOT_BLOCKED_BY_HAT`] = {name = "CEventHeadshotBlockedByHat", size = 2},
    [`EVENT_HELP_TEXT_REQUEST`] = {name = "CEventHelpTextRequest", size = 4},
    [`EVENT_HITCH_ANIMAL`] = {
        name = "CEventHitchAnimal",
        size = 4,
        args = {
            [2] = "boolean"
        }
    },
    [`EVENT_HOGTIED_ENTITY_PICKED_UP`] = {name = "CEventHogtiedEntityPickedUp", size = 2},
    [`EVENT_HORSE_BROKEN`] = {name = "CEventHorseBroken", size = 3},
    [`EVENT_IMPENDING_SAMPLE_PROMPT`] = {name = "CEventImpendingSamplePrompt", size = 2},
    [`EVENT_INVENTORY_ITEM_PICKED_UP`] = {
        name = "CEventInventoryItemPickedUp",
        size = 5,
        args = {
            [2] = "boolean",
            [3] = "boolean"
        }
    },
    [`EVENT_INVENTORY_ITEM_REMOVED`] = {name = "CEventInventoryItemRemoved", size = 1},
    [`EVENT_ITEM_PROMPT_INFO_REQUEST`] = {name = "CEventItemPromptInfoRequest", size = 2},
    [`EVENT_LOOT`] = {
        name = "CEventLoot",
        size = 36
    },
    [`EVENT_LOOT_COMPLETE`] = {
        name = "CEventLootComplete",
        size = 3,
        args = {
            [2] = "boolean",
        }
    },
    [`EVENT_LOOT_PLANT_START`] = {name = "CEventLootPlantStart", size = 36},
    [`EVENT_LOOT_VALIDATION_FAIL`] = {name = "CEventLootValidationFail", size = 2},
    [`EVENT_MISS_INTENDED_TARGET`] = {
        name = "CEventMissIntendedTarget",
        size = 3
    },
    [`EVENT_MOUNT_OVERSPURRED`] = {name = "CEventMountOverspurred", size = 6},
    [`EVENT_NETWORK_AWARD_CLAIMED`] = {name = "CEventNetworkAwardClaimed", size = 12},
    [`EVENT_NETWORK_BOUNTY_REQUEST_COMPLETE`] = {name = "CEventNetworkBountyRequestComplete", size = 7},
    [`EVENT_NETWORK_BULLET_IMPACTED_MULTIPLE_PEDS`] = {name = "CEventNetworkBulletImpactedMultiplePeds", size = 4},
    [`EVENT_NETWORK_CASHINVENTORY_TRANSACTION`] = {name = "CEventNetworkCashInventoryTransaction", size = 6},
    [`EVENT_NETWORK_CREW_CREATION`] = {
        name = "CEventNetworkCrewCreation",
        size = 10,
        args = {
            [0] = "boolean",
        }
    },
    [`EVENT_NETWORK_CREW_DISBANDED`] = {name = "CEventNetworkCrewDisbanded", size = 2},
    [`EVENT_NETWORK_CREW_INVITE_RECEIVED`] = {name = "CEventNetworkCrewInviteReceived", size = 11},
    [`EVENT_NETWORK_CREW_JOINED`] = {name = "CEventNetworkCrewJoined", size = 2},
    [`EVENT_NETWORK_CREW_KICKED`] = {name = "CEventNetworkCrewKicked", size = 2},
    [`EVENT_NETWORK_CREW_LEFT`] = {name = "CEventNetworkCrewLeft", size = 2},
    [`EVENT_NETWORK_CREW_RANK_CHANGE`] = {name = "CEventNetworkCrewRankChange", size = 7},
    [`EVENT_NETWORK_DAMAGE_ENTITY`] = {
        name = "CEventNetworkDamageEntity",
        size = 32,
        args = {
            
        }
    },
    [`EVENT_NETWORK_GANG`] = {name = "CEventNetworkGang", size = 18},
    [`EVENT_NETWORK_GANG_WAYPOINT_CHANGED`] = {name = "CEventNetworkGangWaypointChanged", size = 3},
    [`EVENT_NETWORK_HOGTIE_BEGIN`] = {name = "CEventNetworkHogtieBegin", size = 2},
    [`EVENT_NETWORK_HOGTIE_END`] = {name = "CEventNetworkHogtieEnd", size = 2},
    [`EVENT_NETWORK_HUB_UPDATE`] = {name = "CEventNetworkHubUpdate", size = 1},
    [`EVENT_NETWORK_INCAPACITATED_ENTITY`] = {name = "CEventNetworkIncapacitatedEntity", size = 4},
    [`EVENT_NETWORK_LASSO_ATTACH`] = {name = "CEventNetworkLassoAttach", size = 3},
    [`EVENT_NETWORK_LASSO_DETACH`] = {name = "CEventNetworkLassoDetach", size = 2},
    [`EVENT_NETWORK_LOOT_CLAIMED`] = {name = "CEventNetworkLootClaimed", size = 9},
    [`EVENT_NETWORK_MINIGAME_REQUEST_COMPLETE`] = {
        name = "CEventNetworkMinigameRequestComplete",
        size = 6,
        args = {
            [4] = "boolean"
        }
    },
    [`EVENT_NETWORK_PED_DISARMED`] = {name = "CEventNetworkPedDisarmed", size = 3},
    [`EVENT_NETWORK_PED_HAT_SHOT_OFF`] = {name = "CEventNetworkPedHatShotOff", size = 3},
    [`EVENT_NETWORK_PERMISSION_CHECK_RESULT`] = {name = "CEventNetworkPermissionCheckResult", size = 2},
    [`EVENT_NETWORK_PICKUP_COLLECTION_FAILED`] = {name = "CEventNetworkPickupCollectionFailed", size = 3},
    [`EVENT_NETWORK_PICKUP_RESPAWNED`] = {name = "CEventNetworkPickupRespawned", size = 2},
    [`EVENT_NETWORK_PLAYER_COLLECTED_PICKUP`] = {name = "CEventNetworkPlayerCollectedPickup", size = 8},
    [`EVENT_NETWORK_PLAYER_COLLECTED_PORTABLE_PICKUP`] = {name = "CEventNetworkPlayerCollectedPortablePickup", size = 3},
    [`EVENT_NETWORK_PLAYER_DROPPED_PORTABLE_PICKUP`] = {name = "CEventNetworkPlayerDroppedPortablePickup", size = 3},
    [`EVENT_NETWORK_PLAYER_JOIN_SCRIPT`] = {name = "CEventNetworkPlayerJoinScript", size = 41},
    [`EVENT_NETWORK_PLAYER_LEFT_SCRIPT`] = {name = "CEventNetworkPlayerLeftScript", size = 41},
    [`EVENT_NETWORK_PLAYER_JOIN_SESSION`] = {name = "CEventNetworkPlayerJoinSession", size = 10},
    [`EVENT_NETWORK_PLAYER_LEFT_SESSION`] = {name = "CEventNetworkPlayerLeftSession", size = 10},
    [`EVENT_NETWORK_PLAYER_MISSED_SHOT`] = {
        name = "CEventNetworkPlayerMissedShot",
        size = 9,
        args = {
            [2] = "boolean",
            [6] = "float32",
            [7] = "float32",
            [8] = "float32",
        }
    },
    [`EVENT_NETWORK_POSSE_CREATED`] = {
        name = "CEventNetworkPosseCreated",
        size = 10,
        args = {
            [0] = "boolean"
        }
    },
    [`EVENT_NETWORK_POSSE_DATA_CHANGED`] = {name = "CEventNetworkPosseDataChanged", size = 2},
    [`EVENT_NETWORK_POSSE_DISBANDED`] = {
        name = "CEventNetworkPosseDisbanded",
        size = 2,
        args = {
            [0] = "boolean"
        }
    },
    [`EVENT_NETWORK_POSSE_EX_ADMIN_DISBANDED`] = {name = "CEventNetworkPosseExAdminDisbanded", size = 9},
    [`EVENT_NETWORK_POSSE_EX_INACTIVE_DISBANDED`] = {name = "CEventNetworkPosseExInactiveDisbanded", size = 10},
    [`EVENT_NETWORK_POSSE_JOINED`] = {
        name = "CEventNetworkPosseJoined",
        size = 2,
        args = {
            [0] = "boolean"
        }
    },
    [`EVENT_NETWORK_POSSE_LEADER_SET_ACTIVE`] = {name = "CEventNetworkPosseLeaderSetActive", size = 23},
    [`EVENT_NETWORK_POSSE_LEFT`] = {name = "CEventNetworkPosseLeft", size = 1},
    [`EVENT_NETWORK_POSSE_MEMBER_DISBANDED`] = {name = "CEventNetworkPosseMemberDisbanded", size = 23},
    [`EVENT_NETWORK_POSSE_MEMBER_JOINED`] = {name = "CEventNetworkPosseMemberJoined", size = 23},
    [`EVENT_NETWORK_POSSE_MEMBER_KICKED`] = {name = "CEventNetworkPosseMemberKicked", size = 23},
    [`EVENT_NETWORK_POSSE_MEMBER_LEFT`] = {name = "CEventNetworkPosseMemberLeft", size = 23},
    [`EVENT_NETWORK_POSSE_MEMBER_SET_ACTIVE`] = {name = "CEventNetworkPosseMemberSetActive", size = 23},
    [`EVENT_NETWORK_PROJECTILE_ATTACHED`] = {
        name = "CEventNetworkProjectileAttached",
        size = 6,
        args = {
            [2] = "float32",
            [3] = "float32",
            [4] = "float32"
        }
    },
    [`EVENT_NETWORK_PROJECTILE_NO_DAMAGE_IMPACT`] = {name = "CEventNetworkProjectileNoDamageImpact", size = 2},
    [`EVENT_NETWORK_REVIVED_ENTITY`] = {name = "CEventNetworkRevivedEntity", size = 2},
    [`EVENT_NETWORK_SESSION_EVENT`] = {name = "CEventNetworkSessionEvent", size = 10},
    [`EVENT_NETWORK_SESSION_MERGE_END`] = {name = "CEventNetworkSessionMergeEnd", size = 1},
    [`EVENT_NETWORK_SESSION_MERGE_START`] = {name = "CEventNetworkSessionMergeStart", size = 1},
    [`EVENT_NETWORK_VEHICLE_LOOTED`] = {name = "CEventNetworkVehicleLooted", size = 3},
    [`EVENT_NETWORK_VEHICLE_UNDRIVABLE`] = {name = "CEventNetworkVehicleUndrivable", size = 3},
    [`EVENT_OBJECT_INTERACTION`] = {name = "CEventObjectInteraction", size = 10},
    [`EVENT_PED_ANIMAL_INTERACTION`] = {name = "CEventPedAnimalInteraction", size = 3},
    [`EVENT_PED_CREATED`] = {name = "CEventPedCreated", size = 1},
    [`EVENT_PED_DESTROYED`] = {name = "CEventPedDestroyed", size = 1},
    [`EVENT_PED_HAT_KNOCKED_OFF`] = {
        name = "CEventPedHatKnockedOff",
        size = 2
    },
    [`EVENT_PED_WHISTLE`] = {name = "CEventPedWhistle", size = 2},
    [`EVENT_PICKUP_CARRIABLE`] = {
        name = "CEventPickupCarriable",
        size = 4
    },
    [`EVENT_PLACE_CARRIABLE_ONTO_PARENT`] = {
        name = "CEventPlaceCarriableOntoParent",
        size = 6,
        args = {
            [4] = "boolean"
        }
    },
    [`EVENT_PLAYER_COLLECTED_AMBIENT_PICKUP`] = {name = "CEventPlayerCollectedAmbientPickup", size = 8},
    [`EVENT_PLAYER_ESCALATED_PED`] = {name = "CEventPlayerEscalatedPed", size = 2},
    [`EVENT_PLAYER_HAT_EQUIPPED`] = {name = "CEventPlayerHatEquipped", size = 10},
    [`EVENT_PLAYER_HAT_KNOCKED_OFF`] = {name = "CEventPlayerHatKnockedOff", size = 5},
    [`EVENT_PLAYER_HORSE_AGITATED_BY_ANIMAL`] = {name = "CEventPlayerHorseAgitatedByAnimal", size = 4},
    [`EVENT_PLAYER_MOUNT_WILD_HORSE`] = {name = "CEventPlayerMountWildHorse", size = 1},
    [`EVENT_PLAYER_PROMPT_TRIGGERED`] = {name = "CEventPlayerPromptTriggered", size = 10},
    [`EVENT_RAN_OVER_PED`] = {
        name = "CEventRanOverPed",
        size = 2
    },
    [`EVENT_REVIVE_ENTITY`] = {name = "CEventReviveEntity", size = 3},
    [`EVENT_SCENARIO_ADD_PED`] = {name = "CEventScenarioAddPed", size = 2},
    [`EVENT_SCENARIO_DESTROY_PROP`] = {name = "CEventScenarioDestroyProp", size = 2},
    [`EVENT_SCENARIO_REMOVE_PED`] = {name = "CEventScenarioRemovePed", size = 2},
    [`EVENT_SHOCKING_ITEM_STOLEN`] = {name = "CEventShockingItemStolen", size = 3},
    [`EVENT_SHOT_FIRED_BULLET_IMPACT`] = {
        name = "CEventShotFiredBulletImpact",
        size = 1
    },
    [`EVENT_SHOT_FIRED_WHIZZED_BY`] = {
        name = "CEventShotFiredWhizzedBy",
        size = 1
    },
    [`EVENT_STAT_VALUE_CHANGED`] = {name = "CEventStatValueChanged", size = 2},
    [`EVENT_TRIGGERED_ANIMAL_WRITHE`] = {name = "CEventTriggeredAnimalWrithe", size = 2},
    [`EVENT_UI_ITEM_INSPECT_ACTIONED`] = {name = "CEventUiItemInspectActioned", size = 6},
    [`EVENT_UI_QUICK_ITEM_USED`] = {name = "CEventUiQuickItemUsed", size = 6},
    [`EVENT_VEHICLE_CREATED`] = {name = "CEventVehicleCreated", size = 1},
    [`EVENT_VEHICLE_DESTROYED`] = {name = "CEventVehicleDestroyed", size = 1},
    [`EVENT_ACQUAINTANCE_PED_DISLIKE`] = {
        name = "CEventAcquaintancePedDislike"
    },
    [`EVENT_ACQUAINTANCE_PED_HATE`] = {
        name = "CEventAcquaintancePedHate"
    },
    [`EVENT_ACQUAINTANCE_PED_LIKE`] = {
        name = "CEventAcquaintancePedLike"
    },
    [`EVENT_ACQUAINTANCE_PED_RESPECT`] = {
        name = "CEventAcquaintancePedRespect"
    },
    [`EVENT_ACQUAINTANCE_PED_WANTED`] = {
        name = "CEventAcquaintancePedWanted"
    },
    [`EVENT_ACQUAINTANCE_PED_DISGUISE`] = {
        name = "CEventAcquaintancePedDisguise"
    },
    [`EVENT_ACQUAINTANCE_PED_DEAD`] = {
        name = "CEventAcquaintancePedDead"
    },
    [`EVENT_ACQUAINTANCE_PED_THIEF`] = {
        name = "CEventAcquaintancePedThief"
    },
    [`EVENT_AMBIENT_THREAT_LEVEL_MAXED`] = {
        name = "CEventAmbientThreatLevelMaxed"
    },
    [`EVENT_ANIMAL_DETECTED_PREY`] = {
        name = "CEventAnimalDetectedPrey"
    },
    [`EVENT_ANIMAL_DETECTED_PREDATOR`] = {
        name = "CEventAnimalDetectedPredator"
    },
    [`EVENT_ANIMAL_DETECTED_THREAT`] = {
        name = "CEventAnimalDetectedThreat"
    },
    [`EVENT_ANIMAL_DETECTED_TRAIN`] = {
        name = "CEventAnimalDetectedTrain"
    },
    [`EVENT_ANIMAL_PROVOKED`] = {
        name = "CEventAnimalProvoked"
    },
    [`EVENT_PLAYER_IN_CLOSE_PROXIMITY_TO_HORSE`] = {
        name = "CEventPlayerInCloseProximityToHorse"
    },
    [`EVENT_COMMUNICATE_EVENT`] = {
        name = "CEventCommunicateEvent"
    },
    [`EVENT_COP_CAR_BEING_STOLEN`] = {
        name = "CEventCopCarBeingStolen"
    },
    [`EVENT_CRIME_REPORTED`] = {
        name = "CEventCrimeReported"
    },
    [`EVENT_DAMAGE`] = {
        name = "CEventDamage"
    },
    [`EVENT_DEAD_PED_FOUND`] = {
        name = "CEventDeadPedFound"
    },
    [`EVENT_DRAFT_ANIMAL_DETACHED_FROM_VEHICLE`] = {
        name = "CEventDraftAnimalDetachedFromVehicle"
    },
    [`EVENT_DRAGGED_OUT_CAR`] = {
        name = "CEventDraggedOutCar"
    },
    [`EVENT_DUMMY_CONVERSION`] = {
        name = "CEventDummyConversion"
    },
    [`EVENT_EXPLOSION`] = {
        name = "CEventExplosion"
    },
    [`EVENT_EXPLOSION_HEARD`] = {
        name = "CEventExplosionHeard"
    },
    [`EVENT_FIRE_NEARBY`] = {
        name = "CEventFireNearby"
    },
    [`EVENT_FOOT_STEP_HEARD`] = {
        name = "CEventFootStepHeard"
    },
    [`EVENT_GET_OUT_OF_WATER`] = {
        name = "CEventGetOutOfWater"
    },
    [`EVENT_GIVE_PED_TASK`] = {
        name = "CEventGivePedTask"
    },
    [`EVENT_GUN_AIMED_AT`] = {
        name = "CEventGunAimedAt"
    },
    [`EVENT_INJURED_CRY_FOR_HELP`] = {
        name = "CEventInjuredCryForHelp"
    },
    [`EVENT_INJURED_RIDER`] = {
        name = "CEventInjuredRider"
    },
    [`EVENT_INJURED_DRIVER`] = {
        name = "CEventInjuredDriver"
    },
    [`EVENT_INJURED_OWNER`] = {
        name = "CEventInjuredOwner"
    },
    [`EVENT_CRIME_CRY_FOR_HELP`] = {
        name = "CEventCrimeCryForHelp"
    },
    [`EVENT_IN_AIR`] = {
        name = "CEventInAir"
    },
    [`EVENT_IN_WATER`] = {
        name = "CEventInWater"
    },
    [`EVENT_INCAPACITATED`] = {
        name = "CEventIncapacitated"
    },
    [`EVENT_KNOCKEDOUT`] = {
        name = "CEventKnockedout"
    },
    [`EVENT_LASSO_HIT`] = {
        name = "CEventLassoHit"
    },
    [`EVENT_LEADER_ENTERED_CAR_AS_DRIVER`] = {
        name = "CEventLeaderEnteredCarAsDriver"
    },
    [`EVENT_LEADER_ENTERED_COVER`] = {
        name = "CEventLeaderEnteredCover"
    },
    [`EVENT_LEADER_EXITED_CAR_AS_DRIVER`] = {
        name = "CEventLeaderExitedCarAsDriver"
    },
    [`EVENT_LEADER_HOLSTERED_WEAPON`] = {
        name = "CEventLeaderHolsteredWeapon"
    },
    [`EVENT_LEADER_LEFT_COVER`] = {
        name = "CEventLeaderLeftCover"
    },
    [`EVENT_LEADER_UNHOLSTERED_WEAPON`] = {
        name = "CEventLeaderUnholsteredWeapon"
    },
    [`EVENT_MELEE_ACTION`] = {
        name = "CEventMeleeAction"
    },
    [`EVENT_MOUNTED_COLLISION`] = {
        name = "CEventMountedCollision"
    },
    [`EVENT_MUST_LEAVE_BOAT`] = {
        name = "CEventMustLeaveBoat"
    },
    [`EVENT_NEW_TASK`] = {
        name = "CEventNewTask"
    },
    [`EVENT_NONE`] = {
        name = "CEventNone"
    },
    [`EVENT_OBJECT_COLLISION`] = {
        name = "CEventObjectCollision"
    },
    [`EVENT_ON_FIRE`] = {
        name = "CEventOnFire"
    },
    [`EVENT_OPEN_DOOR`] = {
        name = "CEventOpenDoor"
    },
    [`EVENT_SHOVE_PED`] = {
        name = "CEventShovePed"
    },
    [`EVENT_VEHICLE_WAITING_ON_PED_TO_MOVE_AWAY`] = {
        name = "CEventVehicleWaitingOnPedToMoveAway"
    },
    [`EVENT_PED_COLLISION_WITH_PED`] = {
        name = "CEventPedCollisionWithPed"
    },
    [`EVENT_PED_COLLISION_WITH_PLAYER`] = {
        name = "CEventPedCollisionWithPlayer"
    },
    [`EVENT_PED_ENTERED_MY_VEHICLE`] = {
        name = "CEventPedEnteredMyVehicle"
    },
    [`EVENT_PED_JACKING_MY_VEHICLE`] = {
        name = "CEventPedJackingMyVehicle"
    },
    [`EVENT_PLAYER_COLLISION_WITH_PED`] = {
        name = "CEventPlayerCollisionWithPed"
    },
    [`EVENT_PLAYER_APPROACHED`] = {
        name = "CEventPlayerApproached"
    },
    [`EVENT_PLAYER_ON_ROOFTOP`] = {
        name = "CEventPlayerOnRooftop"
    },
    [`EVENT_POTENTIAL_BE_WALKED_INTO`] = {
        name = "CEventPotentialBeWalkedInto"
    },
    [`EVENT_POTENTIAL_BLAST`] = {
        name = "CEventPotentialBlast"
    },
    [`EVENT_POTENTIAL_GET_RUN_OVER`] = {
        name = "CEventPotentialGetRunOver"
    },
    [`EVENT_POTENTIAL_WALK_INTO_FIRE`] = {
        name = "CEventPotentialWalkIntoFire"
    },
    [`EVENT_POTENTIAL_WALK_INTO_OBJECT`] = {
        name = "CEventPotentialWalkIntoObject"
    },
    [`EVENT_POTENTIAL_WALK_INTO_VEHICLE`] = {
        name = "CEventPotentialWalkIntoVehicle"
    },
    [`EVENT_PROVIDING_COVER`] = {
        name = "CEventProvidingCover"
    },
    [`EVENT_PULLED_FROM_MOUNT`] = {
        name = "CEventPulledFromMount"
    },
    [`EVENT_RADIO_TARGET_POSITION`] = {
        name = "CEventRadioTargetPosition"
    },
    [`EVENT_RESPONDED_TO_THREAT`] = {
        name = "CEventRespondedToThreat"
    },
    [`EVENT_INCOMING_THREAT`] = {
        name = "CEventIncomingThreat"
    },
    [`EVENT_REVIVED`] = {
        name = "CEventRevived"
    },
    [`EVENT_SCRIPT_COMMAND`] = {
        name = "CEventScriptCommand"
    },
    [`EVENT_LASSO_WHIZZED_BY`] = {
        name = "CEventLassoWhizzedBy"
    },
    [`EVENT_SHOT_FIRED`] = {
        name = "CEventShotFired"
    },
    [`EVENT_CRIME_WITNESSED`] = {
        name = "CEventCrimeWitnessed"
    },
    [`EVENT_POTENTIAL_CRIME`] = {
        name = "CEventPotentialCrime"
    },
    [`EVENT_POTENTIAL_THREAT_APPROACHING`] = {
        name = "CEventPotentialThreatApproaching"
    },
    [`EVENT_ARMED_PED_APPROACHING`] = {
        name = "CEventArmedPedApproaching"
    },
    [`EVENT_SHOT_FIRED_BASE`] = {
        name = "CEventShotFiredBase"
    },
    [`EVENT_FRIENDLY_AIMED_AT`] = {
        name = "CEventFriendlyAimedAt"
    },
    [`EVENT_SHOUT_TARGET_POSITION`] = {
        name = "CEventShoutTargetPosition"
    },
    [`EVENT_STUCK_IN_AIR`] = {
        name = "CEventStuckInAir"
    },
    [`EVENT_SUSPICIOUS_ACTIVITY`] = {
        name = "CEventSuspiciousActivity"
    },
    [`EVENT_UNIDENTIFIED_PED`] = {
        name = "CEventUnidentifiedPed"
    },
    [`EVENT_VEHICLE_COLLISION`] = {
        name = "CEventVehicleCollision"
    },
    [`EVENT_VEHICLE_DAMAGE_WEAPON`] = {
        name = "CEventVehicleDamageWeapon"
    },
    [`EVENT_VEHICLE_ON_FIRE`] = {
        name = "CEventVehicleOnFire"
    },
    [`EVENT_WHISTLING_HEARD`] = {
        name = "CEventWhistlingHeard"
    },
    [`EVENT_DISTURBANCE`] = {
        name = "CEventDisturbance"
    },
    [`EVENT_WITHIN_GUN_COMBAT_AREA`] = {
        name = "CEventWithinGunCombatArea"
    },
    [`EVENT_WITHIN_LAW_RESPONSE_AREA`] = {
        name = "CEventWithinLawResponseArea"
    },
    [`EVENT_PLAYER_UNABLE_TO_ENTER_VEHICLE`] = {
        name = "CEventPlayerUnableToEnterVehicle"
    },
    [`EVENT_PED_SEEN_DEAD_PED`] = {
        name = "CEventPedSeenDeadPed"
    },
    [`EVENT_PLAYER_DEATH`] = {
        name = "CEventPlayerDeath"
    },
    [`EVENT_SHOT_FIRED_WHIZZED_BY_ENTITY`] = {
        name = "CEventShotFiredWhizzedByEntity"
    },
    [`EVENT_PED_RAN_OVER_SCRIPT`] = {
        name = "CEventPedRanOverScript"
    },
    [`EVENT_CUT_FREE`] = {
        name = "CEventCutFree"
    },
    [`EVENT_HOGTIED`] = {
        name = "CEventHogtied"
    },
    [`EVENT_HORSE_STARTED_BREAKING`] = {
        name = "CEventHorseStartedBreaking"
    },
    [`EVENT_BEING_LOOTED`] = {
        name = "CEventBeingLooted"
    },
    [`EVENT_NETWORK_SCRIPT_EVENT`] = {
        name = "CEventNetworkScriptEvent"
    },
    [`EVENT_NETWORK_NETWORK_BAIL`] = {
        name = "CEventNetworkNetworkBail"
    },
    [`EVENT_TEXT_MESSAGE_RECEIVED`] = {
        name = "CEventTextMessageReceived"
    },
    [`EVENT_NETWORK_PED_LEFT_BEHIND`] = {
        name = "CEventNetworkPedLeftBehind"
    },
    [`EVENT_NETWORK_EMAIL_RECEIVED`] = {
        name = "CEventNetworkEmailReceived"
    },
    [`EVENT_UNIT_TEST_SCENARIO_EXIT`] = {
        name = "CEventUnitTestScenarioExit"
    },
    [`EVENT_HEARD_DEAD_PED_COLLISION`] = {
        name = "CEventHeardDeadPedCollision"
    },
    [`EVENT_RECOVER_AFTER_KNOCKOUT`] = {
        name = "CEventRecoverAfterKnockout"
    },
    [`EVENT_PRE_MELEE_KILL`] = {
        name = "CEventPreMeleeKill"
    },
    [`EVENT_SEEN_TERRIFIED_PED`] = {
        name = "CEventSeenTerrifiedPed"
    },
    [`EVENT_MOUNT_DAMAGED_BY_PLAYER`] = {
        name = "CEventMountDamagedByPlayer"
    },
    [`EVENT_NEARBY_AMBIENT_THREAT`] = {
        name = "CEventNearbyAmbientThreat"
    },
    [`EVENT_CALM_HORSE`] = {
        name = "CEventCalmHorse"
    },
    [`EVENT_CALL_FOR_COVER`] = {
        name = "CEventCallForCover"
    },
    [`EVENT_CAR_UNDRIVEABLE`] = {
        name = "CEventCarUndriveable"
    },
    [`EVENT_CLIMB_LADDER_ON_ROUTE`] = {
        name = "CEventClimbLadderOnRoute"
    },
    [`EVENT_CLIMB_NAVMESH_ON_ROUTE`] = {
        name = "CEventClimbNavmeshOnRoute"
    },
    [`EVENT_COMBAT_TAUNT`] = {
        name = "CEventCombatTaunt"
    },
    [`EVENT_FLUSH_TASKS`] = {
        name = "CEventFlushTasks"
    },
    [`EVENT_CLEAR_PED_TASKS`] = {
        name = "CEventClearPedTasks"
    },
    [`EVENT_HITCHING_POST`] = {
        name = "CEventHitchingPost"
    },
    [`EVENT_CATCH_ITEM`] = {
        name = "CEventCatchItem"
    },
    [`EVENT_LOCKED_DOOR`] = {
        name = "CEventLockedDoor"
    },
    [`EVENT_PEER_WINDOW`] = {
        name = "CEventPeerWindow"
    },
    [`EVENT_PED_TO_CHASE`] = {
        name = "CEventPedToChase"
    },
    [`EVENT_PED_TO_FLEE`] = {
        name = "CEventPedToFlee"
    },
    [`EVENT_PERSCHAR_PED_SPAWNED`] = {
        name = "CEventPerscharPedSpawned"
    },
    [`EVENT_PLAYER_ANTAGONIZED_PED`] = {
        name = "CEventPlayerAntagonizedPed"
    },
    [`EVENT_PLAYER_GREETED_PED`] = {
        name = "CEventPlayerGreetedPed"
    },
    [`EVENT_PLAYER_STRIPPED_WEAPON`] = {
        name = "CEventPlayerStrippedWeapon"
    },
    [`EVENT_PLAYER_HAT_REMOVED_AT_SHOP`] = {
        name = "CEventPlayerHatRemovedAtShop"
    },
    [`EVENT_PLAYER_LOCK_ON_TARGET`] = {
        name = "CEventPlayerLockOnTarget"
    },
    [`EVENT_PLAYER_LOOK_FOCUS`] = {
        name = "CEventPlayerLookFocus"
    },
    [`EVENT_PLAYER_SIM_UPDATE`] = {
        name = "CEventPlayerSimUpdate"
    },
    [`EVENT_PLAYER_ROBBED_PED`] = {
        name = "CEventPlayerRobbedPed"
    },
    [`EVENT_REACTION_COMBAT_VICTORY`] = {
        name = "CEventReactionCombatVictory"
    },
    [`EVENT_REACTION_INVESTIGATE_DEAD_PED`] = {
        name = "CEventReactionInvestigateDeadPed"
    },
    [`EVENT_REACTION_INVESTIGATE_THREAT`] = {
        name = "CEventReactionInvestigateThreat"
    },
    [`EVENT_SHOUT_BLOCKING_LOS`] = {
        name = "CEventShoutBlockingLos"
    },
    [`EVENT_STATIC_COUNT_REACHED_MAX`] = {
        name = "CEventStaticCountReachedMax"
    },
    [`EVENT_SWITCH_2_NM_TASK`] = {
        name = "CEventSwitch2NmTask"
    },
    [`EVENT_SCENARIO_FORCE_ACTION`] = {
        name = "CEventScenarioForceAction"
    },
    [`EVENT_TRANSITION_TO_HOGTIED`] = {
        name = "CEventTransitionToHogtied"
    },
    [`EVENT_GET_UP`] = {
        name = "CEventGetUp"
    },
    [`EVENT_MOUNT_REACTION`] = {
        name = "CEventMountReaction"
    },
    [`EVENT_SADDLE_TRANSFER`] = {
        name = "CEventSaddleTransfer"
    },
    [`EVENT_START_CONVERSATION`] = {
        name = "CEventStartConversation"
    },
    [`EVENT_STOP_CONVERSATION`] = {
        name = "CEventStopConversation"
    },
    [`EVENT_PLAYER_DEBUG_TELEPORTED`] = {
        name = "CEventPlayerDebugTeleported"
    },
    [`EVENT_PICKUP_SPAWNED`] = {
        name = "CEventPickupSpawned"
    },
    [`EVENT_DEBUG_SETUP_CUTSCENE_WORLD_STATE`] = {
        name = "CEventDebugSetupCutsceneWorldState"
    },
    [`EVENT_WAIT_FOR_INTERACTION`] = {
        name = "CEventWaitForInteraction"
    },
    [`EVENT_NETWORK_PLAYER_SPAWN`] = {
        name = "CEventNetworkPlayerSpawn"
    },
    [`EVENT_NETWORK_EXTENDED_INVITE`] = {
        name = "CEventNetworkExtendedInvite"
    },
    [`EVENT_NETWORK_PLAYER_SIGNED_OFFLINE`] = {
        name = "CEventNetworkPlayerSignedOffline"
    },
    [`EVENT_NETWORK_PLAYER_SIGNED_ONLINE`] = {
        name = "CEventNetworkPlayerSignedOnline"
    },
    [`EVENT_NETWORK_SIGN_IN_STATE_CHANGED`] = {
        name = "CEventNetworkSignInStateChanged"
    },
    [`EVENT_NETWORK_SIGN_IN_START_NEW_GAME`] = {
        name = "CEventNetworkSignInStartNewGame"
    },
    [`EVENT_NETWORK_NETWORK_ROS_CHANGED`] = {
        name = "CEventNetworkNetworkRosChanged"
    },
    [`EVENT_NETWORK_BAIL_DECISION_PENDING`] = {
        name = "CEventNetworkBailDecisionPending"
    },
    [`EVENT_NETWORK_BAIL_DECISION_MADE`] = {
        name = "CEventNetworkBailDecisionMade"
    },
    [`EVENT_NETWORK_HOST_MIGRATION`] = {
        name = "CEventNetworkHostMigration"
    },
    [`EVENT_NETWORK_IS_VOLUME_EMPTY_RESULT`] = {
        name = "CEventNetworkIsVolumeEmptyResult"
    },
    [`EVENT_NETWORK_CHEAT_TRIGGERED`] = {
        name = "CEventNetworkCheatTriggered"
    },
    [`EVENT_NETWORK_KNOCKEDOUT_ENTITY`] = {
        name = "CEventNetworkKnockedoutEntity"
    },
    [`EVENT_NETWORK_PLAYER_ARREST`] = {
        name = "CEventNetworkPlayerArrest"
    },
    [`EVENT_NETWORK_TIMED_EXPLOSION`] = {
        name = "CEventNetworkTimedExplosion"
    },
    [`EVENT_NETWORK_PRIMARY_CREW_CHANGED`] = {
        name = "CEventNetworkPrimaryCrewChanged"
    },
    [`EVENT_VOICE_SESSION_STARTED`] = {
        name = "CEventVoiceSessionStarted"
    },
    [`EVENT_VOICE_SESSION_ENDED`] = {
        name = "CEventVoiceSessionEnded"
    },
    [`EVENT_VOICE_CONNECTION_REQUESTED`] = {
        name = "CEventVoiceConnectionRequested"
    },
    [`EVENT_VOICE_CONNECTION_RESPONSE`] = {
        name = "CEventVoiceConnectionResponse"
    },
    [`EVENT_VOICE_CONNECTION_TERMINATED`] = {
        name = "CEventVoiceConnectionTerminated"
    },
    [`EVENT_CLOUD_FILE_RESPONSE`] = {
        name = "CEventCloudFileResponse"
    },
    [`EVENT_NETWORK_PRESENCE_STAT_UPDATE`] = {
        name = "CEventNetworkPresenceStatUpdate"
    },
    [`EVENT_NETWORK_INBOX_MSGS_RCVD`] = {
        name = "CEventNetworkInboxMsgsRcvd"
    },
    [`EVENT_NETWORK_ATTEMPT_HOST_MIGRATION`] = {
        name = "CEventNetworkAttemptHostMigration"
    },
    [`EVENT_NETWORK_INCREMENT_STAT`] = {
        name = "CEventNetworkIncrementStat"
    },
    [`EVENT_NETWORK_ROCKSTAR_INVITE_RECEIVED`] = {
        name = "CEventNetworkRockstarInviteReceived"
    },
    [`EVENT_NETWORK_ROCKSTAR_INVITE_REMOVED`] = {
        name = "CEventNetworkRockstarInviteRemoved"
    },
    [`EVENT_NETWORK_PLATFORM_INVITE_ACCEPTED`] = {
        name = "CEventNetworkPlatformInviteAccepted"
    },
    [`EVENT_NETWORK_INVITE_RESULT`] = {
        name = "CEventNetworkInviteResult"
    },
    [`EVENT_NETWORK_INVITE_RESPONSE`] = {
        name = "CEventNetworkInviteResponse"
    },
    [`EVENT_NETWORK_JOIN_REQUEST_TIMED_OUT`] = {
        name = "CEventNetworkJoinRequestTimedOut"
    },
    [`EVENT_NETWORK_INVITE_UNAVAILABLE`] = {
        name = "CEventNetworkInviteUnavailable"
    },
    [`EVENT_NETWORK_CASH_TRANSACTION_LOG`] = {
        name = "CEventNetworkCashTransactionLog"
    },
    [`EVENT_NETWORK_PRESENCE_TRIGGER`] = {
        name = "CEventNetworkPresenceTrigger"
    },
    [`EVENT_NETWORK_PRESENCE_EMAIL`] = {
        name = "CEventNetworkPresenceEmail"
    },
    [`EVENT_NETWORK_SPECTATE_LOCAL`] = {
        name = "CEventNetworkSpectateLocal"
    },
    [`EVENT_NETWORK_CLOUD_EVENT`] = {
        name = "CEventNetworkCloudEvent"
    },
    [`EVENT_NETWORK_CASHINVENTORY_DELETE_CHAR`] = {
        name = "CEventNetworkCashinventoryDeleteChar"
    },
    [`EVENT_NETWORK_APP_LAUNCHED`] = {
        name = "CEventNetworkAppLaunched"
    },
    [`EVENT_NETWORK_ONLINE_PERMISSIONS_UPDATED`] = {
        name = "CEventNetworkOnlinePermissionsUpdated"
    },
    [`EVENT_NETWORK_SYSTEM_SERVICE_EVENT`] = {
        name = "CEventNetworkSystemServiceEvent"
    },
    [`EVENT_NETWORK_REQUEST_DELAY`] = {
        name = "CEventNetworkRequestDelay"
    },
    [`EVENT_NETWORK_SOCIAL_CLUB_ACCOUNT_LINKED`] = {
        name = "CEventNetworkSocialClubAccountLinked"
    },
    [`EVENT_NETWORK_SCADMIN_PLAYER_UPDATED`] = {
        name = "CEventNetworkScadminPlayerUpdated"
    },
    [`EVENT_NETWORK_SCADMIN_RECEIVED_CASH`] = {
        name = "CEventNetworkScadminReceivedCash"
    },
    [`EVENT_NETWORK_CREW_INVITE_REQUEST_RECEIVED`] = {
        name = "CEventNetworkCrewInviteRequestReceived"
    },
    [`EVENT_NETWORK_DRAG_PED`] = {
        name = "CEventNetworkDragPed"
    },
    [`EVENT_NETWORK_DROP_PED`] = {
        name = "CEventNetworkDropPed"
    },
    [`EVENT_NETWORK_FRIENDS_LIST_UPDATED`] = {
        name = "CEventNetworkFriendsListUpdated"
    },
    [`EVENT_NETWORK_FRIEND_STATUS_UPDATED`] = {
        name = "CEventNetworkFriendStatusUpdated"
    },
    [`EVENT_NETWORK_SC_FEED_POST_NOTIFICATION`] = {
        name = "CEventNetworkScFeedPostNotification"
    },
    [`EVENT_NETWORK_DEBUG_TOGGLE_MP`] = {
        name = "CEventNetworkDebugToggleMp"
    },
    [`EVENT_NETWORK_POSSE_KICKED`] = {
        name = "CEventNetworkPosseKicked"
    },
    [`EVENT_NETWORK_POSSE_DATA_OR_MEMBERSHIP_CHANGED`] = {
        name = "CEventNetworkPosseDataOrMembershipChanged"
    },
    [`EVENT_NETWORK_POSSE_PRESENCE_REQUEST_COMPLETE`] = {
        name = "CEventNetworkPossePresenceRequestComplete"
    },
    [`EVENT_NETWORK_POSSE_STATS_READ_COMPLETE`] = {
        name = "CEventNetworkPosseStatsReadComplete"
    },
    [`EVENT_SCENARIO_RELEASE_BUTTON`] = {
        name = "CEventScenarioReleaseButton"
    },
    [`EVENT_NETWORK_CASHINVENTORY_NOTIFICATION`] = {
        name = "CEventNetworkCashinventoryNotification"
    },
    [`EVENT_ERRORS_UNKNOWN_ERROR`] = {
        name = "CEventErrorsUnknownError"
    },
    [`EVENT_ERRORS_ARRAY_OVERFLOW`] = {
        name = "CEventErrorsArrayOverflow"
    },
    [`EVENT_ERRORS_INSTRUCTION_LIMIT`] = {
        name = "CEventErrorsInstructionLimit"
    },
    [`EVENT_ERRORS_STACK_OVERFLOW`] = {
        name = "CEventErrorsStackOverflow"
    },
    [`EVENT_ERRORS_GLOBAL_BLOCK_INACCESSIBLE`] = {
        name = "CEventErrorsGlobalBlockInaccessible"
    },
    [`EVENT_ERRORS_GLOBAL_BLOCK_NOT_RESIDENT`] = {
        name = "CEventErrorsGlobalBlockNotResident"
    },
    [`EVENT_INTERACTION`] = {
        name = "CEventInteraction"
    },
    [`EVENT_INTERACTION_ACTION`] = {
        name = "CEventInteractionAction"
    },
    [`EVENT_REACTION_ANALYSIS_ACTION`] = {
        name = "CEventReactionAnalysisAction"
    },
    [`EVENT_ANIMAL_RESPONDED_TO_THREAT`] = {
        name = "CEventAnimalRespondedToThreat"
    },
    [`EVENT_ANIMAL_TAMING_CALLOUT`] = {
        name = "CEventAnimalTamingCallout"
    },
    [`EVENT_CALL_FOR_BACKUP`] = {
        name = "CEventCallForBackup"
    },
    [`EVENT_DEATH`] = {
        name = "CEventDeath"
    },
    [`EVENT_HELP_AMBIENT_FRIEND`] = {
        name = "CEventHelpAmbientFriend"
    },
    [`EVENT_LASSO_DETACHED`] = {
        name = "CEventLassoDetached"
    },
    [`EVENT_BOLAS_HIT`] = {
        name = "CEventBolasHit"
    },
    [`EVENT_PED_ON_VEHICLE_ROOF`] = {
        name = "CEventPedOnVehicleRoof"
    },
    [`EVENT_RIDER_DISMOUNTED`] = {
        name = "CEventRiderDismounted"
    },
    [`EVENT_WON_APPROACH_ELECTION`] = {
        name = "CEventWonApproachElection"
    },
    [`EVENT_OWNED_ENTITY_INTERACTION`] = {
        name = "CEventOwnedEntityInteraction"
    },
    [`EVENT_NETWORK_NOMINATED_GET_UPCOMING_CONTENT_RESPONSE`] = {
        name = "CEventNetworkNominatedGetUpcomingContentResponse"
    },
    [`EVENT_NETWORK_NOMINATED_GO_TO_NEXT_CONTENT_RESPONSE`] = {
        name = "CEventNetworkNominatedGoToNextContentResponse"
    },
}