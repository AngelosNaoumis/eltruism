local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

function ElvUI_EltreumUI:SetupFontsOutlineNone()
	if ElvUI_EltreumUI.Retail then
		if IsAddOnLoaded('ProjectAzilroka') then
			_G.ProjectAzilroka.db["stAddonManager"]["FontFlag"] = "NONE"
		end
		if IsAddOnLoaded("ElvUI_SLE") then
			E.db["sle"]["armory"]["stats"]["catFonts"]["outline"] = "NONE"
			E.db["sle"]["armory"]["stats"]["itemLevel"]["outline"] = "NONE"
			E.db["sle"]["armory"]["stats"]["statFonts"]["outline"] = "NONE"
			E.db["sle"]["media"]["fonts"]["mail"]["outline"] = "NONE"
			E.db["sle"]["media"]["fonts"]["objective"]["outline"] = "NONE"
			E.db["sle"]["media"]["fonts"]["objectiveHeader"]["outline"] = "NONE"
			E.db["sle"]["media"]["fonts"]["pvp"]["outline"] = "NONE"
			E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["outline"] = "NONE"
			E.db["sle"]["media"]["fonts"]["subzone"]["outline"] = "NONE"
			E.db["sle"]["media"]["fonts"]["zone"]["outline"] = "NONE"
			E.db["sle"]["minimap"]["coords"]["fontOutline"] = "NONE"
			E.db["sle"]["minimap"]["instance"]["fontOutline"] = "NONE"
			E.db["sle"]["minimap"]["locPanel"]["fontOutline"] = "NONE"
			E.db["sle"]["nameplates"]["targetcount"]["fontOutline"] = "NONE"
			E.db["sle"]["skins"]["merchant"]["list"]["subOutline"] = "NONE"
		end
		if IsAddOnLoaded("ElvUI_WindTools") then
			E.private["WT"]["quest"]["objectiveTracker"]["header"]["style"] = "NONE"
			E.private["WT"]["quest"]["objectiveTracker"]["info"]["style"] = "NONE"
			E.private["WT"]["quest"]["objectiveTracker"]["title"]["style"] = "NONE"
			E.db["WT"]["item"]["extraItemsBar"]["bar1"]["bindFont"]["style"] = "NONE"
			E.db["WT"]["item"]["extraItemsBar"]["bar1"]["countFont"]["style"] = "NONE"
			E.db["WT"]["misc"]["gameBar"]["additionalText"]["font"]["style"] = "NONE"
			E.db["WT"]["misc"]["gameBar"]["time"]["font"]["style"] = "NONE"
		end
		E.db["general"]["altPowerBar"]["fontOutline"] = "NONE"
		E.db["databars"]["azerite"]["fontOutline"] = "NONE"
		E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyAbsorb"]["fontOutline"] = "NONE"
		E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPlayerAbsorb"]["fontOutline"] = "NONE"
		E.db["unitframe"]["units"]["raid"]["customTexts"]["EltreumRaidAbsorb"]["fontOutline"] = "NONE"
		E.db["unitframe"]["units"]["raid40"]["customTexts"]["EltreumRaid40Absorb"]["fontOutline"] = "NONE"
		E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetAbsorb"]["fontOutline"] = "NONE"
		E.db["actionbar"]["extraActionButton"]["hotkeyFontOutline"] = "NONE"
		E.db["unitframe"]["units"]["player"]["castbar"]["customTimeFont"]["fontStyle"] = "NONE"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["fontOutline"] = "NONE"
	end
	E.db["general"]["fontStyle"] = "NONE"
	E.db["general"]["minimap"]["locationFontOutline"] = "NONE"
	if ElvUI_EltreumUI.Retail then
		E.db["general"]["minimap"]["icons"]["queueStatus"]["fontOutline"] = "NONE"
	end
	E.db["bags"]["countFontOutline"] = "NONE"
	E.db["bags"]["itemInfoFontOutline"] = "NONE"
	E.db["bags"]["itemLevelFontOutline"] = "NONE"
	E.db["chat"]["fontOutline"] = "NONE"
	E.db["chat"]["tabFontOutline"] = "NONE"
	E.db["cooldown"]["fonts"]["fontOutline"] = "NONE"
	E.db["databars"]["experience"]["fontOutline"] = "NONE"
	E.db["databars"]["reputation"]["fontOutline"] = "NONE"
	E.db["databars"]["threat"]["fontOutline"] = "NONE"
	E.db["datatexts"]["fontOutline"] = "NONE"
	E.db["tooltip"]["healthBar"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyHealth"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyName"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyPower"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumHealth"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPvP"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid"]["customTexts"]["EltreumGroup"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid"]["customTexts"]["EltreumRaidHealth"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid"]["customTexts"]["EltreumRaidName"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["EltreumRaid40Group"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["EltreumRaid40Health"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetHealth"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetofTarget"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetHealth"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["Powercustom"]["fontOutline"] = "NONE"
	E.db["actionbar"]["bar1"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar1"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar1"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar10"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar10"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar10"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar2"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar2"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar2"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar3"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar3"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar3"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar4"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar4"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar4"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar5"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar5"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar5"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar6"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar6"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar6"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar7"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar7"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar7"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar8"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar8"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar8"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["bar9"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["bar9"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["bar9"]["macroFontOutline"] = "NONE"
	E.db["actionbar"]["barPet"]["countFontOutline"] = "NONE"
	E.db["actionbar"]["barPet"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["fontOutline"] = "NONE"
	E.db["actionbar"]["stanceBar"]["hotkeyFontOutline"] = "NONE"
	E.db["actionbar"]["vehicleExitButton"]["hotkeyFontOutline"] = "NONE"
	E.db["auras"]["buffs"]["countFontOutline"] = "NONE"
	E.db["auras"]["buffs"]["timeFontOutline"] = "NONE"
	E.db["auras"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["auras"]["debuffs"]["timeFontOutline"] = "NONE"
	E.db["unitframe"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["assist"]["rdebuffs"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["party"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["unitframe"]["units"]["party"]["rdebuffs"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid"]["rdebuffs"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["tank"]["rdebuffs"]["fontOutline"] = "NONE"
	E.db["nameplates"]["cooldown"]["fonts"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["castbar"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["level"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["name"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["power"]["text"]["fontOutline"] = "NONE"
	E.db["nameplates"]["units"]["PLAYER"]["title"]["fontOutline"] = "NONE"
end
