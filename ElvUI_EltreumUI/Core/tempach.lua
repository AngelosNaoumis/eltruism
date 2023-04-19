local E, L, V, P, G = unpack(ElvUI)
local _G = _G
local tinsert = _G.table.insert
local tconcat = _G.table.concat
local unpack = _G.unpack
local select = _G.select
local sort = _G.sort
local pairs = _G.pairs
local table = _G.table
local format = _G.format
local MINIMAP_LABEL = _G.MINIMAP_LABEL
local AURAS = _G.AURAS
local BINDING_HEADER_CHAT = _G.BINDING_HEADER_CHAT
local HONOR = _G.HONOR
local CURRENCY = _G.CURRENCY
local tostring = _G.tostring
local PlaySoundFile = _G.PlaySoundFile
local tonumber = _G.tonumber
local SetCVar = _G.SetCVar
local C_CVar = _G.C_CVar
local OKAY = _G.OKAY
local Item = _G.Item
local tremove = _G.tremove
local AceGUIWidgetLSMlists = _G.AceGUIWidgetLSMlists
local IsAddOnLoaded = _G.IsAddOnLoaded

--Author list
local AUTHORS = {
	'|cff82B4ffEltreum|r',
}

-- Credits and Thank yous list
local THANKYOU = {
	'|cff0070DEAzilroka|r',
	'|cffC41F3BKringel|r',
	'|cFF99CCFFAftermathh|r',
	'|cffF58CBARepooc|r Especially for the huge helps',
	'Blazeflack',
	'Botanica',
	'|cffFFC44DHydra|r',
	'|T134297:15:15:0:0:64:64:5:59:5:59|t |cffff7d0aMerathilis|r',
	'|cff9482c9Darth Predator|r',
	'Caedis',
	'Elv',
	E:TextGradient('Simpy, his name might be shorter sometimes even though he fixes a lot of things', 0.27,0.72,0.86, 0.51,0.36,0.80, 0.69,0.28,0.94, 0.94,0.28,0.63, 1.00,0.51,0.00, 0.27,0.96,0.43),
	--E:TextGradient('Simpy he fixes a lot of things but he cant see power colors right', 0.27,0.72,0.86, 0.51,0.36,0.80, 0.69,0.28,0.94, 0.94,0.28,0.63, 1.00,0.51,0.00, 0.27,0.96,0.43),
	'Shrom',
	'Pat',
	'|cff00c0faBenik|r',
	'|T136012:15:15:0:0:64:64:5:59:5:59|t |cff006fdcRubgrsch|r',
	'|TInterface/AddOns/ElvUI/Core/Media/ChatLogos/Clover:15:15:0:0:64:64:5:59:5:59|t |cffFF7D0ALuckyone|r Especially for allowing the usage of his installer/plugin as a model',
	'|TInterface/AddOns/ElvUI_EltreumUI/Media/Textures/releaf:15:15:0:0:64:64:5:59:5:59|t |cffFF7D0AReleaf|r for the alternate class icons',
	'|TInterface/AddOns/ElvUI_EltreumUI/Media/Textures/tukuidiscord:15:15:0:0:64:64:5:59:5:59|t Tukui Community for all the help and motivation',
	'|TInterface/AddOns/ElvUI_EltreumUI/Media/Textures/addonsdiscord:15:15:0:0:64:64:5:59:5:59|t WoW AddOns; for answering a lot of questions',
	'AcidWeb |TInterface/AddOns/ElvUI/Core/Media/ChatLogos/Gem:15:15:-1:2:64:64:6:60:8:60|t',
	'|cff8E44ADB|r|cff2ECC71lin|r|cff3498DBkii|r',
	'|cff960000Atwood|r - for some of the role icons',
	'|cffB50909Dlarge|r - for the German localization',
	'|cff33937FFang2hou|r - for the compatibility function',
}

local DONATORS = {
	'|cffB50909Akiao|r',
	'|cffB50909Artan|r',
	'|cffB50909BralumConquest|r',
	'|cffB50909Brovenn|r',
	'|cffB50909Daxxarri|r',
	'|cffB50909Dlarge|r',
	'|cffB50909Dreamador|r',
	'|cffB50909Dreandor|r',
	'|cffB50909Gently Caress the Constabulary|r',
	'|cffB50909Greevir|r',
	'|cffB50909Jazz|r',
	'|cffB50909Jiberish|r',
	'|cffB50909Madlampy|r',
	'|cffB50909Markpoops|r',
	'|cffB50909Michael_|r',
	'|cffB50909Morthart|r',
	'|cffB50909Mr.Ditto|r',
	'|cffB50909Nekator|r',
	'|cffB50909Nyhilatiant|r',
	'|cffB50909Oakshlam|r',
	'|cffB50909Smuve|r',
	'|cffB50909Trenchy|r',
	'|cffB50909Vxt|r',
}

local TRANSLATORS = {
	'|cffCC3333Khornan|r - German Translation',
	'|cffCC3333Dlarge|r - German Translation',
	'|cffCC3333Neo|r - Chinese Translation',
	'DeepL artificial intelligence for French and Spanish translations',
}

-- SortList
local function SortList(a, b)
	return E:StripString(a) < E:StripString(b)
end

sort(AUTHORS, SortList)
sort(THANKYOU, SortList)
sort(DONATORS, SortList)
sort(TRANSLATORS, SortList)

-- Author table
for _, name in pairs(AUTHORS) do
	tinsert(ElvUI_EltreumUI.CreditsList, name)
end
local AUTHORS_STRING = tconcat(AUTHORS, '|n')

-- Thank you table
for _, name in pairs(THANKYOU) do
	tinsert(ElvUI_EltreumUI.CreditsList, name)
end
local THANKYOU_STRING = tconcat(THANKYOU, '|n')

-- Donators table
for _, name in pairs(DONATORS) do
	tinsert(ElvUI_EltreumUI.CreditsList, name)
end
local DONATORS_STRING = tconcat(DONATORS, '|n')

-- Translators table
for _, name in pairs(TRANSLATORS) do
	tinsert(ElvUI_EltreumUI.CreditsList, name)
end
local TRANSLATORS_STRING = tconcat(TRANSLATORS, '|n')

