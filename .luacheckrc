std = "lua51"
max_line_length = false
exclude_files = {
	"libs/",
	"locale-import.lua",
	".luacheckrc"
}

ignore = {
	"11./BINDING_.*", -- Setting an undefined (Keybinding) global variable
	"11./SLASH_.*", -- Setting an undefined (Slash) global variable
	"211", -- Unused local variable
	"211/L", -- Unused local variable "L"
	"212", -- Unused argument
	"213", -- Unused loop variable
	"231/_.*", -- unused variables starting with _
	"431", -- shadowing upvalue
	"311", -- Value assigned to a local variable is unused
	"512", -- loop only executed once
	"542", -- empty if branch
}

globals = {
	"ShadowUF",
	"ClickCastFrames",
	"CONFIGMODE_CALLBACKS",
	"SlashCmdList",
}

read_globals = {
	"hooksecurefunc",
	"CopyTable",
	"string.split",
	"string.trim",
	"string.utf8sub",
	"table.wipe",
	"time",

	-- misc custom, third party libraries
	"ClickCastHeader",
	"LibStub",

	-- API functions
	"C_AddOns",
	"C_IncomingSummon",
	"C_Spell",
	"C_Timer",
	"C_UnitAuras",
	"CancelUnitBuff",
	"CanHearthAndResurrectFromArea",
	"CreateFrame",
	"GetArenaOpponentSpec",
	"GetBuildInfo",
	"GetComboPoints",
	"GetInventoryItemTexture",
	"GetLocale",
	"GetLootMethod",
	"GetNumArenaOpponentSpecs",
	"GetPartyAssignment",
	"GetPetExperience",
	"GetRaidTargetIndex",
	"GetReadyCheckStatus",
	"GetRuneCooldown",
	"GetSpecialization",
	"GetSpecializationInfoByID",
	"GetSpellInfo",
	"GetText",
	"GetTime",
	"GetTotemInfo",
	"GetUnitPowerBarInfoByID",
	"GetWatchedFactionInfo",
	"GetWeaponEnchantInfo",
	"GetXPExhaustion",
	"HasLFGRestrictions",
	"InCombatLockdown",
	"IsEveryoneAssistant",
	"IsInInstance",
	"IsPlayerSpell",
	"IsResting",
	"IsShiftKeyDown",
	"IsSpellKnown",
	"IsUsableSpell",
	"IsXPUserDisabled",
	"UnitAffectingCombat",
	"UnitBattlePetType",
	"UnitCanAssist",
	"UnitCanAttack",
	"UnitCastingInfo",
	"UnitChannelInfo",
	"UnitClass",
	"UnitClassification",
	"UnitCreatureFamily",
	"UnitExists",
	"UnitFactionGroup",
	"UnitGetIncomingHeals",
	"UnitGetTotalAbsorbs",
	"UnitGetTotalHealAbsorbs",
	"UnitGroupRolesAssigned",
	"UnitGUID",
	"UnitHasIncomingResurrection",
	"UnitHasVehiclePlayerFrameUI",
	"UnitHasVehicleUI",
	"UnitHealth",
	"UnitHealthMax",
	"UnitInParty",
	"UnitInPhase",
	"UnitInRaid",
	"UnitInRange",
	"UnitIsBattlePetCompanion",
	"UnitIsConnected",
	"UnitIsDeadOrGhost",
	"UnitIsEnemy",
	"UnitIsFriend",
	"UnitIsGroupAssistant",
	"UnitIsGroupLeader",
	"UnitIsPlayer",
	"UnitIsPVP",
	"UnitIsPVPFreeForAll",
	"UnitIsQuestBoss",
	"UnitIsTapDenied",
	"UnitIsUnit",
	"UnitIsVisible",
	"UnitIsWildBattlePet",
	"UnitLeadsAnyGroup",
	"UnitLevel",
	"UnitPhaseReason",
	"UnitPlayerControlled",
	"UnitPlayerOrPetInParty",
	"UnitPlayerOrPetInRaid",
	"UnitPower",
	"UnitPowerBarID",
	"UnitPowerDisplayMod",
	"UnitPowerMax",
	"UnitPowerType",
	"UnitReaction",
	"UnitSex",
	"UnitStagger",
	"UnitThreatSituation",
	"UnitXP",
	"UnitXPMax",

	-- FrameXML frames
	"AlternatePowerBar",
	"ArenaEnemyFramesContainer",
	"ArenaEnemyPrepFramesContainer",
	"ArenaEnemyMatchFramesContainer",
	"BuffFrame",
	"CastingBarFrame",
	"ComboFrame",
	"CompactPartyFrame",
	"CompactRaidFrameContainer",
	"CompactRaidFrameManager",
	"DebuffFrame",
	"DEFAULT_CHAT_FRAME",
	"EssencePlayerFrame",
	"FocusFrame",
	"FocusFrameToT",
	"GameTooltip",
	"MageArcaneChargesFrame",
	"MonkHarmonyBarFrame",
	"PaladinPowerBarFrame",
	"PartyFrame",
	"PetCastingBarFrame",
	"PetFrame",
	"PlayerCastingBarFrame",
	"PlayerFrame",
	"PlayerFrameAlternateManaBar",
	"PlayerPowerBarAlt",
	"PriestBarFrame",
	"RuneFrame",
	"TargetFrame",
	"TargetFrameToT",
	"TemporaryEnchantFrame",
	"UIParent",
	"WarlockPowerFrame",

	-- FrameXML functions
	"AuraUtil.UnpackAuraData",
	"BackdropTemplateMixin",
	"CombatFeedback_OnCombatEvent",
	"CombatFeedback_OnUpdate",
	"CompactRaidFrameManager_GetSetting",
	"CompactRaidFrameManager_SetSetting",
	"GetClassAtlas",
	"RegisterStateDriver",
	"RegisterUnitWatch",
	"SecureButton_GetModifiedUnit",
	"SecureHandler_OnLoad",
	"SetPortraitTexture",
	"SetRaidTargetIconTexture",
	"UnitFrame_OnEnter",
	"UnitFrame_OnLeave",
	"UnregisterUnitWatch",

	-- FrameXML constants
	"DebuffTypeColor",
	"Enum",
	"PowerBarColor",
	"ADDITIONAL_POWER_BAR_INDEX",
	"ALTERNATE_POWER_INDEX",
	"CLASS_ICON_TCOORDS",
	"CLASS_SORT_ORDER",
	"FACTION_BAR_COLORS",
	"LOCALIZED_CLASS_NAMES_MALE",
	"MAX_BOSS_FRAMES",
	"MAX_COMBO_POINTS",
	"MAX_PARTY_MEMBERS",
	"MAX_PLAYER_LEVEL",
	"MAX_RAID_MEMBERS",
	"MAX_TOTEMS",
	"MEMBERS_PER_RAID_GROUP",
	"PALADINPOWERBAR_SHOW_LEVEL",
	"PET_TYPE_SUFFIX",
	"RAID_CLASS_COLORS",
	"READY_CHECK_NOT_READY_TEXTURE",
	"READY_CHECK_READY_TEXTURE",
	"READY_CHECK_WAITING_TEXTURE",
	"SHAMAN_TOTEM_PRIORITIES",
	"SPEC_MAGE_ARCANE",
	"SPEC_MONK_BREWMASTER",
	"SPEC_MONK_WINDWALKER",
	"SPEC_PALADIN_RETRIBUTION",
	"SPEC_PRIEST_SHADOW",
	"SPEC_WARLOCK_DESTRUCTION",
	"STAGGER_STATES",
	"STANDARD_TOTEM_PRIORITIES",
	"TextureKitConstants",
}
