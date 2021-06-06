local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local SetCVar = SetCVar
local IsAddOnLoaded = IsAddOnLoaded
local LoadAddOn = LoadAddOn

-- Eltreum UI print
function ElvUI_EltreumUI:Print(msg)
	print('|cff82B4ffEltruism|r: '..msg)
end

-- Private DB
function ElvUI_EltreumUI:SetupPrivate()
	E.private.ElvUI_EltreumUI.install_version = "2.1.4"
	-- ElvUI Private DB
	E.private["general"]["chatBubbleFont"] = "Kimberley"
	E.private["general"]["chatBubbleFontOutline"] = "OUTLINE"
	E.private["general"]["chatBubbleFontSize"] = 10
	E.private["general"]["chatBubbleName"] = true
	E.private["general"]["dmgfont"] = "Kimberley"
	E.private["general"]["glossTex"] = "Eltreum-Blank"
	E.private["general"]["namefont"] = "Kimberley"
	E.private["general"]["normTex"] = "Eltreum-Blank"
	E.private["theme"] = "class"
	E.private["skins"]["parchmentRemoverEnable"] = true
	if ElvUI_EltreumUI.Retail then
		E.private["install_complete"] = "12.24"
		E.private["general"]["totemBar"] = true
	elseif ElvUI_EltreumUI.TBC then
		E.private["install_complete"] = "2.06"
		E.private["general"]["totemBar"] = true
	elseif ElvUI_EltreumUI.Classic then
		E.private["install_complete"] = "1.42"
	end
end

-- Global DB
function ElvUI_EltreumUI:SetupGlobal()
	-- ElvUI Global DB
	if ElvUI_EltreumUI.Retail then
		E.global["general"]["commandBarSetting"] = "ENABLED_RESIZEPARENT"
		E.global["general"]["smallerWorldMap"] = false
		E.global["general"]["smallerWorldMapScale"] = 1
		E.global["general"]["mapAlphaWhenMoving"] = 0.35
	end
	if ElvUI_EltreumUI.Classic then
		E.global["general"]["smallerWorldMapScale"] = 0.5
		E.global["general"]["mapAlphaWhenMoving"] = 0.5
		E.global["general"]["smallerWorldMap"] = true
	end
	if ElvUI_EltreumUI.TBC then
		E.global["general"]["smallerWorldMapScale"] = 0.5
		E.global["general"]["mapAlphaWhenMoving"] = 0.5
		E.global["general"]["smallerWorldMap"] = true
	end
	E.global["general"]["WorldMapCoordinates"]["position"] = "TOPLEFT"
	E.global["general"]["fadeMapDuration"] = 0.1
		-- Custom DataText
	E.global["datatexts"]["settings"]["Experience"]["textFormat"] = "PERCENT"
	E.global["datatexts"]["settings"]["Friends"]["hideAFK"] = true
	E.global["datatexts"]["settings"]["Friends"]["hideApp"] = true
	E.global["datatexts"]["settings"]["Gold"]["goldCoins"] = false
	if ElvUI_EltreumUI.Retail then
		E.global["datatexts"]["settings"]["MovementSpeed"]["NoLabel"] = true
	end
	E.global["datatexts"]["settings"]["Time"]["time24"] = true
end

--Resolution check for font outline
function ElvUI_EltreumUI:ResolutionOutline()
	if GetCVar('gxFullscreenResolution') == "3140x2160" or GetCVar('gxWindowedResolution') == "3140x2160"  then
		ElvUI_EltreumUI:Print('4K resolution detected, setting fonts to default mode.')
	elseif GetCVar('gxFullscreenResolution') == '2560x1440' or GetCVar('gxWindowedResolution') == "2560x1440"  then
		ElvUI_EltreumUI:SetupFontsOutlineOutline()
		ElvUI_EltreumUI:Print('1440p resolution detected, setting fonts to outline mode.')
	elseif GetCVar('gxFullscreenResolution') == "1920x1080" or GetCVar('gxWindowedResolution') == "1920x1080"  then
		ElvUI_EltreumUI:SetupFontsOutlineOutline()
		ElvUI_EltreumUI:Print('1080p resolution detected, setting fonts to outline mode.')
	end
end

-- UI Scale
function ElvUI_EltreumUI:SetupScale()
	E.global["general"]["UIScale"] = 0.7
	SetCVar('uiScale', 0.7)
end

-- CVars General
function ElvUI_EltreumUI:SetupCVars()
	-- ElvUI CVars
	SetCVar('removeChatDelay', 1)
	SetCVar('cameraDistanceMaxZoomFactor', 2.6)
	SetCVar('autoLootDefault', 1)
	SetCVar('autoQuestWatch', 1)
	SetCVar('UnitNameEnemyGuardianName', 0)
	SetCVar('UnitNameEnemyMinionName', 0)
	SetCVar('UnitNameEnemyPetName', 0)
	SetCVar('UnitNameFriendlyPetName', 0)
	SetCVar('UnitNameEnemyPlayerName', 1)
	SetCVar('UnitNameEnemyTotemName', 1)
	SetCVar('UnitNameNPC', 1)
	SetCVar("ShowClassColorInFriendlyNameplate", 1)
	if ElvUI_EltreumUI.TBC or ElvUI_EltreumUI.Classic then
		SetCVar("lootUnderMouse", 1)
		SetCVar("chatBubbles", 1)
		SetCVar("chatBubblesParty", 1)
	end
	ElvUI_EltreumUI:Print('General CVars have been set.')
