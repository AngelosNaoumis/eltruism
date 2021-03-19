local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local _G = _G
local SetCVar = SetCVar
local IsAddOnLoaded = IsAddOnLoaded
-- Eltreum UI print
function ElvUI_EltreumUI:Print(msg)
	print('|c4682B4ffEltruism|r: '..msg)
end
-- Nameplate options for glow
function ElvUI_EltreumUI:NamePlateOptions()
	local nameplateclasscolors
	nameplateclasscolors = E:ClassColor(E.myclass, true)
	if E.private.ElvUI_EltreumUI.nameplateOptions.ClassColorGlow then
		E.db["nameplates"]["colors"]["glowColor"]["b"] = nameplateclasscolors.b
		E.db["nameplates"]["colors"]["glowColor"]["r"] = nameplateclasscolors.r
		E.db["nameplates"]["colors"]["glowColor"]["g"] = nameplateclasscolors.g 
	end
	if E.private.ElvUI_EltreumUI.nameplateOptions.ClassBorderNameplate then
		E.global["nameplate"]["filters"]["ElvUI_Target"]["actions"]["color"]["borderColor"]["b"] = nameplateclasscolors.b
		E.global["nameplate"]["filters"]["ElvUI_Target"]["actions"]["color"]["borderColor"]["g"] = nameplateclasscolors.g
		E.global["nameplate"]["filters"]["ElvUI_Target"]["actions"]["color"]["borderColor"]["r"] = nameplateclasscolors.r
		E.global["nameplate"]["filters"]["ElvUI_Target"]["actions"]["color"]["border"] = true
	end
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
-- NameplateSCT Profile
function ElvUI_EltreumUI:AddonSetupNameplateSCT()
	if IsAddOnLoaded('NameplateSCT') then
		ElvUI_EltreumUI:GetNameplateSCTProfile()
		ElvUI_EltreumUI:Print('NameplateSCT profile has been set.')
	end
end
-- FCT Profile
function ElvUI_EltreumUI:AddonSetupFCT()
	if IsAddOnLoaded('ElvUI_FCT') then
		ElvUI_EltreumUI:GetFCTProfile()
		ElvUI_EltreumUI:Print('Floating Combat Text profile has been set.')
	end
end
-- CVars General
function ElvUI_EltreumUI:SetupCVars()
	-- ElvUI CVars
	E:SetupCVars(noDisplayMsg)
	SetCVar('nameplateOccludedAlphaMult', 0)
	SetCVar('cameraDistanceMaxZoomFactor', 2.6)
	SetCVar('autoLootDefault', true)
	SetCVar('nameplateShowFriendlyMinions', 0)
	SetCVar('removeChatDelay', 1)
	SetCVar('nameplateMinAlpha',1)
	SetCVar('nameplateLargerScale', 1.2)
	SetCVar('"nameplateMaxDistance', 60)	
	SetCVar('nameplateMinScale', 1)
	SetCVar('nameplateMotion', 1)
	SetCVar('nameplateOccludedAlphaMult', 0)
	SetCVar('nameplateOverlapH', 0.8)
	SetCVar('nameplateOverlapV', 1.1)
	SetCVar('nameplateSelectedScale', 1)
	SetCVar('nameplateSelfAlpha', 1)
	SetCVar('UnitNameEnemyGuardianName', 0)
	SetCVar('UnitNameEnemyMinionName', 0)
	SetCVar('UnitNameEnemyPetName', 0)
	SetCVar('UnitNameEnemyPlayerName', 1)
	SetCVar('UnitNameEnemyTotem', 1)

	ElvUI_EltreumUI:Print('CVars have been set.')
end
-- CVars NamePlates
function ElvUI_EltreumUI:NameplateCVars()
	SetCVar('UnitNameEnemyPlayerName', 1)
	ElvUI_EltreumUI:Print('NamePlate CVars have been set.')
end
-- Private DB
function ElvUI_EltreumUI:SetupPrivate()
	-- ElvUI Private DB
	E.private["general"]["chatBubbleFont"] = "Kimberley"
	E.private["general"]["chatBubbleFontOutline"] = "THICK"
	E.private["general"]["chatBubbleFontSize"] = 12
	E.private["general"]["chatBubbleName"] = true
	E.private["general"]["dmgfont"] = "Kimberley"
	E.private["general"]["glossTex"] = "Eltreum-Blank"
	E.private["general"]["namefont"] = "Kimberley"
	E.private["general"]["normTex"] = "Eltreum-Blank"
	E.private["general"]["totemBar"] = true
	E.private["install_complete"] = "12.23"
	E.private["skins"]["parchmentRemoverEnable"] = true
end
-- Global DB
function ElvUI_EltreumUI:SetupGlobal()
	-- ElvUI Global DB
	E.global["general"]["WorldMapCoordinates"]["position"] = "BOTTOM"
	E.global["general"]["commandBarSetting"] = "DISABLED"
	E.global["general"]["fadeMapDuration"] = 0.1
	E.global["general"]["mapAlphaWhenMoving"] = 0.35
	E.global["general"]["smallerWorldMap"] = false
	E.global["general"]["smallerWorldMapScale"] = 1
		-- Custom DataText
	E.global["datatexts"]["settings"]["Experience"]["textFormat"] = "PERCENT"
	E.global["datatexts"]["settings"]["Friends"]["hideAFK"] = true
	E.global["datatexts"]["settings"]["Friends"]["hideApp"] = true
	E.global["datatexts"]["settings"]["Gold"]["goldCoins"] = false
	E.global["datatexts"]["settings"]["MovementSpeed"]["NoLabel"] = true
	E.global["datatexts"]["settings"]["Time"]["time24"] = true
end
-- UI Scale
function ElvUI_EltreumUI:SetupScale()
	E.global["general"]["UIScale"] = 0.7
	SetCVar('uiScale', 0.7)
end
