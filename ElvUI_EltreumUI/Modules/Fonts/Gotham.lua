local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local sleversioncheck = GetAddOnMetadata('ElvUI_SLE', 'Version')

function ElvUI_EltreumUI:SetupFontsGotham()
	if not E.db.movers then E.db.movers = {} end
		--nameplates
		E.db["nameplates"]["cooldown"]["fonts"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["text"]["font"] = "GothamNarrow Black"
		if ElvUI_EltreumUI.Retail then
			E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["font"] = "GothamNarrow Black"
		end
		E.db["nameplates"]["units"]["ENEMY_NPC"]["title"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["text"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["power"]["text"]["font"] = "GothamNarrow Black"
		if ElvUI_EltreumUI.Retail then
			E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["font"] = "GothamNarrow Black"
		end
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["text"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["PLAYER"]["castbar"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["PLAYER"]["level"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["PLAYER"]["name"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["PLAYER"]["power"]["text"]["font"] = "GothamNarrow Black"
		E.db["nameplates"]["units"]["PLAYER"]["title"]["font"] = "GothamNarrow Black"
		E.private["general"]["chatBubbleFont"] = "GothamNarrow Black"
		E.private["general"]["dmgfont"] = "GothamNarrow Black"
		E.private["general"]["namefont"] = "GothamNarrow Black"
	if ElvUI_EltreumUI.Retail then
		if IsAddOnLoaded('ProjectAzilroka') then
			_G.ProjectAzilroka.db["stAddonManager"]["Font"] = "GothamNarrow Black"
		end
		if IsAddOnLoaded("ElvUI_SLE") then
			E.db["sle"]["armory"]["character"]["durability"]["font"] = "GothamNarrow Black"
			E.db["sle"]["armory"]["character"]["enchant"]["font"] = "GothamNarrow Black"
			E.db["sle"]["armory"]["character"]["ilvl"]["font"] = "GothamNarrow Black"
			E.db["sle"]["armory"]["inspect"]["enchant"]["font"] = "GothamNarrow Black"
			E.db["sle"]["armory"]["inspect"]["ilvl"]["font"] = "GothamNarrow Black"
			E.db["sle"]["armory"]["stats"]["catFonts"]["font"] = "GothamNarrow Black"
			E.db["sle"]["armory"]["stats"]["itemLevel"]["font"] = "GothamNarrow Black"
			E.db["sle"]["armory"]["stats"]["statFonts"]["font"] = "GothamNarrow Black"
			E.db["sle"]["media"]["fonts"]["gossip"]["font"] = "GothamNarrow Black"
			E.db["sle"]["media"]["fonts"]["mail"]["font"] = "GothamNarrow Black"
			E.db["sle"]["media"]["fonts"]["objective"]["font"] = "GothamNarrow Black"
			E.db["sle"]["media"]["fonts"]["objectiveHeader"]["font"] = "GothamNarrow Black"
			E.db["sle"]["media"]["fonts"]["pvp"]["font"] = "GothamNarrow Black"
			E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["font"] = "GothamNarrow Black"
			E.db["sle"]["media"]["fonts"]["subzone"]["font"] = "GothamNarrow Black"
			E.db["sle"]["media"]["fonts"]["zone"]["font"] = "GothamNarrow Black"
			E.db["sle"]["minimap"]["coords"]["font"] = "GothamNarrow Black"
			E.db["sle"]["minimap"]["instance"]["font"] = "GothamNarrow Black"
			E.db["sle"]["minimap"]["locPanel"]["font"] = "GothamNarrow Black"
			if sleversioncheck >= "4.22" then
				E.db["sle"]["afk"]["animTime"] = 2
				E.db["sle"]["afk"]["animType"] = "FadeIn"
				E.db["sle"]["afk"]["defaultGraphics"]["classCrest"]["anchorPoint"] = "CENTER"
				E.db["sle"]["afk"]["defaultGraphics"]["classCrest"]["attachTo"] = "SL_TopPanel"
				E.db["sle"]["afk"]["defaultGraphics"]["classCrest"]["styleOptions"] = "benikui"
				E.db["sle"]["afk"]["defaultGraphics"]["classCrest"]["xOffset"] = 184
				E.db["sle"]["afk"]["defaultGraphics"]["elvuiLogo"]["anchorPoint"] = "LEFT"
				E.db["sle"]["afk"]["defaultGraphics"]["elvuiLogo"]["attachTo"] = "SL_TopPanel"
				E.db["sle"]["afk"]["defaultGraphics"]["elvuiLogo"]["height"] = 128
				E.db["sle"]["afk"]["defaultGraphics"]["elvuiLogo"]["styleOptions"] = "releaf-flat"
				E.db["sle"]["afk"]["defaultGraphics"]["elvuiLogo"]["width"] = 256
				E.db["sle"]["afk"]["defaultGraphics"]["elvuiLogo"]["xOffset"] = 0
				E.db["sle"]["afk"]["defaultGraphics"]["elvuiLogo"]["yOffset"] = 0
				E.db["sle"]["afk"]["defaultGraphics"]["exPack"]["anchorPoint"] = "BOTTOM"
				E.db["sle"]["afk"]["defaultGraphics"]["exPack"]["inversePoint"] = true
				E.db["sle"]["afk"]["defaultGraphics"]["exPack"]["styleOptions"] = "blizzard"
				E.db["sle"]["afk"]["defaultGraphics"]["exPack"]["yOffset"] = 196
				E.db["sle"]["afk"]["defaultGraphics"]["factionCrest"]["anchorPoint"] = "TOPLEFT"
				E.db["sle"]["afk"]["defaultGraphics"]["factionCrest"]["attachTo"] = "SL_BottomPanel"
				E.db["sle"]["afk"]["defaultGraphics"]["factionCrest"]["styleOptions"] = "releaf-flat"
				E.db["sle"]["afk"]["defaultGraphics"]["factionCrest"]["xOffset"] = 0
				E.db["sle"]["afk"]["defaultGraphics"]["factionCrest"]["yOffset"] = 0
				E.db["sle"]["afk"]["defaultGraphics"]["factionLogo"]["enable"] = false
				E.db["sle"]["afk"]["defaultGraphics"]["raceCrest"]["anchorPoint"] = "CENTER"
				E.db["sle"]["afk"]["defaultGraphics"]["raceCrest"]["styleOptions"] = "releaf-flat"
				E.db["sle"]["afk"]["defaultGraphics"]["raceCrest"]["xOffset"] = -184
				E.db["sle"]["afk"]["defaultGraphics"]["raceCrest"]["yOffset"] = 0
				E.db["sle"]["afk"]["defaultGraphics"]["slLogo"]["anchorPoint"] = "RIGHT"
				E.db["sle"]["afk"]["defaultGraphics"]["slLogo"]["attachTo"] = "SL_TopPanel"
				E.db["sle"]["afk"]["defaultGraphics"]["slLogo"]["height"] = 128
				E.db["sle"]["afk"]["defaultGraphics"]["slLogo"]["width"] = 256
				E.db["sle"]["afk"]["defaultGraphics"]["slLogo"]["xOffset"] = 0
				E.db["sle"]["afk"]["defaultGraphics"]["slLogo"]["yOffset"] = 0
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["anchorPoint"] = "LEFT"
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["attachTo"] = "SL_BottomPanel"
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["font"] = "GothamNarrow Black"
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["size"] = 20
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["xOffset"] = 127
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["yOffset"] = 0
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKTimePassed"]["font"] = "GothamNarrow Black"
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKTimePassed"]["size"] = 20
				E.db["sle"]["afk"]["defaultTexts"]["SL_AFKTimePassed"]["xOffset"] = 4
				E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["anchorPoint"] = "TOPRIGHT"
				E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["attachTo"] = "SL_BottomPanel"
				E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["enable"] = false
				E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["font"] = "GothamNarrow Black"
				E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["xOffset"] = 20
				E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["yOffset"] = 50
				E.db["sle"]["afk"]["defaultTexts"]["SL_GuildName"]["anchorPoint"] = "BOTTOMLEFT"
				E.db["sle"]["afk"]["defaultTexts"]["SL_GuildName"]["attachTo"] = "SL_PlayerName"
				E.db["sle"]["afk"]["defaultTexts"]["SL_GuildName"]["font"] = "GothamNarrow Black"
				E.db["sle"]["afk"]["defaultTexts"]["SL_GuildName"]["size"] = 20
				E.db["sle"]["afk"]["defaultTexts"]["SL_GuildRank"]["anchorPoint"] = "RIGHT"
				E.db["sle"]["afk"]["defaultTexts"]["SL_GuildRank"]["attachTo"] = "SL_GuildName"
				E.db["sle"]["afk"]["defaultTexts"]["SL_GuildRank"]["font"] = "GothamNarrow Black"
				E.db["sle"]["afk"]["defaultTexts"]["SL_GuildRank"]["size"] = 20
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerClass"]["anchorPoint"] = "TOPRIGHT"
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerClass"]["attachTo"] = "SL_TopPanel"
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerClass"]["enable"] = false
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerClass"]["font"] = "GothamNarrow Black"
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerLevel"]["enable"] = false
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["anchorPoint"] = "TOPLEFT"
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["attachTo"] = "SL_BottomPanel"
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["font"] = "GothamNarrow Black"
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["size"] = 20
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["xOffset"] = 128
				E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["yOffset"] = -30
				E.db["sle"]["afk"]["defaultTexts"]["SL_SubText"]["enable"] = false
				E.db["sle"]["afk"]["defaultTexts"]["SL_SubText"]["size"] = 16
				E.db["sle"]["afk"]["defaultTexts"]["SL_SubText"]["xOffset"] = 0
				E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["anchorPoint"] = "CENTER"
				E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["attachTo"] = "SL_BottomPanel"
				E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["font"] = "GothamNarrow Black"
				E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["size"] = 32
				E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["yOffset"] = 40
				E.db["sle"]["afk"]["enable"] = true
				E.db["sle"]["afk"]["panels"]["bottom"]["height"] = 120
				E.db["sle"]["afk"]["panels"]["top"]["height"] = 120
				E.db["sle"]["afk"]["playermodel"]["anim"] = 47
			end
			E.db["sle"]["skins"]["merchant"]["list"]["nameFont"] = "GothamNarrow Black"
			E.db["sle"]["skins"]["merchant"]["list"]["subFont"] = "GothamNarrow Black"
		end
		if IsAddOnLoaded("ElvUI_WindTools") then
			E.private["WT"]["skins"]["ime"]["label"]["name"] = "GothamNarrow Black"
			E.db["WT"]["item"]["extraItemsBar"]["bar1"]["bindFont"]["name"] = "GothamNarrow Black"
			E.db["WT"]["item"]["extraItemsBar"]["bar1"]["countFont"]["name"] = "GothamNarrow Black"
			E.db["WT"]["item"]["inspect"]["levelText"]["name"] = "GothamNarrow Black"
			E.db["WT"]["misc"]["gameBar"]["additionalText"]["font"]["name"] = "GothamNarrow Black"
			E.db["WT"]["misc"]["gameBar"]["time"]["font"]["name"] = "GothamNarrow Black"
		end
		E.db["general"]["altPowerBar"]["font"] = "GothamNarrow Black"
		E.db["general"]["itemLevel"]["itemLevelFont"] = "GothamNarrow Black"
	end
		E.db["general"]["font"] = "GothamNarrow Black"
		E.db["general"]["minimap"]["locationFont"] = "GothamNarrow Black"
		if ElvUI_EltreumUI.Retail then
			E.db["general"]["minimap"]["icons"]["queueStatus"]["font"] = "GothamNarrow Black"
		end
		E.db["bags"]["countFont"] = "GothamNarrow Black"
		E.db["bags"]["itemInfoFont"] = "GothamNarrow Black"
		E.db["bags"]["itemLevelFont"] = "GothamNarrow Black"
		E.db["chat"]["font"] = "GothamNarrow Black"
		E.db["chat"]["tabFont"] = "GothamNarrow Black"
		E.db["cooldown"]["fonts"]["font"] = "GothamNarrow Black"
		if ElvUI_EltreumUI.Retail then
			E.db["databars"]["honor"]["font"] = "GothamNarrow Black"
			E.db["databars"]["azerite"]["font"] = "GothamNarrow Black"
		end
		E.db["databars"]["experience"]["font"] = "GothamNarrow Black"
		E.db["databars"]["reputation"]["font"] = "GothamNarrow Black"
		E.db["databars"]["threat"]["font"] = "GothamNarrow Black"
		E.db["datatexts"]["font"] = "GothamNarrow Black"
		E.db["tooltip"]["font"] = "GothamNarrow Black"
		E.db["tooltip"]["healthBar"]["font"] = "GothamNarrow Black"

		-- Custom Text: Party
		E.db["unitframe"]["units"]["party"]["customTexts"] = E.db["unitframe"]["units"]["party"]["customTexts"] or {}
		E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyHealth"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 16,
			["text_format"] = "[eltruism:raidmarker] [health:current:shortvalue]",
			["xOffset"] = 0,
			["yOffset"] = 0
		}
		E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyName"] = {
			["attachTextTo"] = "InfoPanel",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "LEFT",
			["size"] = 12,
			["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel]",
			["xOffset"] = 2,
			["yOffset"] = 0
		}
		E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyPower"] = {
			["attachTextTo"] = "Power",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 11,
			["text_format"] = "[powercolor][power:current:shortvalue]",
			["xOffset"] = 0,
			["yOffset"] = 0
		}
		if ElvUI_EltreumUI.Retail then
			E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyAbsorb"] = {
			["attachTextTo"] = "Health",
			["enable"] = false,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 11,
			["text_format"] = "||cffFFFF00[absorbs]||r ",
			["xOffset"] = 6,
			["yOffset"] = 0
			}
		end
		-- Custom Text: Pet
		if ElvUI_EltreumUI.Retail then
			E.db["unitframe"]["units"]["pet"]["customTexts"] = E.db["unitframe"]["units"]["pet"]["customTexts"] or {}
			E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"] = {
				["attachTextTo"] = "Health",
				["enable"] = true,
				["font"] = "GothamNarrow Black",
				["fontOutline"] = "THICKOUTLINE",
				["justifyH"] = "CENTER",
				["size"] = 12,
				["text_format"] = "[namecolor][name]",
				["xOffset"] = 0,
				["yOffset"] = 0
			}
		elseif ElvUI_EltreumUI.TBC or ElvUI_EltreumUI.Classic then
			E.db["unitframe"]["units"]["pet"]["customTexts"] = E.db["unitframe"]["units"]["pet"]["customTexts"] or {}
			E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"] = {
				["attachTextTo"] = "Health",
				["enable"] = true,
				["font"] = "GothamNarrow Black",
				["fontOutline"] = "THICKOUTLINE",
				["justifyH"] = "CENTER",
				["size"] = 12,
				["text_format"] = "[namecolor][name][happiness:discord]",
				["xOffset"] = 0,
				["yOffset"] = 0
			}
		end
		-- Custom Text: Player
		E.db["unitframe"]["units"]["player"]["customTexts"] = E.db["unitframe"]["units"]["player"]["customTexts"] or {}
		if ElvUI_EltreumUI.Retail then
			E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPlayerAbsorb"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 12,
			["text_format"] = "||cffFFFF00[absorbs]||r ",
			["xOffset"] = 0,
			["yOffset"] = 15
			}
		end
		E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumHealth"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 14,
			["text_format"] = "[health:current-percent:shortvalue]",
			["xOffset"] = 0,
			["yOffset"] = 0
		}
		E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "LEFT",
			["size"] = 16,
			["text_format"] = "[namecolor][name] [eltruism:class:player] [eltruism:raidmarker]",
			["xOffset"] = 2,
			["yOffset"] = 0
		}
		E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"] = {
			["attachTextTo"] = "Power",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 10,
			["text_format"] = "[powercolor][power:current:shortvalue]",
			["xOffset"] = 0,
			["yOffset"] = -1
		}
		E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPvP"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "CENTER",
			["size"] = 15,
			["text_format"] = "[mouseover]||cFFB04F4F[pvptimer]||r",
			["xOffset"] = 0,
			["yOffset"] = 0
		}
		-- Custom Text: Raid
		E.db["unitframe"]["units"]["raid"]["customTexts"] = E.db["unitframe"]["units"]["raid"]["customTexts"] or {}
		E.db["unitframe"]["units"]["raid"]["customTexts"]["EltreumGroup"] = {
			["attachTextTo"] = "Health",
			["enable"] = false,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "NONE",
			["justifyH"] = "LEFT",
			["size"] = 8,
			["text_format"] = " Group [group]",
			["xOffset"] = 37,
			["yOffset"] = 10
		}
		if ElvUI_EltreumUI.Retail then
			E.db["unitframe"]["units"]["raid"]["customTexts"]["EltreumRaidAbsorb"] = {
			["attachTextTo"] = "Health",
			["enable"] = false,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "CENTER",
			["size"] = 10,
			["text_format"] = "||cffFFFF00[absorbs]||r",
			["xOffset"] = 45,
			["yOffset"] = 0
			}
		end
		E.db["unitframe"]["units"]["raid"]["customTexts"]["EltreumRaidHealth"]= {
		["attachTextTo"] = "InfoPanel",
		["enable"] = true,
		["font"] = "GothamNarrow Black",
		["fontOutline"] = "OUTLINE",
		["justifyH"] = "RIGHT",
		["size"] = 10,
		["text_format"] = "[health:current:shortvalue]",
		["xOffset"] = 0,
		["yOffset"] = -1
		}
		E.db["unitframe"]["units"]["raid"]["customTexts"]["EltreumRaidName"] = {
		["attachTextTo"] = "InfoPanel",
		["enable"] = true,
		["font"] = "GothamNarrow Black",
		["fontOutline"] = "OUTLINE",
		["justifyH"] = "LEFT",
		["size"] = 10,
		["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel]",
		["xOffset"] = 0,
		["yOffset"] = 0
		}
		-- Custom Text: Raid 40
		E.db["unitframe"]["units"]["raid40"]["customTexts"] = E.db["unitframe"]["units"]["raid40"]["customTexts"] or {}
		if ElvUI_EltreumUI.Retail then
			E.db["unitframe"]["units"]["raid40"]["customTexts"]["EltreumRaid40Absorb"] = {
			["attachTextTo"] = "Health",
			["enable"] = false,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "CENTER",
			["size"] = 10,
			["text_format"] = "||cffFFFF00[absorbs]||r",
			["xOffset"] = 37,
			["yOffset"] = 12
			}
		end
		E.db["unitframe"]["units"]["raid40"]["customTexts"]["EltreumRaid40Group"] = {
			["attachTextTo"] = "Health",
			["enable"] = false,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "NONE",
			["justifyH"] = "LEFT",
			["size"] = 8,
			["text_format"] = " Group [group]",
			["xOffset"] = 40,
			["yOffset"] = 12
		}
		E.db["unitframe"]["units"]["raid40"]["customTexts"]["EltreumRaid40Health"] = {
			["attachTextTo"] = "InfoPanel",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "OUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 10,
			["text_format"] = "[health:current:shortvalue]",
			["xOffset"] = 0,
			["yOffset"] = 0
		}
		-- Custom Text: Target
		E.db["unitframe"]["units"]["target"]["customTexts"] = E.db["unitframe"]["units"]["target"]["customTexts"] or {}
		if ElvUI_EltreumUI.Retail then
			E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetAbsorb"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 12,
			["text_format"] = "||cffFFFF00[absorbs]||r",
			["xOffset"] = 0,
			["yOffset"] = 15
			}
		end
		E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetHealth"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "LEFT",
			["size"] = 14,
			["text_format"] = "[health:current-percent:shortvalue]",
			["xOffset"] = 2,
			["yOffset"] = 0
		}
		E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "RIGHT",
			["size"] = 16,
			["text_format"] = "[eltruism:raidmarker] [eltruism:class:player] [namecolor][eltruism:difficulty][name:eltruism:abbreviate]",
			["xOffset"] = -2,
			["yOffset"] = 0
		}
		E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"] = {
		["attachTextTo"] = "Power",
		["enable"] = true,
		["font"] = "GothamNarrow Black",
		["fontOutline"] = "THICKOUTLINE",
		["justifyH"] = "LEFT",
		["size"] = 10,
		["text_format"] = "[powercolor][power:current:shortvalue]",
		["xOffset"] = 2,
		["yOffset"] = -1
		}
		E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetofTarget"] = {
		["attachTextTo"] = "Frame",
		["enable"] = false,
		["font"] = "GothamNarrow Black",
		["fontOutline"] = "OUTLINE",
		["justifyH"] = "RIGHT",
		["size"] = 10,
		["text_format"] = "Target: [eltruism:targetcast]",
		["xOffset"] = -5,
		["yOffset"] = -14
		}
		-- Custom Text: TargetTarget
		E.db["unitframe"]["units"]["targettarget"]["customTexts"] = E.db["unitframe"]["units"]["targettarget"]["customTexts"] or {}
		E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetHealth"] = {
			["attachTextTo"] = "Health",
			["enable"] = false,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "THICKOUTLINE",
			["justifyH"] = "LEFT",
			["size"] = 11,
			["text_format"] = "[health:current:shortvalue]",
			["xOffset"] = 2,
			["yOffset"] = 3
		}
		E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"] = {
			["attachTextTo"] = "Health",
			["enable"] = true,
			["font"] = "GothamNarrow Black",
			["fontOutline"] = "OUTLINE",
			["justifyH"] = "CENTER",
			["size"] = 12,
			["text_format"] = "[namecolor][name:abbrev]",
			["xOffset"] = 0,
			["yOffset"] = 3
		}
		E.db["unitframe"]["units"]["targettarget"]["customTexts"]["Powercustom"] = {
		["attachTextTo"] = "Power",
		["enable"] = true,
		["font"] = "GothamNarrow Black",
		["fontOutline"] = "THICKOUTLINE",
		["justifyH"] = "RIGHT",
		["size"] = 9,
		["text_format"] = "[powercolor][power:current:shortvalue]",
		["xOffset"] = 0,
		["yOffset"] = -1
		}

		--ActionBars
		E.db["actionbar"]["bar1"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar1"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar1"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar10"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar10"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar10"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar2"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar2"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar2"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar3"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar3"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar3"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar4"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar4"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar4"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar5"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar5"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar5"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar6"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar6"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar6"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar7"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar7"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar7"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar8"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar8"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar8"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar9"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar9"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["bar9"]["macroFont"] = "GothamNarrow Black"
		E.db["actionbar"]["barPet"]["countFont"] = "GothamNarrow Black"
		E.db["actionbar"]["barPet"]["hotkeyFont"] = "GothamNarrow Black"
		if ElvUI_EltreumUI.Retail then
			E.db["actionbar"]["extraActionButton"]["hotkeyFont"] = "GothamNarrow Black"
		end
		E.db["actionbar"]["font"] = "GothamNarrow Black"
		E.db["actionbar"]["stanceBar"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["actionbar"]["vehicleExitButton"]["hotkeyFont"] = "GothamNarrow Black"
		E.db["auras"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["auras"]["buffs"]["timeFont"] = "GothamNarrow Black"
		E.db["auras"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["auras"]["debuffs"]["timeFont"] = "GothamNarrow Black"
		E.db["unitframe"]["font"] = "GothamNarrow Black"
		if ElvUI_EltreumUI.Retail then
			E.db["unitframe"]["units"]["arena"]["buffs"]["countFont"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["arena"]["debuffs"]["countFont"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["assist"]["buffs"]["countFont"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["assist"]["debuffs"]["countFont"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["assist"]["rdebuffs"]["font"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["boss"]["buffs"]["countFont"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["boss"]["debuffs"]["countFont"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["focus"]["debuffs"]["countFont"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["party"]["castbar"]["customTextFont"]["font"] = "GothamNarrow Black"
			E.db["unitframe"]["units"]["player"]["castbar"]["customTimeFont"]["font"] = "GothamNarrow Black"
		end
		E.db["unitframe"]["units"]["party"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["party"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["player"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["player"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["raid"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["raid"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["tank"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["tank"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["tank"]["rdebuffs"]["font"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["target"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["target"]["debuffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["targettargettarget"]["buffs"]["countFont"] = "GothamNarrow Black"
		E.db["unitframe"]["units"]["targettargettarget"]["debuffs"]["countFont"] = "GothamNarrow Black"

		E:StaggeredUpdateAll(nil, true)
		ElvUI_EltreumUI:Print(L["GothamNarrow Black Font has been set."])
end
