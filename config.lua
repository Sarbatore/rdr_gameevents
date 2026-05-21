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
            [3] = "boolean",
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
            [3] = "boolean",
            [4] = "boolean",
            [10] = "boolean",
            [11] = "boolean",
            [12] = "boolean",
            [13] = "boolean",
            [25] = "boolean",
            [31] = "boolean",
        }
    },
    [`EVENT_NETWORK_GANG`] = {name = "CEventNetworkGang", size = 18},
    [`EVENT_NETWORK_GANG_WAYPOINT_CHANGED`] = {name = "CEventNetworkGangWaypointChanged", size = 3},
    [`EVENT_NETWORK_HOGTIE_BEGIN`] = {name = "CEventNetworkHogtieBegin", size = 2},
    [`EVENT_NETWORK_HOGTIE_END`] = {name = "CEventNetworkHogtieEnd", size = 2},
    [`EVENT_NETWORK_HUB_UPDATE`] = {name = "CEventNetworkHubUpdate", size = 1},
    [`EVENT_NETWORK_INCAPACITATED_ENTITY`] = {name = "CEventNetworkIncapacitatedEntity", size = 4},
    [`EVENT_NETWORK_LASSO_ATTACH`] = {name = "CEventNetworkLassoAttach", size = 2},
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
        size = 4,
        args = {
            [2] = "boolean"
        }
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
}