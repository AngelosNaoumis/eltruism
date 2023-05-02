local E, L = unpack(ElvUI)

--profile updates, so that whole profile doesnt need to be reimported
function ElvUI_EltreumUI:UpdateElvUISettings()
	if not E.db.movers then E.db.movers = {} end

	if E.Retail then
		E.db["bags"]["split"]["bag5"] = true
		E.db["bags"]["split"]["bagSpacing"] = 7
		E.db["bags"]["split"]["player"] = true
	end

	E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-100"

	E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["b"] = 0.57254904508591
	E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["g"] = 1
	E.db["unitframe"]["colors"]["classResources"]["MONK"][1]["r"] = 0.078431375324726
	E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["b"] = 0.61568629741669
	E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["g"] = 1
	E.db["unitframe"]["colors"]["classResources"]["MONK"][2]["r"] = 0.082352943718433
	E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["b"] = 0.7294117808342
	E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["g"] = 1
	E.db["unitframe"]["colors"]["classResources"]["MONK"][3]["r"] = 0.098039224743843
	E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["b"] = 0.78039222955704
	E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["g"] = 1
	E.db["unitframe"]["colors"]["classResources"]["MONK"][4]["r"] = 0.094117656350136
	E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["b"] = 0.85490202903748
	E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["g"] = 1
	E.db["unitframe"]["colors"]["classResources"]["MONK"][5]["r"] = 0.10588236153126
	E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["b"] = 0.93333339691162
	E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["g"] = 1
	E.db["unitframe"]["colors"]["classResources"]["MONK"][6]["r"] = 0.11372549831867
	E.db["unitframe"]["colors"]["classResources"]["chargedComboPoint"]["g"] = 0.63921570777893
	E.db["unitframe"]["colors"]["classResources"]["chargedComboPoint"]["r"] = 0.16078431904316
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["b"] = 0.05882353335619
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["g"] = 0.41960787773132
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["r"] = 1
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["b"] = 0.10196079313755
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["g"] = 0.33725491166115
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["r"] = 1
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["b"] = 0.15294118225574
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["g"] = 0.25098040699959
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["r"] = 1
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][4]["b"] = 0.20784315466881
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][4]["g"] = 0.16078431904316
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][4]["r"] = 1
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][5]["b"] = 0.3137255012989
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][5]["g"] = 0.13333334028721
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][5]["r"] = 1
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][6]["b"] = 0.49019610881805
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][6]["g"] = 0.16078431904316
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][6]["r"] = 1
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][7]["b"] = 0.98039221763611
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][7]["g"] = 0.2549019753933
	E.db["unitframe"]["colors"]["classResources"]["comboPoints"][7]["r"] = 1

	E.db["unitframe"]["units"]["player"]["RestIcon"]["defaultColor"] = true
	E.db["unitframe"]["units"]["player"]["RestIcon"]["texture"] = "Eltruism01"
	E.db["unitframe"]["units"]["player"]["RestIcon"]["yOffset"] = -6
	E.db["unitframe"]["units"]["player"]["RestIcon"]["xOffset"] = 8
	E.db["unitframe"]["units"]["player"]["RestIcon"]["size"] = 15
	E.db["unitframe"]["units"]["focus"]["CombatIcon"]["xOffset"] = -87
	E.db["unitframe"]["units"]["focus"]["CombatIcon"]["yOffset"] = 10
	E.db["unitframe"]["units"]["focus"]["CombatIcon"]["enable"] = false
	E.db["unitframe"]["units"]["party"]["CombatIcon"]["color"]["b"] = 1
	E.db["unitframe"]["units"]["party"]["CombatIcon"]["color"]["g"] = 1
	E.db["unitframe"]["units"]["party"]["CombatIcon"]["defaultColor"] = true
	E.db["unitframe"]["units"]["party"]["CombatIcon"]["enable"] = false
	E.db["unitframe"]["units"]["party"]["CombatIcon"]["texture"] = "Eltruism16"
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["anchorPoint"] = "TOPRIGHT"
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["color"]["a"] = 0.80000001192093
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["color"]["b"] = 1
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["color"]["g"] = 1
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["defaultColor"] = true
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["texture"] = "Eltruism10"
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["size"] = 14
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["xOffset"] = -7
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["yOffset"] = -7
	E.db["unitframe"]["units"]["player"]["CombatIcon"]["enable"] = true
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["anchorPoint"] = "TOPLEFT"
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["color"]["b"] = 1
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["color"]["g"] = 1
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["defaultColor"] = true
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["xOffset"] = 7
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["yOffset"] = -7
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["texture"] = "Eltruism09"
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["size"] = 14
	E.db["unitframe"]["units"]["target"]["CombatIcon"]["enable"] = true

	E.db["unitframe"]["units"]["target"]["aurabar"]["priority"] = "Blacklist,blockNoDuration,Personal,Boss,RaidDebuffs,Dispellable,PlayerBuffs,RaidBuffsElvUI,TurtleBuffs"

	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["format"] = "[eltruism:classification][name]"

	E.db["nameplates"]["units"]["TARGET"]["glowStyle"] = "none"

	--luckyone based optimizations
	E.db["auras"]["buffs"]["seperateOwn"] = 0 -- do not sort auras
	E.db["auras"]["debuffs"]["seperateOwn"] = 0 -- do not sort auras
	E.db["chat"]["fade"] = false -- do not fade chat
	E.db["unitframe"]["units"]["assist"]["enable"] = false --disable assist/tank frames
	E.db["unitframe"]["units"]["tank"]["enable"] = false --disable assist/tank frames
	E.db["unitframe"]["units"]["boss"]["fader"]["smooth"] = 0 --used to be 0.25
	E.db["unitframe"]["units"]["player"]["fader"]["smooth"] = 0 --used to be 0.25
	E.db["unitframe"]["units"]["target"]["fader"]["smooth"] = 0 --used to be 0.25
	E.db["unitframe"]["units"]["targettarget"]["fader"]["smooth"] = 0
	E.db["unitframe"]["units"]["focus"]["fader"]["smooth"] = 0 --used to be 0.25
	E.db["unitframe"]["units"]["pet"]["fader"]["smooth"] = 0 --used to be 0.25
	E.db["unitframe"]["units"]["arena"]["fader"]["smooth"] = 0
	E.db["unitframe"]["units"]["boss"]["fader"]["smooth"] = 0
	E.db["unitframe"]["units"]["party"]["fader"]["smooth"] = 0
	E.db["unitframe"]["units"]["raid1"]["fader"]["smooth"] = 0
	E.db["unitframe"]["units"]["raid2"]["fader"]["smooth"] = 0
	E.db["unitframe"]["units"]["raid3"]["fader"]["smooth"] = 0
	E.db["general"]["altPowerBar"]["smoothbars"] = false --was true
	E.db["nameplates"]["smoothbars"] = false --was true
	E.db["unitframe"]["smoothbars"] = false --was true
	E.db["tooltip"]["inspectDataEnable"] = false --was true
	E.db["tooltip"]["mythicDataEnable"] = false --was true
	E.db["tooltip"]["role"] = false --was true
	E.db["tooltip"]["targetInfo"] = false --was true
	E.db["tooltip"]["showMount"] = false --was true

	--private auras
	E.db["movers"]["PrivateAurasMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-287,-150"
	E.db["unitframe"]["units"]["party"]["privateAuras"]["parent"]["offsetY"] = 12
	E.db["unitframe"]["units"]["raid1"]["privateAuras"]["parent"]["offsetY"] = 5
	E.db["unitframe"]["units"]["raid2"]["privateAuras"]["parent"]["offsetY"] = 5
	E.db["unitframe"]["units"]["raid3"]["privateAuras"]["parent"]["offsetY"] = 5

	ElvUI_EltreumUI:Print(L["Settings for ElvUI were updated."])
end