end

-- CVars NamePlates
function ElvUI_EltreumUI:NameplateCVars()
	SetCVar('nameplateOtherBottomInset', 0.02)
	SetCVar('nameplateOtherTopInset', 0.1)
	SetCVar('nameplateTargetRadialPosition', 1)
	SetCVar('nameplateLargerScale', 1.2)
	SetCVar('nameplateMinScale', 1)
	SetCVar('nameplateMinAlpha',1)
	SetCVar('nameplateMaxDistance', 60)
	SetCVar('nameplateMotion', 1)
	SetCVar('nameplateOccludedAlphaMult', 0)
	SetCVar("nameplateOverlapH", 0.8)
	SetCVar("nameplateOverlapV", 1.1)
	SetCVar('nameplateSelectedScale', 1)
	SetCVar('nameplateSelfAlpha', 1)
	SetCVar('nameplateShowFriendlyMinions', 0)
	SetCVar('nameplateTargetBehindMaxDistance', 40)
	SetCVar('nameplateShowEnemies', 1)
	SetCVar("nameplateShowFriends", 1)
	ElvUI_EltreumUI:Print('NamePlate CVars have been set.')
end

-- AddOnSkins Profile
function ElvUI_EltreumUI:AddonSetupAS()
	if IsAddOnLoaded('AddOnSkins') then
		ElvUI_EltreumUI:GetASProfile()
		ElvUI_EltreumUI:Print('AddOnSkins profile has been set.')
	end
end

-- Immersion Profile
function ElvUI_EltreumUI:AddonSetupImmersion()
	if IsAddOnLoaded('Immersion') then
		ElvUI_EltreumUI:GetImmersionProfile()
		ElvUI_EltreumUI:Print('Immersion profile has been set.')
	end
end

-- BigWigs Profile
function ElvUI_EltreumUI:AddonSetupBW()
	if IsAddOnLoaded('BigWigs') then
		ElvUI_EltreumUI:GetBigWigsProfile()
		ElvUI_EltreumUI:Print('BigWigs profile has been set.')
	end
end

-- DBM Profile
function ElvUI_EltreumUI:AddonSetupDBM()
	if IsAddOnLoaded('DBM-Core') then
		ElvUI_EltreumUI:GetDBMProfile()
		ElvUI_EltreumUI:Print('DBM profile has been set.')
	end
end

-- Details Profile
function ElvUI_EltreumUI:AddonSetupDT()
	if IsAddOnLoaded('Details') then
		ElvUI_EltreumUI:GetDetailsProfile()
		ElvUI_EltreumUI:Print('Details profile has been set.')
	end
end

-- DynamicCam Profile
function ElvUI_EltreumUI:AddonSetupDynamicCam()
	if IsAddOnLoaded('DynamicCam') then
		ElvUI_EltreumUI:GetDynamicCamProfile()
		ElvUI_EltreumUI:Print('Dynamic Cam profile has been set.')
	end
end

-- GladiusEx Profile
function ElvUI_EltreumUI:AddonSetupGladiusEx()
	if IsAddOnLoaded('GladiusEx') then
		ElvUI_EltreumUI:GetGladiusExProfile()
		ElvUI_EltreumUI:Print('GladiusEx profile has been set.')
	end
end

-- EXRT Profile
function ElvUI_EltreumUI:AddonSetupExRT()
	if IsAddOnLoaded('ExRT') then
		ElvUI_EltreumUI:GetExRTProfile()
		ElvUI_EltreumUI:Print('Exorsus Raid Tools profile has been set.')
	end
end

-- ProjectAzilroka Profile
function ElvUI_EltreumUI:AddonSetupPA()
	if IsAddOnLoaded('ProjectAzilroka') then
		ElvUI_EltreumUI:GetPAProfile()
		ElvUI_EltreumUI:Print('ProjectAzilroka profile has been set.')
	end
end

-- Questie Profile
function ElvUI_EltreumUI:AddonSetupQuestie()
	if IsAddOnLoaded('Questie') then
		ElvUI_EltreumUI:GetQuestieProfile()
		ElvUI_EltreumUI:Print('Questie profile has been set.')
	end
end

-- NameplateSCT Profile
function ElvUI_EltreumUI:AddonSetupNameplateSCT()
	if IsAddOnLoaded('NameplateSCT') then
		ElvUI_EltreumUI:GetNameplateSCTProfile()
		SetCVar("enableFloatingCombatText", 0)
		if ElvUI_EltreumUI.TBC or ElvUI_EltreumUI.Classic then
			SetCVar("floatingCombatTextCombatDamage", 0)
		end
		ElvUI_EltreumUI:Print('NameplateSCT profile has been set.')
	end
end

-- FCT Profile
function ElvUI_EltreumUI:AddonSetupFCT()
	if IsAddOnLoaded('ElvUI_FCT') then
		ElvUI_EltreumUI:GetFCTProfile()
		SetCVar("enableFloatingCombatText", 0)
		if ElvUI_EltreumUI.TBC or ElvUI_EltreumUI.Classic then
			SetCVar("floatingCombatTextCombatDamage", 0)
		end
		ElvUI_EltreumUI:Print('Floating Combat Text profile has been set.')
	end
end