-- Eltruism ingame options
function ElvUI_EltreumUI:Configtable()
	-- Add Eltruism version on top of the ElvUI config
	E.Options.name = E.Options.name .. " + " .. ElvUI_EltreumUI.Name .. format(" |cffffffff%s|r", ElvUI_EltreumUI.Version)
	local ACH = E.Libs.ACH
	ElvUI_EltreumUI.Options = ACH:Group("|TInterface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\tinylogo.tga:14:14:0:0|t" .. ElvUI_EltreumUI.Name, nil, 6)
	ElvUI_EltreumUI.Options.args.logo = ACH:Description(nil, 1, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\logohq', 320, 80 end)

	-- installer
	ElvUI_EltreumUI.Options.args.installer = ACH:Group(E:TextGradient(L["Installer"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Install, Reinstall or Update various parts of Eltruism"], 2, 'tab')
	ElvUI_EltreumUI.Options.args.installer.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\install'
	ElvUI_EltreumUI.Options.args.installer.args.tab1 = ACH:Group(L["Eltruism Installer"], nil, 1)
	ElvUI_EltreumUI.Options.args.installer.args.tab1.args.header1 = ACH:Description(L["Eltruism Installer"], 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab1.args.eltruisminstaller = ACH:Execute(L["Launch Eltruism Installer"], L["Launches the Eltruism install prompt"], 3, function() E:GetModule('PluginInstaller'):Queue(ElvUI_EltreumUI.InstallerData) E:ToggleOptions() end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab1.args.header2 = ACH:Description(L["Eltruism Settings"], 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab1.args.resetupdateeltruism = ACH:Execute(L["Reset/Update Eltruism Settings"], L["Resets/Updates Eltruism Settings to Eltreum's Defaults"], 5, function() ElvUI_EltreumUI:UpdateEltruismSettings() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab1.args.header3 = ACH:Description(L["ElvUI Settings"], 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab1.args.updateelvui = ACH:Execute(L["Reset/Update ElvUI Settings"], L["Resets/Updates ElvUI Settings to Eltreum's Defaults"], 7, function() ElvUI_EltreumUI:UpdateElvUISettings() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab2 = ACH:Group(L["Nameplates"], nil, 2)
	ElvUI_EltreumUI.Options.args.installer.args.tab2.args.header1 = ACH:Description(L["Reset Nameplates"], 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab2.args.resetnameplate = ACH:Execute(L["Reset nameplates to Eltruism settings"], nil, 3, function() ElvUI_EltreumUI:SetupNamePlates() ElvUI_EltreumUI:ResolutionOutline() end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab2.args.header2 = ACH:Description(L["Reset Style Filters"], 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab2.args.resetstylefilter = ACH:Execute(L["Reset Nameplate Style Filters"], nil, 5, function() ElvUI_EltreumUI:SetupStyleFilters() end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab3 = ACH:Group(L["Layouts"], nil, 3)
	ElvUI_EltreumUI.Options.args.installer.args.tab3.args.header1 = ACH:Description(L["Reinstall DPS Layout"], 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab3.args.resetdpslayout = ACH:Execute(L["Reset layout to Eltruism DPS/Tank"], nil, 3, function() E.data:SetProfile('Eltreum DPS/Tank ('..E.mynameRealm..')') ElvUI_EltreumUI:SetupGeneralLayout() ElvUI_EltreumUI:SetupLayoutDPS() end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab3.args.header2 = ACH:Description(L["Reinstall Healer Layout"], 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab3.args.resethealerlayout = ACH:Execute(L["Reset layout to Eltruism Healer"], nil, 5, function() E.data:SetProfile('Eltreum Healer ('..E.mynameRealm..')') ElvUI_EltreumUI:SetupGeneralLayout() ElvUI_EltreumUI:SetupLayoutHealer() end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab3.args.header3 = ACH:Description(L["Reinstall Eltruism Datatext"], 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab3.args.resetdatatext = ACH:Execute(L["Reset/Add Eltruism Datatext Panel"], nil, 7, function() ElvUI_EltreumUI:SetupDataText() E:UpdateMoverPositions() end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab4 = ACH:Group(L["General"], nil, 4)
	ElvUI_EltreumUI.Options.args.installer.args.tab4.args.header1 = ACH:Description(L["Reinstall"].." "..CHAT_LABEL, 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab4.args.resetchat = ACH:Execute(L["Reset Chat to ElvUI Settings"], nil, 3, function()
		E:SetupChat()
		ElvUI_EltreumUI:Print(L["ElvUI Chat has been set."])
		--for classic chat lfg
		local lfg
		if E.global.general.locale == "enUS" then
			lfg = "LookingForGroup"
		elseif E.global.general.locale == "deDE" then
			lfg = "SucheNachGruppe"
		elseif E.global.general.locale == "esMX" or E.global.general.locale == "esES" then
			lfg = "BuscarGrupo"
		elseif E.global.general.locale == "frFR" then
			lfg = "RechercheDeGroupe"
		elseif E.global.general.locale == "ruRU" then
			lfg = "ПоискСпутников"
		elseif E.global.general.locale == "zhTW" then
			lfg = "尋求組隊"
		else
			lfg = "LookingForGroup"
		end
		if not E.Retail then --remove lfg spam from general and creat tab for it
			if lfg then
				ChatFrame_RemoveChannel(_G.ChatFrame1, lfg)
				FCF_OpenNewWindow()
				ChatFrame_RemoveAllMessageGroups(_G.ChatFrame5)
				FCF_SetWindowName(_G.ChatFrame5, 'LFG')
				ChatFrame_AddChannel(_G.ChatFrame5, lfg)
				FCFTab_UpdateColors(_G.ChatFrame5Tab)
				FCFDock_SelectWindow(_G.GENERAL_CHAT_DOCK, _G.ChatFrame1)
			end
		end
	end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab4.args.header2 = ACH:Description(L["Skip Plugins"], 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab4.args.skipplugin = ACH:Execute(L["Skip Plugins install message"], L["Make the warnings to install profiles for other plugins stop"], 5, function()
		E.private.ElvUI_EltreumUI.isInstalled.sle = true
		E.private.ElvUI_EltreumUI.isInstalled.windtools = true
		E.private.ElvUI_EltreumUI.isInstalled.projectazilroka = true
	end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab4.args.header3 = ACH:Description(L["Database Check"], 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab4.args.databasecheck = ACH:Execute(L["Run Database Check"], L["Perform a Database Check if you are updating from a very old version as some settings have changed places and the Database Check will convert them"], 7, function() ElvUI_EltreumUI:DatabaseConversions(true) end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.installer.args.tab4.args.header4 = ACH:Description(L["Clear Details! Damage Meter tables to free up memory"], 8, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.installer.args.tab4.args.detailscache= ACH:Execute(L["Clear Details Tables"], L["Set Details tables to be empty"], 9, function() ElvUI_EltreumUI:EmptyDetailsTable() end,nil,false,'full')

	-- aurafilters
	ElvUI_EltreumUI.Options.args.aurafilters = ACH:Group(E:TextGradient(L["Aura Filters"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Choose to show all debuffs/buffs or use default Filters"], 85, 'tab')
	ElvUI_EltreumUI.Options.args.aurafilters.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\aurafilter'
	ElvUI_EltreumUI.Options.args.aurafilters.args.player = ACH:Group(L["Player"], nil, 2)
	ElvUI_EltreumUI.Options.args.aurafilters.args.player.args.player = ACH:Group(L["Select how auras will be displayed for Player"], nil, 1)
	ElvUI_EltreumUI.Options.args.aurafilters.args.player.args.player.inline = true
	ElvUI_EltreumUI.Options.args.aurafilters.args.player.args.player.args.header1 = ACH:Description(nil, 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.player.args.player.args.allbuffs = ACH:Execute(L["All Player Buffs"], L["Set filters to show more buffs on Player"], 2, function() ElvUI_EltreumUI:SetupBuffs('player', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.player.args.player.args.alldebuffs = ACH:Execute(L["All Player Debuffs"], L["Set filters to show more debuffs on Player"], 3, function() ElvUI_EltreumUI:SetupDebuffs('player', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.player.args.player.args.header2 = ACH:Description(nil, 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.player.args.player.args.eltruismbuffs = ACH:Execute(L["Eltruism Player Buffs"], L["Set filters to be Eltruism defaults on Player"], 5, function() ElvUI_EltreumUI:SetupBuffs('player', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.player.args.player.args.eltruismdebuffs = ACH:Execute(L["Eltruism Player Debuffs"], L["Set filters to be Eltruism defaults on Player"], 6, function() ElvUI_EltreumUI:SetupDebuffs('player', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.target = ACH:Group(TARGET, nil, 2)
	ElvUI_EltreumUI.Options.args.aurafilters.args.target.args.target = ACH:Group(L["Select how auras will be displayed for Target"], nil, 1)
	ElvUI_EltreumUI.Options.args.aurafilters.args.target.args.target.inline = true
	ElvUI_EltreumUI.Options.args.aurafilters.args.target.args.target.args.header1 = ACH:Description(nil, 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.target.args.target.args.allbuffs = ACH:Execute(L["All Target Buffs"], L["Set filters to show more buffs on Target"], 2, function() ElvUI_EltreumUI:SetupBuffs('target', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.target.args.target.args.alldebuffs = ACH:Execute(L["All Target Debuffs"], L["Set filters to show more debuffs on Target"], 3, function() ElvUI_EltreumUI:SetupDebuffs('target', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.target.args.target.args.header2 = ACH:Description(nil, 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.target.args.target.args.eltruismbuffs = ACH:Execute(L["Eltruism Target Buffs"], L["Set filters to be Eltruism defaults on Target"], 5, function() ElvUI_EltreumUI:SetupBuffs('target', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.target.args.target.args.eltruismdebuffs = ACH:Execute(L["Eltruism Target Debuffs"], L["Set filters to be Eltruism defaults on Target"], 6, function() ElvUI_EltreumUI:SetupDebuffs('target', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus = ACH:Group(POWER_TYPE_FOCUS, nil, 2, nil, nil, nil, nil, E.Classic)
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus.args.focus = ACH:Group(L["Select how auras will be displayed for Focus"], nil, 1)
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus.args.focus.inline = true
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus.args.focus.args.header1 = ACH:Description(nil, 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus.args.focus.args.allbuffs = ACH:Execute(L["All Focus Buffs"], L["Set filters to show more buffs on Focus"], 2, function() ElvUI_EltreumUI:SetupBuffs('focus', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus.args.focus.args.alldebuffs = ACH:Execute(L["All Focus Debuffs"], L["Set filters to show more debuffs on Focus"], 3, function() ElvUI_EltreumUI:SetupDebuffs('focus', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus.args.focus.args.header2 = ACH:Description(nil, 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus.args.focus.args.eltruismbuffs = ACH:Execute(L["Eltruism Focus Buffs"], L["Set filters to be Eltruism defaults on Focus"], 5, function() ElvUI_EltreumUI:SetupBuffs('focus', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.focus.args.focus.args.eltruismdebuffs = ACH:Execute(L["Eltruism Focus Debuffs"], L["Set filters to be Eltruism defaults on Focus"], 6, function() ElvUI_EltreumUI:SetupDebuffs('focus', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss = ACH:Group(L["Boss"], nil, 2, nil, nil, nil, nil, E.Classic)
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss.args.boss = ACH:Group(L["Select how auras will be displayed for Boss"], nil, 1)
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss.args.boss.inline = true
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss.args.boss.args.header1 = ACH:Description(nil, 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss.args.boss.args.allbuffs = ACH:Execute(L["All Boss Buffs"], L["Set filters to show more buffs on Boss"], 2, function() ElvUI_EltreumUI:SetupBuffs('boss', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss.args.boss.args.alldebuffs = ACH:Execute(L["All Boss Debuffs"], L["Set filters to show more debuffs on Boss"], 3, function() ElvUI_EltreumUI:SetupDebuffs('boss', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss.args.boss.args.header2 = ACH:Description(nil, 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss.args.boss.args.eltruismbuffs = ACH:Execute(L["Eltruism Boss Buffs"], L["Set filters to be Eltruism defaults on Boss"], 5, function() ElvUI_EltreumUI:SetupBuffs('boss', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.boss.args.boss.args.eltruismdebuffs = ACH:Execute(L["Eltruism Boss Debuffs"], L["Set filters to be Eltruism defaults on Boss"], 6, function() ElvUI_EltreumUI:SetupDebuffs('boss', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate = ACH:Group(L["Nameplates"], nil, 2)
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate.args.nameplate = ACH:Group(L["Select how auras will be displayed for Nameplates"], nil, 1)
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate.args.nameplate.inline = true
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate.args.nameplate.args.header1 = ACH:Description(nil, 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate.args.nameplate.args.allbuffs = ACH:Execute(L["All Nameplate Buffs"], L["Set filters to show more buffs on Nameplates"], 2, function() ElvUI_EltreumUI:SetupBuffs('nameplate', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate.args.nameplate.args.alldebuffs = ACH:Execute(L["All Nameplate Debuffs"], L["Set filters to show more debuffs on Nameplates"], 3, function() ElvUI_EltreumUI:SetupDebuffs('nameplate', 'Everything') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate.args.nameplate.args.header2 = ACH:Description(nil, 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate.args.nameplate.args.eltruismbuffs = ACH:Execute(L["Eltruism Nameplate Buffs"], L["Set filters to be Eltruism defaults on Nameplates"], 5, function() ElvUI_EltreumUI:SetupBuffs('nameplate', 'Eltruism') end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.aurafilters.args.nameplate.args.nameplate.args.eltruismdebuffs = ACH:Execute(L["Eltruism Nameplate Debuffs"], L["Set filters to be Eltruism defaults on Nameplates"], 6, function() ElvUI_EltreumUI:SetupDebuffs('nameplate', 'Eltruism') end,nil,false,'full')

	--addons
	ElvUI_EltreumUI.Options.args.addons = ACH:Group(E:TextGradient(L["Addons"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Install or update other Addon profiles"], 85, 'tab')
	ElvUI_EltreumUI.Options.args.addons.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\addon'
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins = ACH:Group(L["ElvUI Plugins"], nil, 2)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.header1 = ACH:Description("Azilroka Addons", 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.addonskins = ACH:Execute('|cff16C3F2AddOn|r|cFFFFFFFFSkins|r', L["Reset to Eltruism defaults."], 3, function() ElvUI_EltreumUI:AddonSetupAS() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("AddOnSkins") end)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.projectazilroka = ACH:Execute('|cFF16C3F2Project|r|cFFFFFFFFAzilroka|r', L["Reset to Eltruism defaults."], 3, function() ElvUI_EltreumUI:AddonSetupPA() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("ProjectAzilroka") end)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.header2 = ACH:Description("Shadow and Light", 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, nil, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.shadowandlight = ACH:Execute("|cff9482c9S|r|cff8c8ac9h|r|cff8591c9a|r|cff809bc9d|r|cff7fa6c9o|r|cff7eb2c9w|r |cff6fcac1a|r|cff5de7b8n|r|cff4bfdaed|r |cff3cfda2L|r|cff2cfd97i|r|cff20fd7bg|r|cff16fd55h|r|cff0cfd2ft|r", L["Reset to Eltruism defaults."], 5, function() ElvUI_EltreumUI:GetSLEProfile() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("ElvUI_SLE") end, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.header3 = ACH:Description("WindTools", 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, nil, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.windtools = ACH:Execute("|cff5385edW|r|cff5094eai|r|cff4da4e7n|r|cff4ab4e4d|r|cff47c0e1T|r|cff44cbdfo|r|cff41d7ddo|r|cff41d7ddl|r|cff41d7dds|r", L["Reset to Eltruism defaults."], 7, function() ElvUI_EltreumUI:GetWindToolsProfile() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("ElvUI_WindTools") end, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.header4 = ACH:Description("Dynamic Status Icons", 8, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, nil, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.elvuiplugins.args.dyamicstatusicons = ACH:Execute('|cFF16C3F2Dynamic Status |r|cFFFFFFFFIcons|r', L["Reset to Eltruism defaults."], 9, function() ElvUI_EltreumUI:SetupDynamicStatusIcons() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("ElvUI_DynamicStatusIcons") end, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.bossmods = ACH:Group(L["BossMods Profiles"], nil, 3)
	ElvUI_EltreumUI.Options.args.addons.args.bossmods.args.header1 = ACH:Description(nil, 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.addons.args.bossmods.args.bigwigs = ACH:Execute('BigWigs', L["Reset to Eltruism defaults."], 3, function() ElvUI_EltreumUI:AddonSetupBW() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("BigWigs_Core") end)
	ElvUI_EltreumUI.Options.args.addons.args.bossmods.args.header2 = ACH:Description(nil, 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.addons.args.bossmods.args.dbm = ACH:Execute('DBM', L["Reset to Eltruism defaults."], 5, function() ElvUI_EltreumUI:AddonSetupDBM() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("DBM-Core") end)
	ElvUI_EltreumUI.Options.args.addons.args.bossmods.args.header3 = ACH:Description(nil, 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.addons.args.bossmods.args.methodraidtools = ACH:Execute('Method Raid Tools', L["Reset to Eltruism defaults."], 7, function() ElvUI_EltreumUI:AddonSetupMRT() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("MRT") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons = ACH:Group(L["Addon Profiles"], nil, 4)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.header1 = ACH:Description(L["Misc"].." "..L["AddOns"], 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.dynamiccam = ACH:Execute('Dynamic Cam', L["Reset to Eltruism defaults."], 3, function() ElvUI_EltreumUI:AddonSetupDynamicCam() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("DynamicCam") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.immersion = ACH:Execute('Immersion', L["Reset to Eltruism defaults."], 3, function() ElvUI_EltreumUI:AddonSetupImmersion() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("Immersion") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.warpdeplete = ACH:Execute('WarpDeplete', L["Reset to Eltruism defaults."], 3, function() ElvUI_EltreumUI:GetWarpDepleteProfile() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("WarpDeplete") end, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.questie = ACH:Execute('Questie', L["Reset to Eltruism defaults."], 3, function() ElvUI_EltreumUI:AddonSetupQuestie() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("Questie") end, E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.omnicddps = ACH:Execute('OmniCD DPS', L["Reset to Eltruism defaults."], 4, function() ElvUI_EltreumUI:GetOmniCDProfile("dps") E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("OmniCD") end, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.omnicdhealer = ACH:Execute('OmniCD Healer', L["Reset to Eltruism defaults."], 4, function() ElvUI_EltreumUI:GetOmniCDProfile("healer") E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("OmniCD") end, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.BattleGroundEnemies = ACH:Execute('BattleGroundEnemies', L["Reset to Eltruism defaults."], 5, function() ElvUI_EltreumUI:GetBattleGroundEnemiesProfile() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("BattleGroundEnemies") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.Capping = ACH:Execute('Capping', L["Reset to Eltruism defaults."], 5, function() ElvUI_EltreumUI:GetCappingProfile() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("Capping") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.GladiusEx = ACH:Execute('Gladius Ex', L["Reset to Eltruism defaults."], 6, function() ElvUI_EltreumUI:AddonSetupGladiusEx() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("GladiusEx") end, not E.Retail)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.Gladdy = ACH:Execute('Gladdy', L["Reset to Eltruism defaults."], 6, function() ElvUI_EltreumUI:SetupGladdy() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("Gladdy") end, not E.Wrath)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.Gladius = ACH:Execute('Gladius', L["Reset to Eltruism defaults."], 6, function() ElvUI_EltreumUI:SetupGladius() E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("Gladius") end, not E.Wrath)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.header2 = ACH:Description(L["Combat Text Addons"], 7, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.NameplateSCT = ACH:Execute('NameplateSCT', L["Reset to Eltruism defaults."], 8, function() ElvUI_EltreumUI:AddonSetupCombatText("NameplateSCT") E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("NameplateSCT") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.ElvUI_FCT = ACH:Execute('ElvUI Floating Combat Text', L["Reset to Eltruism defaults."], 8, function() ElvUI_EltreumUI:AddonSetupCombatText("ElvUI_FCT") E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("ElvUI_FCT") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.header3 = ACH:Description(L["Details Profiles"], 9, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.detailsv1 = ACH:Execute(L["Details v1 - Blizzard Flat Icons"], L["Reset to Eltruism defaults."], 10, function() ElvUI_EltreumUI:AddonSetupDT("spec") E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("Details") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.detailsv2 = ACH:Execute(L["Details v2 - Releaf Transparent Icons"], L["Reset to Eltruism defaults."], 10, function() ElvUI_EltreumUI:AddonSetupDT("releafalpha") E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("Details") end)
	ElvUI_EltreumUI.Options.args.addons.args.otheraddons.args.detailsv3 = ACH:Execute(L["Details v3 - Releaf Solid Icons"], L["Reset to Eltruism defaults."], 10, function() ElvUI_EltreumUI:AddonSetupDT("releafsolid") E:StaticPopup_Show('CONFIG_RL') end,nil,false,'full',nil,nil, function() return not IsAddOnLoaded("Details") end)

	--afk
	ElvUI_EltreumUI.Options.args.afk = ACH:Group(E:TextGradient(L["A.F.K"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Enhance the AFK screen"], 85, 'tab')
	ElvUI_EltreumUI.Options.args.afk.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\afk'
	ElvUI_EltreumUI.Options.args.afk.args.header1 = ACH:Description(L["Play music while you are AFK"], 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.afk.args.enable = ACH:Toggle(L["Enable"], nil, 3, nil, false,"full",function() return E.db.ElvUI_EltreumUI.otherstuff.afkmusic.enable end,function(_, value) E.db.ElvUI_EltreumUI.otherstuff.afkmusic.enable = value end)
	ElvUI_EltreumUI.Options.args.afk.args.header2 = ACH:Description(L["Select a type of music"], 4, nil, nil, nil, nil, nil, nil, not E.Retail)
	ElvUI_EltreumUI.Options.args.afk.args.racialmusic = ACH:Toggle(L["Racial Music"], nil, 5, nil, false, nil, function() return E.db.ElvUI_EltreumUI.otherstuff.afkmusic.racial end,function(_, value) E.db.ElvUI_EltreumUI.otherstuff.afkmusic.racial = value end, function() return not E.db.ElvUI_EltreumUI.otherstuff.afkmusic.enable or E.db.ElvUI_EltreumUI.otherstuff.afkmusic.playerclass end, not E.Retail)
	ElvUI_EltreumUI.Options.args.afk.args.classmusic = ACH:Toggle(L["Class Music"], nil, 5, nil, false, nil, function() return E.db.ElvUI_EltreumUI.otherstuff.afkmusic.playerclass end,function(_, value) E.db.ElvUI_EltreumUI.otherstuff.afkmusic.playerclass = value end, function() return not E.db.ElvUI_EltreumUI.otherstuff.afkmusic.enable or E.db.ElvUI_EltreumUI.otherstuff.afkmusic.racial end, not E.Retail)
	ElvUI_EltreumUI.Options.args.afk.args.header3 = ACH:Description("Eltruism Logo", 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.afk.args.eltruismlogo = ACH:Toggle(L["Enable"], nil, 7, nil, false, "full", function() return E.db.ElvUI_EltreumUI.otherstuff.afklogo end,function(_, value) E.db.ElvUI_EltreumUI.otherstuff.afklogo = value end)

	--borders
	ElvUI_EltreumUI.Options.args.borders = ACH:Group(E:TextGradient(L["Borders"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Add Borders to frames and customize them"], 85, 'tab')
	ElvUI_EltreumUI.Options.args.borders.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\border'
	ElvUI_EltreumUI.Options.args.borders.args.general = ACH:Group(L["General"], nil, 1)
	ElvUI_EltreumUI.Options.args.borders.args.general.args.header1 = ACH:Description(L["Enable Borders"], 3, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.borders.args.general.args.enable = ACH:Toggle(L["Enable"], nil, 4, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.borders = value ElvUI_EltreumUI:ShowHideBorders() ElvUI_EltreumUI:Borders() E:StaticPopup_Show('CONFIG_RL') end)
	ElvUI_EltreumUI.Options.args.borders.args.general.args.enableautoadjust = ACH:Toggle(L["Enable Auto-adjusting the actionbar spacing and position"], L["Adjusts actionbar spacing and position based on borders being enabled or not"], 5, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.borderautoadjust end,function(_, value) E.db.ElvUI_EltreumUI.borders.borderautoadjust = value ElvUI_EltreumUI:Borders() E:StaticPopup_Show('CONFIG_RL') end)
	ElvUI_EltreumUI.Options.args.borders.args.general.args.header2 = ACH:Description(L["Choose the Border Texture to be used:"], 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.borders.args.general.args.bordertexture = ACH:SharedMediaBorder("", nil, 7, "full", function() return E.db.ElvUI_EltreumUI.borders.texture end, function(self,key) E.db.ElvUI_EltreumUI.borders.texture = key ElvUI_EltreumUI:Borders() end, function() return E.db.ElvUI_EltreumUI.borders.borderautoadjust or not E.db.ElvUI_EltreumUI.borders.borders end)
	ElvUI_EltreumUI.Options.args.borders.args.general.args.classcolors = ACH:Toggle(L["Use Class Colors"], nil, 8, nil, false,nil,function() return E.db.ElvUI_EltreumUI.borders.classcolor end,function(_, value) E.db.ElvUI_EltreumUI.borders.classcolor = value ElvUI_EltreumUI:Borders() E:StaticPopup_Show('CONFIG_RL') end,function() return not E.db.ElvUI_EltreumUI.borders.borders end)
	ElvUI_EltreumUI.Options.args.borders.args.general.args.colorborders = ACH:Color(L["Custom Color"], nil, 9, false, nil, function()
		local customcolorborders = E.db.ElvUI_EltreumUI.borders.bordercolors
		local d = P.ElvUI_EltreumUI.borders.bordercolors
		return customcolorborders.r, customcolorborders.g, customcolorborders.b, customcolorborders.a, d.r, d.g, d.b, d.a
	end,
	function(_, r, g, b, a)
		local customcolorborders = E.db.ElvUI_EltreumUI.borders.bordercolors
		customcolorborders.r, customcolorborders.g, customcolorborders.b = r, g, b E:StaticPopup_Show('CONFIG_RL') ElvUI_EltreumUI:Borders()
	end, function() return E.db.ElvUI_EltreumUI.borders.classcolor end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders = ACH:Group(L["ActionBars"], nil, 2, nil,nil,nil,function() return E.db.ElvUI_EltreumUI.borders.borderautoadjust or not E.db.ElvUI_EltreumUI.borders.borders end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.header0 = ACH:Group(L["(All settings require a reload)"], nil, 1)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.header0.inline = true
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.header0.args.header1 = ACH:Description(L["Change the size of the borders:"], 2)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.header0.args.ABsize = ACH:Range(L["Actionbar Thickness"], nil, 3, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.baredgesize end, function(_, value) E.db.ElvUI_EltreumUI.borders.baredgesize = value ElvUI_EltreumUI:Borders() end, function() return E.db.ElvUI_EltreumUI.borders.borderautoadjust or not E.db.ElvUI_EltreumUI.borders.borders or not E.private.actionbar.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar1 = ACH:Group(L["Action Bar 1"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar1.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.bar1borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.bar1borders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar1.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar1.args.bar1xsize = ACH:Range(L["Bar 1 X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar1xborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar1xborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar1.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar1.args.bar1ysize = ACH:Range(L["Bar 1 Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar1yborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar1yborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar1.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar2 = ACH:Group(L["Action Bar 2"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar2.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.bar2borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.bar2borders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar2.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar2.args.bar2xsize = ACH:Range(L["Bar 2 X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar2xborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar2xborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar2.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar2.args.bar2ysize = ACH:Range(L["Bar 2 Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar2yborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar2yborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar2.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar3 = ACH:Group(L["Action Bar 3"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar3.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.bar3borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.bar3borders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar3.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar3.args.bar3xsize = ACH:Range(L["Bar 3 X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar3xborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar3xborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar3.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar3.args.bar3ysize = ACH:Range(L["Bar 3 Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar3yborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar3yborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar3.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar4 = ACH:Group(L["Action Bar 4"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar4.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.bar4borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.bar4borders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar4.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar4.args.bar4xsize = ACH:Range(L["Bar 4 X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar4xborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar4xborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar4.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar4.args.bar4ysize = ACH:Range(L["Bar 4 Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar4yborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar4yborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar4.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar5 = ACH:Group(L["Action Bar 5"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar5.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.bar5borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.bar5borders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar5.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar5.args.bar5xsize = ACH:Range(L["Bar 5 X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar5xborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar5xborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar5.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar5.args.bar5ysize = ACH:Range(L["Bar 5 Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar5yborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar5yborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar5.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar6 = ACH:Group(L["Action Bar 6"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar6.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.bar6borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.bar6borders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar6.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar6.args.bar6xsize = ACH:Range(L["Bar 6 X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar6xborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar6xborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar6.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.actionbar6.args.bar6ysize = ACH:Range(L["Bar 6 Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bar6yborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.bar6yborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.bar6.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.totem = ACH:Group(L["Shaman Totem Bar"], nil, 2,"tab",nil,nil,nil,not E.Wrath)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.totem.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.totembar end,function(_, value) E.db.ElvUI_EltreumUI.borders.totembar = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.totemBar.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.totem.args.bordertotemsize = ACH:Range(L["Shaman Totem Thickness"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.totemedgesize end, function(_, value) E.db.ElvUI_EltreumUI.borders.totemedgesize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.totemBar.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.totem.args.totemxsize = ACH:Range(L["Totem X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.totemxborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.totemxborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.totemBar.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.totem.args.totemysize = ACH:Range(L["Totem Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.totemyborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.totemyborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.totemBar.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.stance = ACH:Group(L["Stance Bar"], nil, 2,"tab",nil,nil,nil)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.stance.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.stanceborders end,function(_, value) E.db.ElvUI_EltreumUI.borders.stanceborders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.stanceBar.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.stance.args.borderstancesize = ACH:Range(L["Stance Bar Thickness"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.stanceedgesize end, function(_, value) E.db.ElvUI_EltreumUI.borders.stanceedgesize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.stanceBar.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.stance.args.stancexsize = ACH:Range(L["Stance X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.stancexborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.stancexborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.stanceBar.enablede end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.stance.args.stanceysize = ACH:Range(L["Stance Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.stanceyborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.stanceyborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.stanceBar.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.pet = ACH:Group(L["Pet Action Bar"], nil, 2,"tab",nil,nil,nil)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.pet.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.petactionborders end,function(_, value) E.db.ElvUI_EltreumUI.borders.petactionborders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.barPet.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.pet.args.borderpetabsize = ACH:Range(L["Pet Action Bar Thickness"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.petactionedgesize end, function(_, value) E.db.ElvUI_EltreumUI.borders.petactionedgesize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.barPet.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.pet.args.petactionxsize = ACH:Range(L["Pet Action Bar X offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.petactionxborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.petactionxborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.barPet.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.actionbarsborders.args.pet.args.petactionysize = ACH:Range(L["Pet Action Bar Y offset"], nil, 2, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.petactionyborder end, function(_, value) E.db.ElvUI_EltreumUI.borders.petactionyborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.actionbar.barPet.enabled end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders = ACH:Group(L["Unitframes"], nil, 2, nil,nil,nil,function() return E.db.ElvUI_EltreumUI.borders.borderautoadjust or not E.db.ElvUI_EltreumUI.borders.borders end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.header0 = ACH:Group(L["(All settings require a reload)"], nil, 1)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.header0.inline = true
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.header0.args.header1 = ACH:Description(L["Change the size of the borders:"], 2)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.header0.args.borderUFsize = ACH:Range(L["Unitframe Thickness"], nil, 3, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.playertargetsize end, function(_, value) E.db.ElvUI_EltreumUI.borders.playertargetsize = value ElvUI_EltreumUI:Borders() end, function() return not E.private.unitframe.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.header0.args.bordergroupUFsize = ACH:Range(L["Group Unitframe Thickness"], nil, 3, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.groupsize end, function(_, value) E.db.ElvUI_EltreumUI.borders.groupsize = value ElvUI_EltreumUI:Borders() end, function() return not E.private.unitframe.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.header0.args.bordercastbarsize = ACH:Range(L["Castbar Thickness"], nil, 3, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.playertargetcastsize end, function(_, value) E.db.ElvUI_EltreumUI.borders.playertargetcastsize = value ElvUI_EltreumUI:Borders() end, function() return not E.private.unitframe.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.player = ACH:Group(L["Player Border"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.player.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.playerborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.playerborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.player.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.player.args.borderxplayer = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xplayer end, function(_, value) E.db.ElvUI_EltreumUI.borders.xplayer = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.player.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.player.args.borderyplayer = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.yplayer end, function(_, value) E.db.ElvUI_EltreumUI.borders.yplayer = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.player.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.player.args.castbar = ACH:Description(L["Player Castbar Border"], 3, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.player.args.barcastplayer = ACH:Toggle(L["Enable"], nil, 4, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.playercastborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.playercastborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.player.castbar.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.player.args.borderxcastplayer = ACH:Range(L["Border X offset"], nil, 5, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xplayercast end, function(_, value) E.db.ElvUI_EltreumUI.borders.xplayercast = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.player.castbar.enable or not E.db.ElvUI_EltreumUI.borders.playercastborder end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.player.args.borderycastplayer = ACH:Range(L["Border Y offset"], nil, 5, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.yplayercast end, function(_, value) E.db.ElvUI_EltreumUI.borders.yplayercast = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.player.castbar.enable or not E.db.ElvUI_EltreumUI.borders.playercastborder end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.target = ACH:Group(L["Target Border"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.target.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.targetborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.targetborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.target.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.target.args.borderxtarget = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xtarget end, function(_, value) E.db.ElvUI_EltreumUI.borders.xtarget = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.target.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.target.args.borderytarget = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ytarget end, function(_, value) E.db.ElvUI_EltreumUI.borders.ytarget = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.target.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.target.args.castbar = ACH:Description(L["Target Castbar Border"], 3, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.target.args.barcasttarget = ACH:Toggle(L["Enable"], nil, 4, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.targetcastborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.targetcastborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.target.castbar.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.target.args.borderxcasttarget = ACH:Range(L["Border X offset"], nil, 5, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xcasttarget end, function(_, value) E.db.ElvUI_EltreumUI.borders.xcasttarget = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.target.castbar.enable or not E.db.ElvUI_EltreumUI.borders.targetcastborder end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.target.args.borderycasttarget = ACH:Range(L["Border Y offset"], nil, 5, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ycasttarget end, function(_, value) E.db.ElvUI_EltreumUI.borders.ycasttarget = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.target.castbar.enable or not E.db.ElvUI_EltreumUI.borders.targetcastborder end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.targettarget = ACH:Group(L["Target of Target Border"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.targettarget.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.targettargetborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.targettargetborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.targettarget.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.targettarget.args.borderxtargettarget = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xtargettarget end, function(_, value) E.db.ElvUI_EltreumUI.borders.xtargettarget = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.targettarget.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.targettarget.args.borderytargettarget = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ytargettarget end, function(_, value) E.db.ElvUI_EltreumUI.borders.ytargettarget = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.targettarget.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.party = ACH:Group(L["Party Border"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.party.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.partyborders end,function(_, value) E.db.ElvUI_EltreumUI.borders.partyborders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.party.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.party.args.borderxparty = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.partysizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.partysizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.party.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.party.args.borderyparty = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.partysizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.partysizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.party.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid1 = ACH:Group(L["Raid1 Border"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid1.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.raidborders end,function(_, value) E.db.ElvUI_EltreumUI.borders.raidborders = value ElvUI_EltreumUI:Borders() end, function() return (not E.db.ElvUI_EltreumUI.borders.raidborders and not E.db.unitframe.units.raid1.enable) or (not E.db.ElvUI_EltreumUI.borders.raidborders and not E.private.unitframe.disabledBlizzardFrames.raid) end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid1.args.borderxraid1 = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.raidsizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.raidsizex = value ElvUI_EltreumUI:Borders() end, function() return (not E.db.ElvUI_EltreumUI.borders.raidborders and not E.db.unitframe.units.raid1.enable) or (not E.db.ElvUI_EltreumUI.borders.raidborders and not E.private.unitframe.disabledBlizzardFrames.raid) end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid1.args.borderyraid1 = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.raidsizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.raidsizey = value ElvUI_EltreumUI:Borders() end, function() return (not E.db.ElvUI_EltreumUI.borders.raidborders and not E.db.unitframe.units.raid1.enable) or (not E.db.ElvUI_EltreumUI.borders.raidborders and not E.private.unitframe.disabledBlizzardFrames.raid) end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid2 = ACH:Group(L["Raid2 Border"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid2.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.raid2borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.raid2borders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.raid2.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid2.args.borderxraid2 = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.raid2sizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.raid2sizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.raid2.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid2.args.borderyraid2 = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.raid2sizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.raid2sizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.raid2.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid3 = ACH:Group(L["Raid3 Border"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid3.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.raid40borders end,function(_, value) E.db.ElvUI_EltreumUI.borders.raid40borders = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.raid3.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid3.args.borderxraid3 = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.raid40sizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.raid40sizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.raid3.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.raid3.args.borderyraid3 = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.raid40sizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.raid40sizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.raid3.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus = ACH:Group(L["Focus Border"], nil, 2,"tab", nil, nil, nil, E.Classic)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.focusborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.focusborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focus.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus.args.borderxfocus = ACH:Range(L["Focus Thickness"], nil, 1, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.focussize end, function(_, value) E.db.ElvUI_EltreumUI.borders.focussize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focus.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus.args.borderxfocus = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xfocus end, function(_, value) E.db.ElvUI_EltreumUI.borders.xfocus = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focus.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus.args.borderyfocus = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.yfocus end, function(_, value) E.db.ElvUI_EltreumUI.borders.yfocus = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focus.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus.args.castbar = ACH:Description(L["Focus Castbar Border"], 3, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus.args.barcastfocus = ACH:Toggle(L["Enable"], nil, 4, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.focuscastborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.focuscastborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focus.castbar.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus.args.borderxcastfocus = ACH:Range(L["Border X offset"], nil, 5, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xcastfocus end, function(_, value) E.db.ElvUI_EltreumUI.borders.xcastfocus = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focus.castbar.enable or not E.db.ElvUI_EltreumUI.borders.focuscastborder end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focus.args.borderycastfocus = ACH:Range(L["Border Y offset"], nil, 5, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ycastfocus end, function(_, value) E.db.ElvUI_EltreumUI.borders.ycastfocus = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focus.castbar.enable or not E.db.ElvUI_EltreumUI.borders.focuscastborder end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focustarget = ACH:Group(L["Focus Target Border"], nil, 2,"tab", nil, nil, nil, E.Classic)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focustarget.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.focustargetborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.focustargetborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focustarget.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focustarget.args.borderxfocustarget = ACH:Range(L["Focus Thickness"], nil, 1, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.focussize end, function(_, value) E.db.ElvUI_EltreumUI.borders.focussize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focustarget.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focustarget.args.borderxfocustarget = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xfocustarget end, function(_, value) E.db.ElvUI_EltreumUI.borders.xfocustarget = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focustarget.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.focustarget.args.borderyfocustarget = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.yfocustarget end, function(_, value) E.db.ElvUI_EltreumUI.borders.yfocustarget = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.focustarget.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.boss = ACH:Group(L["Boss Border"], nil, 2,"tab", nil, nil, nil, E.Classic)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.boss.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.bossborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.bossborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.boss.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.boss.args.borderxboss = ACH:Range(L["Boss Thickness"], nil, 1, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.bosssize end, function(_, value) E.db.ElvUI_EltreumUI.borders.bosssize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.boss.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.boss.args.borderxboss = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xboss end, function(_, value) E.db.ElvUI_EltreumUI.borders.xboss = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.boss.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.boss.args.borderyboss = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.yboss end, function(_, value) E.db.ElvUI_EltreumUI.borders.yboss = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.boss.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.pet = ACH:Group(L["Pet Border"], nil, 2,"tab", nil, nil, nil, E.Classic)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.pet.args.enable = ACH:Toggle(L["Enable"], nil, 1, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.petborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.petborder = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.pet.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.pet.args.borderxpet = ACH:Range(L["Pet Thickness"], nil, 1, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.petsize end, function(_, value) E.db.ElvUI_EltreumUI.borders.petsize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.pet.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.pet.args.borderxpet = ACH:Range(L["Border X offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.petsizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.petsizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.pet.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.unitframeborders.args.pet.args.borderypet = ACH:Range(L["Border Y offset"], nil, 2, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.petsizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.petsizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.unitframe.units.pet.enable end)
	ElvUI_EltreumUI.Options.args.borders.args.nameplateborders = ACH:Group(L["Nameplate"], nil, 2, nil,nil,nil,function() return E.db.ElvUI_EltreumUI.borders.borderautoadjust or not E.db.ElvUI_EltreumUI.borders.borders end)
	ElvUI_EltreumUI.Options.args.borders.args.nameplateborders.args.powerbar = ACH:Description(L["Nameplate Power Bar Border"], 1, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.borders.args.nameplateborders.args.enable = ACH:Toggle(L["Enable"], nil, 2, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.powerbarborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.powerbarborder = value ElvUI_EltreumUI:Borders() end, function() return not E.private.ElvUI_EltreumUI.nameplatepower end)
	ElvUI_EltreumUI.Options.args.borders.args.nameplateborders.args.borderpowerbarsize = ACH:Range(L["Nameplate Power Bar Thickness"], nil, 3, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.powerbarsize end, function(_, value) E.db.ElvUI_EltreumUI.borders.powerbarsize = value ElvUI_EltreumUI:Borders() end, function() return not E.private.ElvUI_EltreumUI.nameplatepower end)
	ElvUI_EltreumUI.Options.args.borders.args.nameplateborders.args.borderxpowerbar = ACH:Range(L["Border X offset"], nil, 4, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.xpowerbar end, function(_, value) E.db.ElvUI_EltreumUI.borders.xpowerbar = value ElvUI_EltreumUI:Borders() end, function() return not E.private.ElvUI_EltreumUI.nameplatepower end)
	ElvUI_EltreumUI.Options.args.borders.args.nameplateborders.args.borderypowerbar = ACH:Range(L["Border Y offset"], nil, 4, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ypowerbar end, function(_, value) E.db.ElvUI_EltreumUI.borders.ypowerbar = value ElvUI_EltreumUI:Borders() end, function() return not E.private.ElvUI_EltreumUI.nameplatepower end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder = ACH:Group(L["Other"], nil, 4, "tab",nil,nil,function() return E.db.ElvUI_EltreumUI.borders.borderautoadjust or not E.db.ElvUI_EltreumUI.borders.borders end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.minimap = ACH:Group(MINIMAP_LABEL, nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.minimap.args.enable = ACH:Toggle(L["Enable"].." "..MINIMAP_LABEL, nil, 3, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.minimapborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.minimapborder = value E:StaticPopup_Show('CONFIG_RL') ElvUI_EltreumUI:Borders() end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.minimap.args.header1 = ACH:Description(L["Change the size of the borders:"], 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.minimap.args.borderthickness = ACH:Range(L["Minimap Thickness"], nil, 5, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.minimapsize end, function(_, value) E.db.ElvUI_EltreumUI.borders.minimapsize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.minimapborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.minimap.args.borderxminimap = ACH:Range(MINIMAP_LABEL.." "..L["Border X offset"], nil, 6, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.minimapsizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.minimapsizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.minimapborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.minimap.args.borderyminimap = ACH:Range(MINIMAP_LABEL.." "..L["Border Y offset"], nil, 6, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.minimapsizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.minimapsizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.minimapborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.aura = ACH:Group(AURAS, nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.aura.args.enable = ACH:Toggle(L["Enable"].." "..AURAS, nil, 3, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.auraborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.auraborder = value E:StaticPopup_Show('CONFIG_RL') ElvUI_EltreumUI:Borders() end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.aura.args.borderthickness = ACH:Range(L["Aura Thickness"], nil, 5, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.aurasize end, function(_, value) E.db.ElvUI_EltreumUI.borders.aurasize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.aura.args.borderxauras = ACH:Range(L["Aura Border X offset"], nil, 6, { min = 1, max = 100, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.aurasizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.aurasizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.aura.args.borderyauras = ACH:Range(L["Aura Border Y offset"], nil, 6, { min = 1, max = 100, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.aurasizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.aurasizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.aura.args.borderxaurasdebuff = ACH:Range(L["Debuff Aura Border X offset"], nil, 7, { min = 1, max = 100, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.debuffaurasizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.debuffaurasizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.aura.args.borderyaurasdebuff = ACH:Range(L["Debuff Aura Border Y offset"], nil, 7, { min = 1, max = 100, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.debuffaurasizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.debuffaurasizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.ufaura = ACH:Group(L["Unitframe Auras"], nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.ufaura.args.enable = ACH:Toggle(L["Enable Unitframe Auras"], nil, 3, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.auraborderuf end,function(_, value) E.db.ElvUI_EltreumUI.borders.auraborderuf = value E:StaticPopup_Show('CONFIG_RL') ElvUI_EltreumUI:Borders() end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.ufaura.args.borderthickness = ACH:Range(L["Aura Thickness"], nil, 5, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.aurasize end, function(_, value) E.db.ElvUI_EltreumUI.borders.aurasize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborderuf end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.ufaura.args.borderxauras = ACH:Range(L["Unitframe Aura Border X offset"], nil, 6, { min = 1, max = 100, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ufbuffsizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.ufbuffsizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborderuf end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.ufaura.args.borderyauras = ACH:Range(L["Unitframe Aura Border Y offset"], nil, 6, { min = 1, max = 100, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ufbuffsizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.ufbuffsizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborderuf end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.ufaura.args.borderxaurasdebuff = ACH:Range(L["Unitframes Debuff Aura Border X offset"], nil, 7, { min = 1, max = 100, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ufdebuffsizex end, function(_, value) E.db.ElvUI_EltreumUI.borders.ufdebuffsizex = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborderuf end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.ufaura.args.borderyaurasdebuff = ACH:Range(L["Unitframes Debuff Aura Border Y offset"], nil, 7, { min = 1, max = 100, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.ufdebuffsizey end, function(_, value) E.db.ElvUI_EltreumUI.borders.ufdebuffsizey = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.auraborderuf end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.chat = ACH:Group(BINDING_HEADER_CHAT, nil, 2,"tab")
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.chat.args.enable = ACH:Toggle(L["Enable"].." "..BINDING_HEADER_CHAT, nil, 3, nil, false,"full",function() return E.db.ElvUI_EltreumUI.borders.chatborder end,function(_, value) E.db.ElvUI_EltreumUI.borders.chatborder = value E:StaticPopup_Show('CONFIG_RL') ElvUI_EltreumUI:Borders() end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.chat.args.borderthickness = ACH:Range(L["Chat Thickness"], nil, 5, { min = 1, max = 200, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.chatsize end, function(_, value) E.db.ElvUI_EltreumUI.borders.chatsize = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.chatborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.chat.args.leftchatx = ACH:Range(L["Left Chat Border X offset"], nil, 6, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.leftchatborderx end, function(_, value) E.db.ElvUI_EltreumUI.borders.leftchatborderx = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.chatborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.chat.args.leftchaty = ACH:Range(L["Left Chat Border Y offset"], nil, 6, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.leftchatbordery end, function(_, value) E.db.ElvUI_EltreumUI.borders.leftchatbordery = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.chatborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.chat.args.rightchatx = ACH:Range(L["Right Chat Border X offset"], nil, 7, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.rightchatborderx end, function(_, value) E.db.ElvUI_EltreumUI.borders.rightchatborderx = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.chatborder end)
	ElvUI_EltreumUI.Options.args.borders.args.otherborder.args.chat.args.rightchaty = ACH:Range(L["Right Chat Border Y offset"], nil, 7, { min = 1, max = 800, step = 0.1 }, "full", function() return E.db.ElvUI_EltreumUI.borders.rightchatbordery end, function(_, value) E.db.ElvUI_EltreumUI.borders.rightchatbordery = value ElvUI_EltreumUI:Borders() end, function() return not E.db.ElvUI_EltreumUI.borders.chatborder end)

	--combat music
	ElvUI_EltreumUI.Options.args.combatmusic = ACH:Group(E:TextGradient(L["Combat Music"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Play custom music during fights and boss fights"], 85, 'tab')
	ElvUI_EltreumUI.Options.args.combatmusic.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\music'
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat = ACH:Group(L["Combat Music"], nil, 1)
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.enable = ACH:Toggle(L["Enable Combat Music"], L["Enable music during combat"], 4, nil, false,"full",function() return E.private.ElvUI_EltreumUI.combatmusic.enable end,function(_, value) E.private.ElvUI_EltreumUI.combatmusic.enable = value E:StaticPopup_Show('PRIVATE_RL') end)
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.disableinstance = ACH:Toggle(L["Disable Combat Music in Instances"], L["Disable music during combat in instances"], 5, nil, false,"full",function() return E.private.ElvUI_EltreumUI.combatmusic.disableinstance end,function(_, value) E.private.ElvUI_EltreumUI.combatmusic.disableinstance = value E:StaticPopup_Show('PRIVATE_RL') end, function() return not E.private.ElvUI_EltreumUI.combatmusic.enable end)
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.header1 = ACH:Description(L["Normal Combat Music"], 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.filepath = ACH:Group(L["Name of file inside Interface\\Addons"], nil, 7)
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.filepath.inline = true
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.filepath.args.header1 = ACH:Description(L["Example: "].."mymusic.mp3", 1)
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.filepath.args.shuffle = ACH:Toggle(L["Shuffle"], L["Randomize Music Order"], 2, nil, false,"full",function() return E.db.ElvUI_EltreumUI.otherstuff.musicshuffle end,function(_, value) E.db.ElvUI_EltreumUI.otherstuff.musicshuffle = value E:StaticPopup_Show('PRIVATE_RL') end, function() return not E.private.ElvUI_EltreumUI.combatmusic.enable end)
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.filepath.args.input = ACH:Input("", "", 3, false, "full", function() return E.private.ElvUI_EltreumUI.combatmusic.musicfile end, function(_, value) E.private.ElvUI_EltreumUI.combatmusic.musicfile = value E:StaticPopup_Show('PRIVATE_RL') end, function() return not E.private.ElvUI_EltreumUI.combatmusic.enable end, E.db.ElvUI_EltreumUI.otherstuff.musicshuffle)
	ElvUI_EltreumUI.Options.args.combatmusic.args.combat.args.filepath.args.inputshuffle = ACH:Input(L["Shuffle List"], L["Split files with a comma, such as: file1.mp3,file2.mp3"], 3, false, "full", function() return E.private.ElvUI_EltreumUI.combatmusic.shufflelist end, function(_, value) E.private.ElvUI_EltreumUI.combatmusic.shufflelist = value E:StaticPopup_Show('PRIVATE_RL') end, function() return not E.private.ElvUI_EltreumUI.combatmusic.enable end, not E.db.ElvUI_EltreumUI.otherstuff.musicshuffle)
	ElvUI_EltreumUI.Options.args.combatmusic.args.boss = ACH:Group(L["Boss Music"], nil, 2)
	ElvUI_EltreumUI.Options.args.combatmusic.args.boss.args.enable = ACH:Toggle(L["Enable Boss Music"], L["Enable music during combat"], 4, nil, false,"full",function() return E.private.ElvUI_EltreumUI.combatmusic.bossmusic end,function(_, value) E.private.ElvUI_EltreumUI.combatmusic.bossmusic = value E:StaticPopup_Show('PRIVATE_RL') end)
	ElvUI_EltreumUI.Options.args.combatmusic.args.boss.args.header1 = ACH:Description(L["Boss Combat Music"], 6, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.combatmusic.args.boss.args.filepath = ACH:Group(L["Name of file inside Interface\\Addons"], nil, 7)
	ElvUI_EltreumUI.Options.args.combatmusic.args.boss.args.filepath.inline = true
	ElvUI_EltreumUI.Options.args.combatmusic.args.boss.args.filepath.args.header1 = ACH:Description(L["Example: "].."mymusic.mp3", 1)
	ElvUI_EltreumUI.Options.args.combatmusic.args.boss.args.filepath.args.input = ACH:Input("", "", 3, false, "full", function() return E.private.ElvUI_EltreumUI.combatmusic.bossfile end, function(_, value) E.private.ElvUI_EltreumUI.combatmusic.bossmusic = value E:StaticPopup_Show('PRIVATE_RL') end, function() return not E.private.ElvUI_EltreumUI.combatmusic.bossmusic end)

	--custom glow
	ElvUI_EltreumUI.Options.args.customglow = ACH:Group(E:TextGradient(L["Custom Glow"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Fully customize how action bars glow and add glows to debuffs on unitframes"], 85, 'tab')
	ElvUI_EltreumUI.Options.args.customglow.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\customglow'
	ElvUI_EltreumUI.Options.args.customglow.args.general = ACH:Group(L["General"], nil, 1)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.header1 = ACH:Description(L["Replace Blizzards Default Glow with a Custom Glow"], 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enableab = ACH:Toggle(L["Enable on Action Bars"], nil, 4, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.enable end,function(_, value) E.db.ElvUI_EltreumUI.glow.enable = value E:StaticPopup_Show('CONFIG_RL') end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enablepet = ACH:Toggle(L["Enable on Pet Bar"], nil, 4, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.enablepet end,function(_, value) E.db.ElvUI_EltreumUI.glow.enablepet = value E:StaticPopup_Show('CONFIG_RL') end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enableuf = ACH:Toggle(L["Enable on Unitframes"], L["Add a glow when Unitframes have a debuff"], 4, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.enableUFs end,function(_, value) E.db.ElvUI_EltreumUI.glow.enableUFs = value E:StaticPopup_Show('CONFIG_RL') end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enablenp = ACH:Toggle(L["Enable on Nameplate"], L["Add a glow when buffs or debuffs are expiring on nameplates"], 5, nil, false,"full",function() return E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow end,function(_, value) E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow = value E:StaticPopup_Show('CONFIG_RL') end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.debufftimer = ACH:Range(L["Debuff Timer"], L["Time at which the glow will start"], 6, { min = 1, max = 30, step = 1 }, "full", function() return E.db.ElvUI_EltreumUI.glow.numberdebuff end, function(_, value) E.db.ElvUI_EltreumUI.glow.numberdebuff = value end, function() return not E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.header2 = ACH:Description(L["Shaman Totems"], 7, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enableshamantotem = ACH:Toggle(L["Enable on Shaman Totems"], nil, 8, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.enabletotem end,function(_, value) E.db.ElvUI_EltreumUI.glow.enabletotem = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enableshamantotem1 = ACH:Toggle(L["Enable on Shaman Fire Totem"], nil, 9, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.totem1 end,function(_, value) E.db.ElvUI_EltreumUI.glow.totem1 = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enableshamantotem2 = ACH:Toggle(L["Enable on Shaman Earth Totem"], nil, 9, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.totem2 end,function(_, value) E.db.ElvUI_EltreumUI.glow.totem2 = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enableshamantotem3 = ACH:Toggle(L["Enable on Shaman Water Totem"], nil, 9, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.totem3 end,function(_, value) E.db.ElvUI_EltreumUI.glow.totem3 = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.enableshamantotem4 = ACH:Toggle(L["Enable on Shaman Air Totem"], nil, 9, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.totem4 end,function(_, value) E.db.ElvUI_EltreumUI.glow.totem4 = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.header3 = ACH:Description(L["Select a Type"], 10, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full")
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.autocast = ACH:Toggle(L["Autocast"], L["Adds an autocast style glow using class color"], 11, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.autocast end,function(_, value) E.db.ElvUI_EltreumUI.glow.autocast = value end, function() return not (E.db.ElvUI_EltreumUI.glow.enable or E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow or E.db.ElvUI_EltreumUI.glow.enablepet or E.db.ElvUI_EltreumUI.glow.enableUFs) or E.db.ElvUI_EltreumUI.glow.pixel or E.db.ElvUI_EltreumUI.glow.blizzard end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.pixel = ACH:Toggle(L["Pixel"], L["Adds a pixel style glow using class color"], 11, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.pixel end,function(_, value) E.db.ElvUI_EltreumUI.glow.pixel = value end, function() return not (E.db.ElvUI_EltreumUI.glow.enable or E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow or E.db.ElvUI_EltreumUI.glow.enablepet or E.db.ElvUI_EltreumUI.glow.enableUFs) or E.db.ElvUI_EltreumUI.glow.autocast or E.db.ElvUI_EltreumUI.glow.blizzard end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.blizzard = ACH:Toggle(L["Blizzard"], L["Adds an autocast style glow using class color"], 11, nil, false,"full",function() return E.db.ElvUI_EltreumUI.glow.blizzard end,function(_, value) E.db.ElvUI_EltreumUI.glow.blizzard = value end, function() return not (E.db.ElvUI_EltreumUI.glow.enable or E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow or E.db.ElvUI_EltreumUI.glow.enablepet or E.db.ElvUI_EltreumUI.glow.enableUFs) or E.db.ElvUI_EltreumUI.glow.autocast or E.db.ElvUI_EltreumUI.glow.pixel end)
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.header4 = ACH:Description(L["Preview the Glow"], 12, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full")
	ElvUI_EltreumUI.Options.args.customglow.args.general.args.preview = ACH:Execute(PREVIEW, L["Preview the Glow, you will need to toggle it off and on to update the glow"], 13, function() ElvUI_EltreumUI:PreviewGlow() end,nil,false,'full')
	ElvUI_EltreumUI.Options.args.customglow.args.colors = ACH:Group(L["Glow Colors"], nil, 2,"tab",nil,nil,function() return not E.db.ElvUI_EltreumUI.glow.enable and not E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow and not E.db.ElvUI_EltreumUI.glow.enablepet and not E.db.ElvUI_EltreumUI.glow.enableUFs end)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.header1 = ACH:Description(L["Action Bars"], 1, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full")
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.classcolorab = ACH:Toggle(L["Use Class Colors"], L["Toggle Class Colored glows"], 2, nil, false,nil,function() return E.db.ElvUI_EltreumUI.glow.colorclass end,function(_, value) E.db.ElvUI_EltreumUI.glow.colorclass = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable end)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.customcolorab = ACH:Color(L["Custom Color"], nil, 3, false, nil, function()
		local glowcustomcolor = E.db.ElvUI_EltreumUI.glow.glowcustomcolor
		local d = P.ElvUI_EltreumUI.glow.glowcustomcolor
		return glowcustomcolor.r, glowcustomcolor.g, glowcustomcolor.b, glowcustomcolor.a, d.r, d.g, d.b, d.a
	end,
	function(_, r, g, b, a)
		local glowcustomcolor = E.db.ElvUI_EltreumUI.glow.glowcustomcolor
		glowcustomcolor.r, glowcustomcolor.g, glowcustomcolor.b = r, g, b E:StaticPopup_Show('CONFIG_RL')
	end, function() return E.db.ElvUI_EltreumUI.glow.colorclass or not E.db.ElvUI_EltreumUI.glow.enable end)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.header2 = ACH:Description(L["Pet Bar"], 4, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full")
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.classcolorpet = ACH:Toggle(L["Use Class Colors"], L["Toggle Class Colored glows"], 5, nil, false,nil,function() return E.db.ElvUI_EltreumUI.glow.colorclasspet end,function(_, value) E.db.ElvUI_EltreumUI.glow.colorclasspet = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enablepet end)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.customcolorpet = ACH:Color(L["Custom Color"], nil, 6, false, nil, function()
		local glowcustomcolorpet = E.db.ElvUI_EltreumUI.glow.glowcustomcolorpet
		local d = P.ElvUI_EltreumUI.glow.glowcustomcolorpet
		return glowcustomcolorpet.r, glowcustomcolorpet.g, glowcustomcolorpet.b, glowcustomcolorpet.a, d.r, d.g, d.b, d.a
	end,
	function(_, r, g, b, a)
		local glowcustomcolorpet = E.db.ElvUI_EltreumUI.glow.glowcustomcolorpet
		glowcustomcolorpet.r, glowcustomcolorpet.g, glowcustomcolorpet.b = r, g, b E:StaticPopup_Show('CONFIG_RL')
	end, function() return E.db.ElvUI_EltreumUI.glow.colorclasspet or not E.db.ElvUI_EltreumUI.glow.enablepet end)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.header3 = ACH:Description(L["Nameplate Buff/Debuff"], 7, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full")
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.classcolornp = ACH:Toggle(L["Use Class Colors"], L["Toggle Class Colored glows"], 8, nil, false,nil,function() return E.db.ElvUI_EltreumUI.glow.colorclassnp end,function(_, value) E.db.ElvUI_EltreumUI.glow.colorclassnp = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow end)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.customcolornp = ACH:Color(L["Custom Color"], nil, 9, false, nil, function()
		local glowcustomcolornp = E.db.ElvUI_EltreumUI.glow.glowcustomcolornp
		local d = P.ElvUI_EltreumUI.glow.glowcustomcolornp
		return glowcustomcolornp.r, glowcustomcolornp.g, glowcustomcolornp.b, glowcustomcolornp.a, d.r, d.g, d.b, d.a
	end,
	function(_, r, g, b, a)
		local glowcustomcolornp = E.db.ElvUI_EltreumUI.glow.glowcustomcolornp
		glowcustomcolornp.r, glowcustomcolornp.g, glowcustomcolornp.b = r, g, b E:StaticPopup_Show('CONFIG_RL')
	end, function() return E.db.ElvUI_EltreumUI.glow.colorclassnp or not E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow end)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem1 = ACH:Description(L["Shaman Fire Totem"], 10, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem1typecolor = ACH:Toggle(L["Use Type Colors"], L["Toggle Totem to use it's own Type Colors"], 11, nil, false,nil,function() return E.db.ElvUI_EltreumUI.glow.totemtypecolor end,function(_, value) E.db.ElvUI_EltreumUI.glow.totemtypecolor = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem1customcolor = ACH:Color(L["Custom Color"], nil, 12, false, nil, function()
		local glowtotem1customcolor = E.db.ElvUI_EltreumUI.glow.glowtotem1customcolor
		local d = P.ElvUI_EltreumUI.glow.glowtotem1customcolor
		return glowtotem1customcolor.r, glowtotem1customcolor.g, glowtotem1customcolor.b, glowtotem1customcolor.a, d.r, d.g, d.b, d.a
	end,
	function(_, r, g, b, a)
		local glowtotem1customcolor = E.db.ElvUI_EltreumUI.glow.glowtotem1customcolor
		glowtotem1customcolor.r, glowtotem1customcolor.g, glowtotem1customcolor.b = r, g, b E:StaticPopup_Show('CONFIG_RL')
	end, function() return E.db.ElvUI_EltreumUI.glow.totemtypecolor or not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem2 = ACH:Description(L["Shaman Earth Totem"], 13, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem2typecolor = ACH:Toggle(L["Use Type Colors"], L["Toggle Totem to use it's own Type Colors"], 14, nil, false,nil,function() return E.db.ElvUI_EltreumUI.glow.totemtypecolor end,function(_, value) E.db.ElvUI_EltreumUI.glow.totemtypecolor = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem2customcolor = ACH:Color(L["Custom Color"], nil, 15, false, nil, function()
		local glowtotem2customcolor = E.db.ElvUI_EltreumUI.glow.glowtotem2customcolor
		local d = P.ElvUI_EltreumUI.glow.glowtotem2customcolor
		return glowtotem2customcolor.r, glowtotem2customcolor.g, glowtotem2customcolor.b, glowtotem2customcolor.a, d.r, d.g, d.b, d.a
	end,
	function(_, r, g, b, a)
		local glowtotem2customcolor = E.db.ElvUI_EltreumUI.glow.glowtotem2customcolor
		glowtotem2customcolor.r, glowtotem2customcolor.g, glowtotem2customcolor.b = r, g, b E:StaticPopup_Show('CONFIG_RL')
	end, function() return E.db.ElvUI_EltreumUI.glow.totemtypecolor or not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem3 = ACH:Description(L["Shaman Water Totem"], 16, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem3typecolor = ACH:Toggle(L["Use Type Colors"], L["Toggle Totem to use it's own Type Colors"], 17, nil, false,nil,function() return E.db.ElvUI_EltreumUI.glow.totemtypecolor end,function(_, value) E.db.ElvUI_EltreumUI.glow.totemtypecolor = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem3customcolor = ACH:Color(L["Custom Color"], nil, 18, false, nil, function()
		local glowtotem3customcolor = E.db.ElvUI_EltreumUI.glow.glowtotem3customcolor
		local d = P.ElvUI_EltreumUI.glow.glowtotem3customcolor
		return glowtotem3customcolor.r, glowtotem3customcolor.g, glowtotem3customcolor.b, glowtotem3customcolor.a, d.r, d.g, d.b, d.a
	end,
	function(_, r, g, b, a)
		local glowtotem3customcolor = E.db.ElvUI_EltreumUI.glow.glowtotem3customcolor
		glowtotem3customcolor.r, glowtotem3customcolor.g, glowtotem3customcolor.b = r, g, b E:StaticPopup_Show('CONFIG_RL')
	end, function() return E.db.ElvUI_EltreumUI.glow.totemtypecolor or not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem4 = ACH:Description(L["Shaman Air Totem"], 19, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem4typecolor = ACH:Toggle(L["Use Type Colors"], L["Toggle Totem to use it's own Type Colors"], 20, nil, false,nil,function() return E.db.ElvUI_EltreumUI.glow.totemtypecolor end,function(_, value) E.db.ElvUI_EltreumUI.glow.totemtypecolor = value E:StaticPopup_Show('CONFIG_RL') end, function() return not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.colors.args.totem4customcolor = ACH:Color(L["Custom Color"], nil, 21, false, nil, function()
		local glowtotem4customcolor = E.db.ElvUI_EltreumUI.glow.glowtotem4customcolor
		local d = P.ElvUI_EltreumUI.glow.glowtotem4customcolor
		return glowtotem4customcolor.r, glowtotem4customcolor.g, glowtotem4customcolor.b, glowtotem4customcolor.a, d.r, d.g, d.b, d.a
	end,
	function(_, r, g, b, a)
		local glowtotem4customcolor = E.db.ElvUI_EltreumUI.glow.glowtotem4customcolor
		glowtotem4customcolor.r, glowtotem4customcolor.g, glowtotem4customcolor.b = r, g, b E:StaticPopup_Show('CONFIG_RL')
	end, function() return E.db.ElvUI_EltreumUI.glow.totemtypecolor or not E.db.ElvUI_EltreumUI.glow.enable or not E.db.ElvUI_EltreumUI.glow.enabletotem end, E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel = ACH:Group(L["Pixel Glow"], nil, 3, "tab", nil, nil, function() return not E.db.ElvUI_EltreumUI.glow.enable and not E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.npglow and not E.db.ElvUI_EltreumUI.glow.enablepet and not E.db.ElvUI_EltreumUI.glow.enableUFs end)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.header1 = ACH:Description("", 1, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.pixelborder = ACH:Toggle(L["Enable Pixel Border"], L["Enable a border for the Pixel Glow"], 2, nil, false,nil,function() return E.db.ElvUI_EltreumUI.glow.borderpixel end,function(_, value) E.db.ElvUI_EltreumUI.glow.borderpixel = value end)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.header2 = ACH:Description("", 3, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.numberpixel = ACH:Range(L["Number of Pixels (Default is 9)"], L["Set the number of pixels in pixel glow"], 4, { min = 1, max = 20, step = 1 }, "full", function() return E.db.ElvUI_EltreumUI.glow.numberpixel end, function(_, value) E.db.ElvUI_EltreumUI.glow.numberpixel = value end)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.header3 = ACH:Description("", 5, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.pixelfrequency = ACH:Range(L["Pixel Frequency (Default is 1)"], L["Set the frequency pixel glow"], 6, { min = -10, max = 10, step = 0.01 }, "full", function() return E.db.ElvUI_EltreumUI.glow.frequencypixel end, function(_, value) E.db.ElvUI_EltreumUI.glow.frequencypixel = value end)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.header4 = ACH:Description("", 7, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.pixellength = ACH:Range(L["Pixel Length (Default is 3)"], L["Set the length of pixels"], 8, { min = 1, max = 20, step = 1 }, "full", function() return E.db.ElvUI_EltreumUI.glow.lengthpixel end, function(_, value) E.db.ElvUI_EltreumUI.glow.lengthpixel = value end)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.header5 = ACH:Description("", 9, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.pixelthickness = ACH:Range(L["Pixel Thickness (Default is 5)"], L["Set the thickness of pixels"], 10, { min = 1, max = 10, step = 1 }, "full", function() return E.db.ElvUI_EltreumUI.glow.thicknesspixel end, function(_, value) E.db.ElvUI_EltreumUI.glow.thicknesspixel = value end)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.header6 = ACH:Description("", 11, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.pixelxoffset = ACH:Range(L["Pixel Horizontal Offset (Default is 5)"], L["Set the horizontal offset of pixels"], 12, { min = 1, max = 10, step = 1 }, "full", function() return E.db.ElvUI_EltreumUI.glow.pixelxOffset end, function(_, value) E.db.ElvUI_EltreumUI.glow.pixelxOffset = value end)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.header7 = ACH:Description("", 13, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\EltreumHeader', 3240, 1 end, nil, nil, nil, "full", E.Retail)
	ElvUI_EltreumUI.Options.args.customglow.args.pixel.args.pixelyoffset = ACH:Range(L["Pixel Vertical Offset (Default is 5)"], L["Set the vertical offset of pixels"], 14, { min = 1, max = 10, step = 1 }, "full", function() return E.db.ElvUI_EltreumUI.glow.pixelyOffset end, function(_, value) E.db.ElvUI_EltreumUI.glow.pixelyOffset = value end)












	--ACH:Toggle(name, desc, order, tristate, confirm, width, get, set, disabled, hidden)
	--ACH:Group(name, desc, order, childGroups, get, set, disabled, hidden, func)
	--ACH:Header(name, order, get, set, hidden)
	--ACH:Execute(name, desc, order, func, image, confirm, width, get, set, disabled, hidden)
	--ACH:Description(name, order, fontSize, image, imageCoords, imageWidth, imageHeight, width, hidden)
	--ACH:Select(name, desc, order, values, confirm, width, get, set, disabled, hidden)
	--ACH:Input(name, desc, order, multiline, width, get, set, disabled, hidden, validate)
	--ACH:Color(name, desc, order, alpha, width, get, set, disabled, hidden)
	--ACH:Range(name, desc, order, values, width, get, set, disabled, hidden)
	--ACH:SharedMediaFont(name, desc, order, width, get, set, disabled, hidden)
	--ACH:SharedMediaSound(name, desc, order, width, get, set, disabled, hidden)
	--ACH:SharedMediaStatusbar(name, desc, order, width, get, set, disabled, hidden)
	--ACH:SharedMediaBackground(name, desc, order, width, get, set, disabled, hidden)
	--ACH:SharedMediaBorder(name, desc, order, width, get, set, disabled, hidden)



































	--weakauras anchor
	ElvUI_EltreumUI.Options.args.weakauras = ACH:Group(E:TextGradient(L["WeakAuras"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Learn how to use the WeakAuras anchors to attach WeakAuras and use ElvUI's movers to move them"], 85)
	ElvUI_EltreumUI.Options.args.weakauras.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\weakauras'
	ElvUI_EltreumUI.Options.args.weakauras.args.header1 = ACH:Description(L["WeakAuras"], 2, nil)
	ElvUI_EltreumUI.Options.args.weakauras.args.header2 = ACH:Description(L["You can set your Weakauras to anchor to custom locations making it easier to move them"], 3, nil)
	ElvUI_EltreumUI.Options.args.weakauras.args.header3 = ACH:Description(L["In order to use this feature, simply go to your Weakaura, and go to its Group options, scroll down to Position Settings and set the Anchored To Select Frame, then type either |cff82B4ffEltruismWA|r or |cff82B4ffEltruismConsumablesWA|r to anchor the weakaura to the preset location"], 4, nil)
	ElvUI_EltreumUI.Options.args.weakauras.args.header4 = ACH:Description(L["Setting "].."|cff82B4ffEltruismWA|r"..L[" or "].."|cff82B4ffEltruismConsumablesWA|r"..L[" as the anchor will move them to the locations, keep in mind you might need to change the X and Y offset of the weakaura to zero"], 5, nil)
	ElvUI_EltreumUI.Options.args.weakauras.args.image = ACH:Group(L["How to use the Anchors"], nil, 6)
	ElvUI_EltreumUI.Options.args.weakauras.args.image.inline = true
	ElvUI_EltreumUI.Options.args.weakauras.args.image.args.header1 = ACH:Description(L["Open WeakAuras, go to your group Weakauras and in Group change Position Settings > Anchored To > Select Frame > EltruismWA or EltruismConsumablesWA"], 2, nil)
	ElvUI_EltreumUI.Options.args.weakauras.args.image.args.header2 = ACH:Description("", 3, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\WADemo', 512, 512 end)

	--discord
	ElvUI_EltreumUI.Options.args.discord = ACH:Group(E:TextGradient(L["Discord"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Join the Discord for faster support and to report any issues you might encounter"], 86)
	ElvUI_EltreumUI.Options.args.discord.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\discord'
	ElvUI_EltreumUI.Options.args.discord.args.header1 = ACH:Description("", 2, nil, function() return 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Textures\\disc', 256, 128 end)
	ElvUI_EltreumUI.Options.args.discord.args.header2 = ACH:Description(L["Join the Discord if you have any questions or issues"], 3, nil)
	ElvUI_EltreumUI.Options.args.discord.args.header2 = ACH:Description(L["Keep in mind the discord is in English"], 4, nil)
	ElvUI_EltreumUI.Options.args.discord.args.discordlink = ACH:Input("", "", 3, false, "full", function() return 'https://discord.gg/rBXNxUY6pk' end)

	--credits
	ElvUI_EltreumUI.Options.args.credits = ACH:Group(E:TextGradient(L["Credits"], 0.50, 0.70, 1, 0.67, 0.95, 1), L["Credits and Licenses"], 87)
	ElvUI_EltreumUI.Options.args.credits.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\credits'
	ElvUI_EltreumUI.Options.args.credits.args.author = ACH:Group(L["Author"], nil, 1)
	ElvUI_EltreumUI.Options.args.credits.args.author.inline = true
	ElvUI_EltreumUI.Options.args.credits.args.author.args.header1 = ACH:Description(AUTHORS_STRING, 2, "medium")
	ElvUI_EltreumUI.Options.args.credits.args.thankyous = ACH:Group(L["Credits and Thank yous"], nil, 3)
	ElvUI_EltreumUI.Options.args.credits.args.thankyous.inline = true
	ElvUI_EltreumUI.Options.args.credits.args.thankyous.args.header1 = ACH:Description(THANKYOU_STRING, 4, "medium")
	ElvUI_EltreumUI.Options.args.credits.args.donators = ACH:Group(L["Donators"], nil, 5)
	ElvUI_EltreumUI.Options.args.credits.args.donators.inline = true
	ElvUI_EltreumUI.Options.args.credits.args.donators.args.header1 = ACH:Description(DONATORS_STRING, 6, "medium")
	ElvUI_EltreumUI.Options.args.credits.args.translators = ACH:Group(L["Translators"], nil, 7)
	ElvUI_EltreumUI.Options.args.credits.args.translators.inline = true
	ElvUI_EltreumUI.Options.args.credits.args.translators.args.header1 = ACH:Description(TRANSLATORS_STRING, 8, "medium")
	ElvUI_EltreumUI.Options.args.credits.args.licenses = ACH:Group(L["License"], nil, 9)
	ElvUI_EltreumUI.Options.args.credits.args.licenses.inline = true
	ElvUI_EltreumUI.Options.args.credits.args.licenses.args.header1 = ACH:Description(function()
		if E.Retail then
			return 'Cursor is a fork of CastCursor by michaelsp which licensed under GNU GPLv3\nCursor Cooldowns is a fork of CooldownToGo by mitchnull which is licensed under Public Domain\nExpand Hunter Stables is merged from Improved Stable Frame by Cybeloras which is licensed under GNU GPLv3\nIcons8 (www.icons8.com) for some of the icons. List in license.txt\nFreeVector (www.freevector.com) for some of the icons. List in license.txt\nLootText is a fork of SLoTe from xavjer which is licensed under GNU GPLv3\nRogue Door Opener is a fork of Rogue Door Opener by Burzolog which licensed under GNU GPLv3\nLoot Icons are merged from Chat Loot Icons by Stanzilla which is licensed under Public Domain\nQuest Items is a merge of QBar by Aezay, which is licensed under GNU GPLv3\nCooldown is a fork of discoteq\'s Doom Cooldown Pulse which is licensed under MIT License'
		else
			return 'Cursor is a fork of CastCursor by michaelsp which licensed under GNU GPLv3\nCursor Cooldowns is a fork of CooldownToGo by mitchnull which is licensed under Public Domain\nIcons8 (www.icons8.com) for some of the icons. List in license.txt\nFreeVector (www.freevector.com) for some of the icons. List in license.txt\nLootText is a fork of SLoTe from xavjer which is licensed under GNU GPLv3\nLoot Icons are merged from Chat Loot Icons by Stanzilla which is licensed under Public Domain\nThe Item Level shown on the Character Panel Skin uses code from Simple Item level by Kemayo, licensed under BSD\nQuest Items is a merge of QBar by Aezay, which is licensed under GNU GPLv3\nSockets and Enchants is a fork of Kibs Item Levels by Kibsgaard which is licensed under Public Domain'
		end
	end, 10, "medium")

	--support
	ElvUI_EltreumUI.Options.args.support = ACH:Group(E:TextGradient(GAMEMENU_SUPPORT, 0.50, 0.70, 1, 0.67, 0.95, 1), L["Direct links to GitHub, CurseForge, Wago and Tukui"], 88, 'tab')
	ElvUI_EltreumUI.Options.args.support.icon = 'Interface\\AddOns\\ElvUI_EltreumUI\\Media\\Icons\\support'
	ElvUI_EltreumUI.Options.args.support.args.changelog = ACH:Input(L["Changelog"], "", 7, false, "full", function() return 'https://github.com/eltreum0/eltruism/blob/main/Changelog.md' end)
	ElvUI_EltreumUI.Options.args.support.args.issues = ACH:Input(L["Report issues and problems here:"], "", 8, false, "full", function() return 'https://github.com/eltreum0/eltruism/issues' end)
	ElvUI_EltreumUI.Options.args.support.args.tukui = ACH:Input(L["Addon on Tukui:"], "", 9, false, "full", function()
		if E.Retail then
			return 'https://www.tukui.org/addons.php?id=209'
		elseif E.Wrath then
			return 'https://www.tukui.org/classic-wotlk-addons.php?id=10'
		elseif E.Classic then
			return 'https://www.tukui.org/classic-addons.php?id=49'
		end
	end)
	ElvUI_EltreumUI.Options.args.support.args.curse = ACH:Input(L["Addon on CurseForge:"], "", 10, false, "full", function() return 'https://www.curseforge.com/wow/addons/elvui-eltruism' end)
	ElvUI_EltreumUI.Options.args.support.args.wago = ACH:Input(L["Addon on Wago:"], "", 10, false, "full", function() return 'https://addons.wago.io/addons/elvui-eltruism' end)

	E.Options.args.ElvUI_EltreumUI = ElvUI_EltreumUI.Options
end
