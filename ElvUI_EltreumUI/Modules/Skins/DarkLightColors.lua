local E, L, V, P, G = unpack(ElvUI)
local _G = _G
local hooksecurefunc = _G.hooksecurefunc
local select = _G.select

function ElvUI_EltreumUI:DarkMode()
	if E.private.unitframe.enable then
		if not E.db.movers then E.db.movers = {} end

		--fix possible issue
		E.db["unitframe"]["units"]["party"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["player"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["player"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["arena"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["focus"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["boss"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["raid1"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["raid2"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["raid3"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["party"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["tank"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["assist"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["target"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["pet"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["focustarget"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["arena"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["focus"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["boss"]["health"]["orientation"] = "HORIZONTAL"

		--setup colors
		E.db["unitframe"]["colors"]["healPrediction"]["healAbsorbs"]["a"] = 0.25
		E.db["unitframe"]["colors"]["healPrediction"]["overabsorbs"]["a"] = 0.25
		E.db["unitframe"]["colors"]["healPrediction"]["overhealabsorbs"]["a"] = 0.25
		E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["a"] = 0.5
		E.db["unitframe"]["colors"]["healPrediction"]["maxOverflow"] = 0.01
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["a"] = 0.25
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["b"] = 0.50196078431373
		E.db["unitframe"]["colors"]["healPrediction"]["others"]["a"] = 0.25
		E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
		E.db["unitframe"]["colors"]["classbackdrop"] = true
		E.db["unitframe"]["colors"]["healthclass"] = false
		E.db["unitframe"]["colors"]["customhealthbackdrop"] = false
		E.db["unitframe"]["colors"]["health_backdrop"]["b"] = 0
		E.db["unitframe"]["colors"]["health_backdrop"]["g"] = 0
		E.db["unitframe"]["colors"]["health_backdrop"]["r"] = 0
		E.db["unitframe"]["units"]["player"]["forcehealthreaction"] = false
		E.db["unitframe"]["units"]["player"]["colorOverride"] = "FORCE_OFF"
		if not E.Classic then
			E.db["unitframe"]["units"]["arena"]["colorOverride"] = "FORCE_OFF"
		end
		E.db["unitframe"]["units"]["assist"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["party"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["pet"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["boss"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["raid1"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["raid2"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["raid3"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["tank"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["assist"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["target"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["units"]["targettarget"]["colorOverride"] = "FORCE_OFF"
		E.db["unitframe"]["colors"]["transparentAurabars"] = true
		E.db["unitframe"]["colors"]["transparentCastbar"] = true
		E.db["unitframe"]["colors"]["transparentHealth"] = true
		E.db["unitframe"]["colors"]["transparentPower"] = false
		E.db["unitframe"]["units"]["player"]["portrait"]["overlayAlpha"] = 0.3
		E.db["unitframe"]["units"]["target"]["portrait"]["overlayAlpha"] = 0.3
		if not E.Retail then
			E.db["unitframe"]["units"]["pet"]["health"]["colorPetByUnitClass"] = false
			E.db["unitframe"]["units"]["pet"]["health"]["colorHappiness"] = false
		end

		--setup namecolors
		if E.db["unitframe"]["units"]["pet"]["customTexts"] and E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"] then
			if E.Classic or E.Wrath then
				E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["text_format"] = "[name:eltruism:gradient][happiness:discord]"
			elseif E.Retail then
				E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["text_format"] = "[name:eltruism:gradient]"
			end
		end
		if E.db["unitframe"]["units"]["player"]["customTexts"] and E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"] then
			E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"]["text_format"] = "[name:eltruism:gradient] [eltruism:class:player] [eltruism:raidmarker]"
		end
		if E.db["unitframe"]["units"]["player"]["customTexts"] and E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"] then
			E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"]["text_format"] = "[powercolor][power:current:shortvalue]"
		end
		if E.db["unitframe"]["units"]["target"]["customTexts"] and E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"] then
			E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"]["text_format"] = "[eltruism:raidmarker] [eltruism:class:player] [eltruism:difficulty][name:eltruism:gradientshort]"
		end
		if E.db["unitframe"]["units"]["target"]["customTexts"] and E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"] then
			E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"]["text_format"] = "[powercolor][power:current:shortvalue]"
		end
		if E.db["unitframe"]["units"]["targettarget"]["customTexts"] and E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"] then
			E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"]["text_format"] = "[name:eltruism:gradientshort]"
		end
		if E.db["unitframe"]["units"]["targettarget"]["customTexts"] and E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"] then
			E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"]["text_format"] = "[powercolor][power:current:shortvalue]"
		end
		E.db["unitframe"]["units"]["tank"]["name"]["text_format"] = "[name:eltruism:gradient]"
		if not E.Classic then
			E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = "[name:eltruism:gradientshort] [eltruism:IconOutline:player] [eltruism:raidmarker]"
		end

		E.db.ElvUI_EltreumUI.unitframes.lightmode = false
		E.db.ElvUI_EltreumUI.unitframes.darkmode = true
		E.db.ElvUI_EltreumUI.unitframes.UFmodifications = true
		--E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable = false
		E.db.ElvUI_EltreumUI.unitframes.uftextureversion = "V2"

		if E.private.nameplates.enable and not E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable then
			E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["format"] = "[namecolor][name][realm:dash]"
			E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["format"] = "[namecolor][guild:brackets]"

			E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["format"] = "[namecolor][npctitle:brackets]"
			E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["format"] = "[namecolor][name]"

			E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["format"] = "[namecolor][name:title][realm:dash]"
			E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["format"] = "[namecolor][guild:brackets]"

			if E.global.nameplates.filters.EltreumHideNP and E.db["nameplates"]["filters"]["EltreumHideNP"] then
				E.global["nameplates"]["filters"]["EltreumHideNP"]["actions"]["tags"]["name"] = "[namecolor][name]"
				E.global["nameplates"]["filters"]["EltreumHideNP"]["actions"]["tags"]["title"] = "[namecolor][npctitle:brackets]"
			end

			if E.global.nameplates.filters.EltreumRestedNP and E.db["nameplates"]["filters"]["EltreumRestedNP"] then
				E.global["nameplates"]["filters"]["EltreumRestedNP"]["actions"]["tags"]["name"] = "[namecolor][name:title][realm:dash]"
				E.global["nameplates"]["filters"]["EltreumRestedNP"]["actions"]["tags"]["title"] = "[namecolor][npctitle:brackets][guild:brackets]"
			end
		end

		E:UpdateMediaItems()
		E:UpdateUnitFrames()

		--show the chat buttons because they are attached to the chat datatext not panel
		_G.LeftChatToggleButton:SetAlpha(1)
		_G.LeftChatToggleButton:Show()
		_G.RightChatToggleButton:SetAlpha(1)
		_G.RightChatToggleButton:Show()

		ElvUI_EltreumUI:Print("Unitframes set to Dark Mode")
	end
end

function ElvUI_EltreumUI:LightMode()
	if E.private.unitframe.enable then
		if not E.db.movers then E.db.movers = {} end

		--fix possible issue
		E.db["unitframe"]["units"]["party"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["player"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["player"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["arena"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["focus"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["boss"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["raid1"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["raid2"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["raid3"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["party"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["tank"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["assist"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["target"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["pet"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["focustarget"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["arena"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["focus"]["health"]["orientation"] = "HORIZONTAL"
		E.db["unitframe"]["units"]["boss"]["health"]["orientation"] = "HORIZONTAL"

		--setup colors
		E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["a"] = 0.5
		E.db["unitframe"]["colors"]["healPrediction"]["healAbsorbs"]["a"] = 0.5
		E.db["unitframe"]["colors"]["healPrediction"]["maxOverflow"] = 0.01
		E.db["unitframe"]["colors"]["healPrediction"]["overabsorbs"]["a"] = 0.5
		E.db["unitframe"]["colors"]["healPrediction"]["overhealabsorbs"]["a"] = 0.5
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["a"] = 0.5
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["b"] = 0.50196078431373
		E.db["unitframe"]["colors"]["healPrediction"]["others"]["a"] = 0.5
		E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
		E.db["unitframe"]["colors"]["classbackdrop"] = false
		E.db["unitframe"]["colors"]["healthclass"] = true
		E.db["unitframe"]["colors"]["customhealthbackdrop"] = true
		E.db["unitframe"]["colors"]["health_backdrop"]["b"] = 0
		E.db["unitframe"]["colors"]["health_backdrop"]["g"] = 0
		E.db["unitframe"]["colors"]["health_backdrop"]["r"] = 0
		E.db["unitframe"]["units"]["player"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["player"]["forcehealthreaction"] = false
		E.db["unitframe"]["units"]["assist"]["colorOverride"] = "USE_DEFAULT"
		if not E.Classic then
			E.db["unitframe"]["units"]["arena"]["colorOverride"] = "USE_DEFAULT"
		end
		E.db["unitframe"]["units"]["party"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["pet"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["raid1"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["raid2"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["raid3"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["tank"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["assist"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["target"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["targettarget"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["units"]["boss"]["colorOverride"] = "USE_DEFAULT"
		E.db["unitframe"]["colors"]["transparentAurabars"] = true
		E.db["unitframe"]["colors"]["transparentCastbar"] = true
		E.db["unitframe"]["colors"]["transparentHealth"] = false
		E.db["unitframe"]["colors"]["transparentPower"] = false
		E.db["unitframe"]["units"]["player"]["portrait"]["overlayAlpha"] = 0.6
		E.db["unitframe"]["units"]["target"]["portrait"]["overlayAlpha"] = 0.6
		if not E.Retail then
			E.db["unitframe"]["units"]["pet"]["health"]["colorPetByUnitClass"] = true
			E.db["unitframe"]["units"]["pet"]["health"]["colorHappiness"] = false
		end

		--setup namecolors
		if E.db["unitframe"]["units"]["pet"]["customTexts"] and E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"] then
			if E.Classic or E.Wrath then
				E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["text_format"] = "[name][happiness:discord]"
			elseif E.Retail then
				E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["text_format"] = "[name]"
			end
		end
		if E.db["unitframe"]["units"]["player"]["customTexts"] and E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"] then
			E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"]["text_format"] = "[name] [eltruism:IconOutline:player] [eltruism:raidmarker]"
		end
		if E.db["unitframe"]["units"]["player"]["customTexts"] and E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"] then
			E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"]["text_format"] = "[power:current:shortvalue]"
		end
		if E.db["unitframe"]["units"]["target"]["customTexts"] and E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"] then
			E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"]["text_format"] = "[eltruism:raidmarker] [eltruism:IconOutline:player] [eltruism:difficulty][name:eltruism:abbreviate]"
		end
		if E.db["unitframe"]["units"]["target"]["customTexts"] and E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"] then
			E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"]["text_format"] = "[power:current:shortvalue]"
		end
		if E.db["unitframe"]["units"]["targettarget"]["customTexts"] and E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"] then
			E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"]["text_format"] = "[name:abbrev]"
		end
		if E.db["unitframe"]["units"]["targettarget"]["customTexts"] and E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"] then
			E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"]["text_format"] = "[power:current:shortvalue]"
		end
		E.db["unitframe"]["units"]["tank"]["name"]["text_format"] = "[name:long:status]"
		if not E.Classic then
			E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = "[name:eltruism:abbreviate] [eltruism:IconOutline:player] [eltruism:raidmarker]"
		end

		E.db.ElvUI_EltreumUI.unitframes.lightmode = true
		E.db.ElvUI_EltreumUI.unitframes.darkmode = false
		--E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable = false
		E.db.ElvUI_EltreumUI.unitframes.UFmodifications = true
		E.db.ElvUI_EltreumUI.unitframes.uftextureversion = "V2"

		if E.private.nameplates.enable and not E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable then
			E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["format"] = "[namecolor][name][realm:dash]"
			E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["format"] = "[namecolor][guild:brackets]"

			E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["format"] = "[namecolor][npctitle:brackets]"
			E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["format"] = "[namecolor][name]"

			E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["format"] = "[namecolor][name:title][realm:dash]"
			E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["format"] = "[namecolor][guild:brackets]"

			if E.global.nameplates.filters.EltreumHideNP and E.db["nameplates"]["filters"]["EltreumHideNP"] then
				E.global["nameplates"]["filters"]["EltreumHideNP"]["actions"]["tags"]["name"] = "[namecolor][name]"
				E.global["nameplates"]["filters"]["EltreumHideNP"]["actions"]["tags"]["title"] = "[namecolor][npctitle:brackets]"
			end

			if E.global.nameplates.filters.EltreumRestedNP and E.db["nameplates"]["filters"]["EltreumRestedNP"] then
				E.global["nameplates"]["filters"]["EltreumRestedNP"]["actions"]["tags"]["name"] = "[namecolor][name:title][realm:dash]"
				E.global["nameplates"]["filters"]["EltreumRestedNP"]["actions"]["tags"]["title"] = "[namecolor][npctitle:brackets][guild:brackets]"
			end
		end

		E:UpdateMediaItems()
		E:UpdateUnitFrames()

		--show the chat buttons because they are attached to the chat datatext not panel
		_G.LeftChatToggleButton:SetAlpha(1)
		_G.LeftChatToggleButton:Show()
		_G.RightChatToggleButton:SetAlpha(1)
		_G.RightChatToggleButton:Show()

		ElvUI_EltreumUI:Print("Unitframes set to Light Mode")
	end
end

function ElvUI_EltreumUI:ColorModes()
	if not E.db.ElvUI_EltreumUI.unitframes.lightmode and not E.db.ElvUI_EltreumUI.unitframes.darkmode then
		ElvUI_EltreumUI:LightMode()
	elseif E.db.ElvUI_EltreumUI.unitframes.lightmode and not E.db.ElvUI_EltreumUI.unitframes.darkmode then
		ElvUI_EltreumUI:DarkMode()
	elseif E.db.ElvUI_EltreumUI.unitframes.darkmode and not E.db.ElvUI_EltreumUI.unitframes.lightmode then
		ElvUI_EltreumUI:LightMode()
	end
	ElvUI_EltreumUI:GradientColorTableUpdate()
end

function ElvUI_EltreumUI:GradientMode()
	if E.private.unitframe.enable then
		if not E.db.movers then E.db.movers = {} end

		if E.db.ElvUI_EltreumUI.unitframes.darkmode then
			E.db.ElvUI_EltreumUI.unitframes.lightmode = false
			E.db.ElvUI_EltreumUI.unitframes.darkmode = true

			--setup colors
			E.db["unitframe"]["colors"]["healPrediction"]["healAbsorbs"]["a"] = 0.25
			E.db["unitframe"]["colors"]["healPrediction"]["overabsorbs"]["a"] = 0.25
			E.db["unitframe"]["colors"]["healPrediction"]["overhealabsorbs"]["a"] = 0.25
			E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["a"] = 0.5
			E.db["unitframe"]["colors"]["healPrediction"]["maxOverflow"] = 0.01
			E.db["unitframe"]["colors"]["healPrediction"]["personal"]["a"] = 0.25
			E.db["unitframe"]["colors"]["healPrediction"]["personal"]["b"] = 0.50196078431373
			E.db["unitframe"]["colors"]["healPrediction"]["others"]["a"] = 0.25
			E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
			E.db["unitframe"]["colors"]["classbackdrop"] = true
			E.db["unitframe"]["colors"]["healthclass"] = false
			E.db["unitframe"]["colors"]["customhealthbackdrop"] = false
			E.db["unitframe"]["colors"]["health_backdrop"]["b"] = 0
			E.db["unitframe"]["colors"]["health_backdrop"]["g"] = 0
			E.db["unitframe"]["colors"]["health_backdrop"]["r"] = 0
			E.db["unitframe"]["units"]["player"]["forcehealthreaction"] = false
			E.db["unitframe"]["units"]["player"]["colorOverride"] = "FORCE_OFF"
			if not E.Classic then
				E.db["unitframe"]["units"]["arena"]["colorOverride"] = "FORCE_OFF"
			end
			E.db["unitframe"]["units"]["assist"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["party"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["pet"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["boss"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["raid1"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["raid2"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["raid3"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["tank"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["assist"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["target"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["units"]["targettarget"]["colorOverride"] = "FORCE_OFF"
			E.db["unitframe"]["colors"]["transparentAurabars"] = true
			E.db["unitframe"]["colors"]["transparentCastbar"] = true
			E.db["unitframe"]["colors"]["transparentHealth"] = true
			E.db["unitframe"]["colors"]["transparentPower"] = false
			E.db["unitframe"]["units"]["player"]["portrait"]["overlayAlpha"] = 0.3
			E.db["unitframe"]["units"]["target"]["portrait"]["overlayAlpha"] = 0.3

			--setup namecolors
			if E.db["unitframe"]["units"]["pet"]["customTexts"] and E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"] then
				if E.Classic or E.Wrath then
					E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["text_format"] = "[name:eltruism:gradient][happiness:discord]"
				elseif E.Retail then
					E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["text_format"] = "[name:eltruism:gradient]"
				end
			end
			if E.db["unitframe"]["units"]["player"]["customTexts"] and E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"] then
				E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"]["text_format"] = "[name:eltruism:gradient] [eltruism:class:player] [eltruism:raidmarker]"
			end
			if E.db["unitframe"]["units"]["player"]["customTexts"] and E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"] then
				E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"]["text_format"] = "[powercolor][power:current:shortvalue]"
			end
			if E.db["unitframe"]["units"]["target"]["customTexts"] and E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"] then
				E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"]["text_format"] = "[eltruism:raidmarker] [eltruism:class:player] [eltruism:difficulty][name:eltruism:gradientshort]"
			end
			if E.db["unitframe"]["units"]["target"]["customTexts"] and E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"] then
				E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"]["text_format"] = "[powercolor][power:current:shortvalue]"
			end
			if E.db["unitframe"]["units"]["targettarget"]["customTexts"] and E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"] then
				E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"]["text_format"] = "[name:eltruism:gradientshort]"
			end
			if E.db["unitframe"]["units"]["targettarget"]["customTexts"] and E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"] then
				E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"]["text_format"] = "[powercolor][power:current:shortvalue]"
			end
			E.db["unitframe"]["units"]["tank"]["name"]["text_format"] = "[name:eltruism:gradient]"
			if not E.Classic then
				E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = "[name:eltruism:gradientshort] [eltruism:IconOutline:player] [eltruism:raidmarker]"
			end
		elseif E.db.ElvUI_EltreumUI.unitframes.lightmode then
			E.db.ElvUI_EltreumUI.unitframes.lightmode = true
			E.db.ElvUI_EltreumUI.unitframes.darkmode = false
			--setup colors
			E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["a"] = 0.5
			E.db["unitframe"]["colors"]["healPrediction"]["healAbsorbs"]["a"] = 0.5
			E.db["unitframe"]["colors"]["healPrediction"]["maxOverflow"] = 0.01
			E.db["unitframe"]["colors"]["healPrediction"]["overabsorbs"]["a"] = 0.5
			E.db["unitframe"]["colors"]["healPrediction"]["overhealabsorbs"]["a"] = 0.5
			E.db["unitframe"]["colors"]["healPrediction"]["personal"]["a"] = 0.5
			E.db["unitframe"]["colors"]["healPrediction"]["personal"]["b"] = 0.50196078431373
			E.db["unitframe"]["colors"]["healPrediction"]["others"]["a"] = 0.5
			E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
			E.db["unitframe"]["colors"]["classbackdrop"] = false
			E.db["unitframe"]["colors"]["healthclass"] = true
			E.db["unitframe"]["colors"]["customhealthbackdrop"] = true
			E.db["unitframe"]["colors"]["health_backdrop"]["b"] = 0
			E.db["unitframe"]["colors"]["health_backdrop"]["g"] = 0
			E.db["unitframe"]["colors"]["health_backdrop"]["r"] = 0
			E.db["unitframe"]["units"]["player"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["player"]["forcehealthreaction"] = false
			E.db["unitframe"]["units"]["assist"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["party"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["pet"]["colorOverride"] = "USE_DEFAULT"
			if not E.Classic then
				E.db["unitframe"]["units"]["arena"]["colorOverride"] = "USE_DEFAULT"
			end
			E.db["unitframe"]["units"]["raid1"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["raid2"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["raid3"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["tank"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["assist"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["target"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["targettarget"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["units"]["boss"]["colorOverride"] = "USE_DEFAULT"
			E.db["unitframe"]["colors"]["transparentAurabars"] = true
			E.db["unitframe"]["colors"]["transparentCastbar"] = true
			E.db["unitframe"]["colors"]["transparentHealth"] = false
			E.db["unitframe"]["colors"]["transparentPower"] = false
			E.db["unitframe"]["units"]["player"]["portrait"]["overlayAlpha"] = 0.6
			E.db["unitframe"]["units"]["target"]["portrait"]["overlayAlpha"] = 0.6

			--setup namecolors
			if E.db["unitframe"]["units"]["pet"]["customTexts"] and E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"] then
				if E.Classic or E.Wrath then
					E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["text_format"] = "[name][happiness:discord]"
				elseif E.Retail then
					E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["text_format"] = "[name]"
				end
			end
			if E.db["unitframe"]["units"]["player"]["customTexts"] and E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"] then
				E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"]["text_format"] = "[name] [eltruism:IconOutline:player] [eltruism:raidmarker]"
			end
			if E.db["unitframe"]["units"]["player"]["customTexts"] and E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"] then
				E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"]["text_format"] = "[power:current:shortvalue]"
			end
			if E.db["unitframe"]["units"]["target"]["customTexts"] and E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"] then
				E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"]["text_format"] = "[eltruism:raidmarker] [eltruism:IconOutline:player] [eltruism:difficulty][name:eltruism:abbreviate]"
			end
			if E.db["unitframe"]["units"]["target"]["customTexts"] and E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"] then
				E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"]["text_format"] = "[power:current:shortvalue]"
			end
			if E.db["unitframe"]["units"]["targettarget"]["customTexts"] and E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"] then
				E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"]["text_format"] = "[name:abbrev]"
			end
			if E.db["unitframe"]["units"]["targettarget"]["customTexts"] and E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"] then
				E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"]["text_format"] = "[power:current:shortvalue]"
			end
			E.db["unitframe"]["units"]["tank"]["name"]["text_format"] = "[name:long:status]"
			if not E.Classic then
				E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = "[name:eltruism:abbreviate] [eltruism:IconOutline:player] [eltruism:raidmarker]"
			end
		end
		E.db["unitframe"]["units"]["pet"]["health"]["colorPetByUnitClass"] = false

		E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable = true
		E.db.ElvUI_EltreumUI.unitframes.gradientmode.npenable = true
		E.db.ElvUI_EltreumUI.unitframes.gradientmode.enablepower = true
		E.db.ElvUI_EltreumUI.nameplates.nameplatepower.gradient = true
		E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.nameplatetexture = false
		E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.enable = false
		E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableplayertarget = true
		E.db.ElvUI_EltreumUI.unitframes.gradientmode.enablegroupunits = true
		E.db.ElvUI_EltreumUI.unitframes.UFmodifications = true

		if E.private.nameplates.enable then
			E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["format"] = "[name:eltruism:gradient][eltruismrealm:dash]"
			E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["format"] = "[eltruismguild:brackets]"

			E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["format"] = "[name:eltruism:gradient]"
			E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["format"] = "[eltruismnpctitle:brackets]"

			E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["format"] = "[eltruismname:title][eltruismrealm:dash]"
			E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["format"] = "[eltruismguild:brackets]"

			if E.global.nameplates.filters.EltreumHideNP and E.db["nameplates"]["filters"]["EltreumHideNP"] then
				E.global["nameplates"]["filters"]["EltreumHideNP"]["actions"]["tags"]["name"] = "[name:eltruism:gradient]"
				E.global["nameplates"]["filters"]["EltreumHideNP"]["actions"]["tags"]["title"] = "[eltruismnpctitle:brackets]"
			end

			if E.global.nameplates.filters.EltreumRestedNP and E.db["nameplates"]["filters"]["EltreumRestedNP"] then
				E.global["nameplates"]["filters"]["EltreumRestedNP"]["actions"]["tags"]["name"] = "[eltruismname:title][eltruismrealm:dash]"
				E.global["nameplates"]["filters"]["EltreumRestedNP"]["actions"]["tags"]["title"] = "[eltruismnpctitle:brackets][eltruismguild:brackets]"
			end
		end

		E:UpdateMediaItems()
		E:UpdateUnitFrames()

		--show the chat buttons because they are attached to the chat datatext not panel
		_G.LeftChatToggleButton:SetAlpha(1)
		_G.LeftChatToggleButton:Show()
		_G.RightChatToggleButton:SetAlpha(1)
		_G.RightChatToggleButton:Show()

		ElvUI_EltreumUI:Print("Gradient Mode Enabled")
	end
end

function ElvUI_EltreumUI:ShamanTextureMode()
	if (E.Wrath or E.Classic) and E.myclass == 'SHAMAN' then
		if E.db.ElvUI_EltreumUI.unitframes.darkpowercolor and E.private.unitframe.enable then
			local UF = E:GetModule('UnitFrames') --only classpower that is actually in UF instead of NP
			local function TotemBackground()
				local header = _G["ElvUF_Player"]
				for i = 1, header:GetNumChildren() do
					local group = select(i, header:GetChildren())
					for j = 1, group:GetNumChildren() do
						local unitbutton = select(j, group:GetChildren())
						if unitbutton and unitbutton.bg then
							unitbutton.bg:SetVertexColor(0, 0, 0)
						end
					end
				end
			end
			hooksecurefunc(UF, 'Construct_Totems', TotemBackground)
			TotemBackground()
		end
	end
end

--a more grey and less dark background
function ElvUI_EltreumUI:GreyBg()
	E.db["general"]["backdropcolor"]["b"] = 0.098039215686275
	E.db["general"]["backdropcolor"]["g"] = 0.098039215686275
	E.db["general"]["backdropcolor"]["r"] = 0.098039215686275
	E.db["general"]["backdropfadecolor"]["a"] = 0.80000001192093
	E.db["general"]["backdropfadecolor"]["b"] = 0.13725490196078
	E.db["general"]["backdropfadecolor"]["g"] = 0.13725490196078
	E.db["general"]["backdropfadecolor"]["r"] = 0.13725490196078

	E.db.ElvUI_EltreumUI.unitframes.greybackground = true
	E:UpdateMediaItems()
	ElvUI_EltreumUI:Print("ElvUI set to Grey Background")
end

--the traditional black/dark background
function ElvUI_EltreumUI:BlackBg()
	E.db["general"]["backdropcolor"]["b"] = 0.098039215686275
	E.db["general"]["backdropcolor"]["g"] = 0.098039215686275
	E.db["general"]["backdropcolor"]["r"] = 0.098039215686275
	E.db["general"]["backdropfadecolor"]["a"] = 0.70000001788139
	E.db["general"]["backdropfadecolor"]["b"] = 0
	E.db["general"]["backdropfadecolor"]["g"] = 0
	E.db["general"]["backdropfadecolor"]["r"] = 0

	E.db.ElvUI_EltreumUI.unitframes.greybackground = false
	E:UpdateMediaItems()
	ElvUI_EltreumUI:Print("ElvUI set to Black Background")
end

function ElvUI_EltreumUI:CheckBackground()
	if not E.db.ElvUI_EltreumUI.unitframes.greybackground then
		ElvUI_EltreumUI:GreyBg()
	elseif E.db.ElvUI_EltreumUI.unitframes.greybackground then
		ElvUI_EltreumUI:BlackBg()
	else
		ElvUI_EltreumUI:GreyBg()
	end
end
