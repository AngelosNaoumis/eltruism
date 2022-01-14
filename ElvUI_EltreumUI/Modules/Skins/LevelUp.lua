local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local _G = _G
local CreateFrame = _G.CreateFrame
local R, G, B = unpack(E.media.rgbvaluecolor)

function ElvUI_EltreumUI:SkinLevelUp()
	-- Color level up display and boss banner originally by Aftermathh, 9.1 partially by Eltreum
	if ElvUI_EltreumUI.Retail then
		if E.db.ElvUI_EltreumUI.skins.enable then
			local BossBanner = _G.BossBanner
			local EventToastManagerFrame = _G.EventToastManagerFrame

			if EventToastManagerFrame then
				_G.EventToastManagerFrame.GLine:SetVertexColor(R, G, B)
				_G.EventToastManagerFrame.GLine2:SetVertexColor(R, G, B)
				EventToastManagerFrame.StatusLine = CreateFrame("StatusBar", "EltruismEventToastLine", EventToastManagerFrame)
				EventToastManagerFrame.StatusLine:SetSize(418, 3)
				EventToastManagerFrame.StatusLine:SetPoint("TOP", EventToastManagerFrame, 0, -5)
				EventToastManagerFrame.StatusLine:SetStatusBarTexture(E.Media.Textures.Highlight)
				EventToastManagerFrame.StatusLine:SetStatusBarColor(R, G, B, 1)
				EventToastManagerFrame.StatusLine2 = CreateFrame("StatusBar", "EltruismEventToastLine2", EventToastManagerFrame)
				EventToastManagerFrame.StatusLine2:SetSize(418, 3)
				EventToastManagerFrame.StatusLine2:SetPoint("BOTTOM", EventToastManagerFrame, 0, 0)
				EventToastManagerFrame.StatusLine2:SetStatusBarTexture(E.Media.Textures.Highlight)
				EventToastManagerFrame.StatusLine2:SetStatusBarColor(R, G, B, 1)
				--EventToastManagerFrame.currentDisplayingToast.BannerFrame:Kill() --lets try
				--/script EventToastManagerFrame:Show()
			end

			--test
			if E.db.ElvUI_EltreumUI.skins.bossemote then
				local RaidBossEmoteFrame = _G.RaidBossEmoteFrame
				RaidBossEmoteFrame:UnregisterEvent("RAID_BOSS_EMOTE")
				RaidBossEmoteFrame:UnregisterEvent("RAID_BOSS_WHISPER")
				RaidBossEmoteFrame:UnregisterEvent("CLEAR_BOSS_EMOTES")
			end

			if BossBanner then
				local StatusLineTop = CreateFrame("StatusBar", nil, _G.BossBanner)
				StatusLineTop:SetSize(418, 2)
				--(point, relativeTo, relativePoint, offset_x, offset_y)
				StatusLineTop:SetPoint("TOP", _G.BossBanner, 0, -80)
				StatusLineTop:SetStatusBarTexture(E.Media.Textures.Highlight)
				StatusLineTop:SetStatusBarColor(R, G, B, 0.7)
				local StatusLineBottom = CreateFrame("StatusBar", nil, _G.BossBanner)
				StatusLineBottom:SetSize(418, 2)
				StatusLineBottom:SetPoint("BOTTOM", _G.BossBanner, 0, -20)
				StatusLineBottom:SetStatusBarTexture(E.Media.Textures.Highlight)
				StatusLineBottom:SetStatusBarColor(R, G, B, 0.7)
				_G.BossBanner.BannerTop:Kill()
				_G.BossBanner.BannerTopGlow:Kill()
				_G.BossBanner.BannerBottom:Kill()
				_G.BossBanner.BannerBottomGlow:Kill()
				_G.BossBanner.BannerMiddle:Kill()
				--_G.BossBanner.BannerMiddle:SetTexture(E.Media.Textures.Highlight)
				--_G.BossBanner.BannerMiddle:SetColorTexture(0, 0, 0, 0.20)
				_G.BossBanner.BannerMiddleGlow:Kill()
				_G.BossBanner.LootCircle:Kill()
				_G.BossBanner.SkullCircle:Kill()
				_G.BossBanner.RightFillagree:Kill()
				_G.BossBanner.LeftFillagree:Kill()
				_G.BossBanner.BottomFillagree:Kill()
				_G.BossBanner.SkullSpikes:Kill()
				--/script BossBanner:Show()
			end
		end
	end
end

--add one for classic/tbc as well, but for some reason doesnt really work inside a function, maybe because of the timer?
if ElvUI_EltreumUI.Classic or ElvUI_EltreumUI.TBC then
	local LevelUpFrame = CreateFrame("Frame", "EltruismLevelUp", UIParent)

	LevelUpFrame:SetPoint("TOP", UIParent, 0, -100)
	LevelUpFrame:SetSize(418, 72)

	LevelUpFrame.Text = LevelUpFrame:CreateFontString(nil, "BACKGROUND", "GameFontNormal")
	LevelUpFrame.Text:SetSize(418, 72)
	LevelUpFrame.Text:SetPoint("CENTER", "EltruismLevelUp", "CENTER", 0, 16)
	LevelUpFrame.Text:SetTextColor(1, 1, 1)
	LevelUpFrame.Text:SetFont(E.LSM:Fetch("font", E.db.general.font), 18, "OUTLINE")
	LevelUpFrame.Text:SetText("You've Reached")

	LevelUpFrame.Text2 = LevelUpFrame:CreateFontString(nil, "BACKGROUND", "GameFontNormal")
	LevelUpFrame.Text2:SetSize(418, 72)
	LevelUpFrame.Text2:SetPoint("CENTER", "EltruismLevelUp", "CENTER", 0, -14)
	LevelUpFrame.Text2:SetTextColor(R, G, B)
	LevelUpFrame.Text2:SetFont(E.LSM:Fetch("font", E.db.general.font), 42, "OUTLINE")

	LevelUpFrame.StatusLine = CreateFrame("StatusBar", "EltruismLevelUp", LevelUpFrame)
	LevelUpFrame.StatusLine:SetSize(418, 3)
	LevelUpFrame.StatusLine:SetPoint("TOP", LevelUpFrame, 0, -5)
	LevelUpFrame.StatusLine:SetStatusBarTexture(E.Media.Textures.Highlight)
	LevelUpFrame.StatusLine:SetStatusBarColor(R, G, B, 1)
	LevelUpFrame.StatusLine2 = CreateFrame("StatusBar", "EltruismLevelUp", LevelUpFrame)
	LevelUpFrame.StatusLine2:SetSize(418, 3)
	LevelUpFrame.StatusLine2:SetPoint("BOTTOM", LevelUpFrame, 0, 0)
	LevelUpFrame.StatusLine2:SetStatusBarTexture(E.Media.Textures.Highlight)
	LevelUpFrame.StatusLine2:SetStatusBarColor(R, G, B, 1)

	LevelUpFrame:Hide()

	LevelUpFrame:RegisterEvent("PLAYER_LEVEL_UP")
	LevelUpFrame:SetScript("OnEvent", function()
		if E.db.ElvUI_EltreumUI.skins.enable then
			LevelUpFrame.Text2:SetText("Level "..UnitLevel("player").."!")
			UIFrameFadeIn(LevelUpFrame, 1, 0, 1)
			C_Timer.After(5, function() UIFrameFadeOut(LevelUpFrame, 1, 1, 0) end)
		end
	end)
end
