local E, L = unpack(ElvUI)
local _G = _G
local DT = E:GetModule("DataTexts")
local InCombatLockdown = _G.InCombatLockdown
local UIErrorsFrame = _G.UIErrorsFrame
local ERR_NOT_IN_COMBAT = _G.ERR_NOT_IN_COMBAT
local strjoin = _G.strjoin

local lastPanelEltruismConfig
local displayStringEltruismconfig = ''
local function EltruismConfigOnEvent(self)
	lastPanelEltruismConfig = self
	self.text:SetFormattedText(displayStringEltruismconfig, E.global.datatexts.settings.ElvUI.Label ~= '' and E.global.datatexts.settings.ElvUI.Label or 'Eltruism')
end

local function EltruismConfigOnEnter()
	DT.tooltip:ClearLines()
	DT.tooltip:AddDoubleLine(L["Left Click:"], L["Open Eltruism Configuration Panel"], 1, 1, 1)
	DT.tooltip:AddDoubleLine(L["Right Click:"], L["Open Eltruism Installation"], 1, 1, 1)
	DT.tooltip:Show()
end

local function EltruismConfigOnClick(_, button)
	if InCombatLockdown() then UIErrorsFrame:AddMessage(ERR_NOT_IN_COMBAT, 1.0, 0.2, 0.2, 1.0) end
	if not InCombatLockdown() then
		if button == 'LeftButton' then
			E:ToggleOptions('ElvUI_EltreumUI')
			--E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'ElvUI_EltreumUI')
		elseif button == 'RightButton' then
			E:GetModule('PluginInstaller'):Queue(ElvUI_EltreumUI.InstallerData)
		end
	end
end

local function EltruismConfigValueColorUpdate(_,hex)
	displayStringEltruismconfig = strjoin('', hex, '%s|r')
	if lastPanelEltruismConfig then EltruismConfigOnEvent(lastPanelEltruismConfig) end
end
DT:RegisterDatatext('Eltruism', nil, nil, EltruismConfigOnEvent, nil, EltruismConfigOnClick, EltruismConfigOnEnter, nil, L["Eltruism Config"], nil, EltruismConfigValueColorUpdate)
