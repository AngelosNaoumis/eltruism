local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local _G = _G

--Setup Shadow & Light
function ElvUI_EltreumUI:GetSLEProfile()
	if IsAddOnLoaded("ElvUI_SLE") then
		-- Load Shadow & Light profile
		E.global["sle"]["advanced"]["confirmed"] = true
		E.global["sle"]["advanced"]["gameMenu"]["enable"] = false
		E.global["sle"]["advanced"]["general"] = true
		E.global["sle"]["advanced"]["optionsLimits"] = true
		E.private["sle"]["install_complete"] = "4.25"
		-- Private DB
		E.private["sle"]["module"]["blizzmove"]["enable"] = true
		E.private["sle"]["module"]["screensaver"] = true
		E.private["sle"]["professions"]["deconButton"]["enable"] = true
		E.private["sle"]["professions"]["deconButton"]["style"] = "PIXEL"
		E.private["sle"]["professions"]["enchant"]["enchScroll"] = true
		E.private["sle"]["professions"]["fishing"]["EasyCast"] = true
		E.private["sle"]["professions"]["fishing"]["FromMount"] = true
		E.private["sle"]["skins"]["merchant"]["enable"] = true
		E.private["sle"]["skins"]["merchant"]["style"] = "List"
		E.private["sle"]["skins"]["objectiveTracker"]["class"] = true
		E.private["sle"]["skins"]["objectiveTracker"]["color"]["b"] = 0
		E.private["sle"]["skins"]["objectiveTracker"]["color"]["g"] = 0.41960784313725
		E.private["sle"]["skins"]["objectiveTracker"]["color"]["r"] = 0.25882352941176
		E.private["sle"]["skins"]["objectiveTracker"]["keyTimers"]["enable"] = true
		E.private["sle"]["skins"]["objectiveTracker"]["keyTimers"]["showBothTimers"] = true
		E.private["sle"]["skins"]["objectiveTracker"]["skinnedTextureLogo"] = "CUSTOM"
		E.private["sle"]["skins"]["objectiveTracker"]["texture"] = "Minimalist"
		E.private["sle"]["skins"]["objectiveTracker"]["underlineHeight"] = 2
		E.private["sle"]["skins"]["petbattles"]["enable"] = false
		E.private["sle"]["pvp"]["KBbanner"]["enable"] = true
		E.private["sle"]["uibuttons"]["style"] = "dropdown"
		E.private["sle"]["actionbars"]["checkedColor"]["a"] = 1
		E.private["sle"]["actionbars"]["checkedColor"]["g"] = 0
		--[[ --viewport sometimes errors idk why
			E.db["sle"]["misc"]["viewport"]["left"] = {}
			E.db["sle"]["misc"]["viewport"]["left"] = 0
			E.db["sle"]["misc"]["viewport"]["right"] = {}
			E.db["sle"]["misc"]["viewport"]["right"] = 0
			E.db["sle"]["misc"]["viewport"]["top"] = {}
			E.db["sle"]["misc"]["viewport"]["top"] = 0
			E.db["sle"]["misc"]["viewport"]["bottom"] = {}
			E.db["sle"]["misc"]["viewport"]["bottom"] = 0
		]]--

		-- Actionbars
		--E.db["sle"]["actionbars"]["vehicle"]["buttonspacing"] = 1
		-- Armory
		E.db["sle"]["armory"]["character"]["background"]["selectedBG"] = "CLASS"
		E.db["sle"]["armory"]["character"]["durability"]["display"] = "Hide"
		E.db["sle"]["armory"]["character"]["durability"]["font"] = "Kimberley"
		E.db["sle"]["armory"]["character"]["durability"]["fontSize"] = 11
		E.db["sle"]["armory"]["character"]["enable"] = true
		E.db["sle"]["armory"]["character"]["enchant"]["font"] = "Kimberley"
		E.db["sle"]["armory"]["character"]["enchant"]["fontSize"] = 10
		E.db["sle"]["armory"]["character"]["enchant"]["yOffset"] = -1
		E.db["sle"]["armory"]["character"]["gem"]["size"] = 11
		E.db["sle"]["armory"]["character"]["gem"]["xOffset"] = 4
		E.db["sle"]["armory"]["character"]["gradient"]["quality"] = true
		E.db["sle"]["armory"]["character"]["ilvl"]["colorType"] = "GRADIENT"
		E.db["sle"]["armory"]["character"]["ilvl"]["font"] = "Kimberley"
		E.db["sle"]["armory"]["character"]["ilvl"]["fontSize"] = 11
		E.db["sle"]["armory"]["inspect"]["background"]["overlay"] = false
		E.db["sle"]["armory"]["inspect"]["background"]["selectedBG"] = "CLASS"
		E.db["sle"]["armory"]["inspect"]["enable"] = true
		E.db["sle"]["armory"]["inspect"]["enchant"]["font"] = "Kimberley"
		E.db["sle"]["armory"]["inspect"]["enchant"]["fontSize"] = 10
		E.db["sle"]["armory"]["inspect"]["enchant"]["yOffset"] = -1
		E.db["sle"]["armory"]["inspect"]["gem"]["size"] = 11
		E.db["sle"]["armory"]["inspect"]["gem"]["xOffset"] = 4
		E.db["sle"]["armory"]["inspect"]["gradient"]["quality"] = true
		E.db["sle"]["armory"]["inspect"]["ilvl"]["colorType"] = "GRADIENT"
		E.db["sle"]["armory"]["inspect"]["ilvl"]["font"] = "Kimberley"
		E.db["sle"]["armory"]["inspect"]["ilvl"]["fontSize"] = 11
		E.db["sle"]["armory"]["stats"]["AverageColor"]["b"] = 1
		E.db["sle"]["armory"]["stats"]["AverageColor"]["g"] = 0
		E.db["sle"]["armory"]["stats"]["AverageColor"]["r"] = 0.66666666666667
		E.db["sle"]["armory"]["stats"]["IlvlColor"] = true
		E.db["sle"]["armory"]["stats"]["List"]["ALTERNATEMANA"] = true
		E.db["sle"]["armory"]["stats"]["List"]["ATTACK_AP"] = true
		E.db["sle"]["armory"]["stats"]["List"]["ATTACK_ATTACKSPEED"] = true
		E.db["sle"]["armory"]["stats"]["List"]["ATTACK_DAMAGE"] = false
		E.db["sle"]["armory"]["stats"]["List"]["BLOCK"] = true
		E.db["sle"]["armory"]["stats"]["List"]["ENERGY_REGEN"] = true
		E.db["sle"]["armory"]["stats"]["List"]["FOCUS_REGEN"] = true
		E.db["sle"]["armory"]["stats"]["List"]["HEALTH"] = true
		E.db["sle"]["armory"]["stats"]["List"]["MANAREGEN"] = true
		E.db["sle"]["armory"]["stats"]["List"]["PARRY"] = true
		E.db["sle"]["armory"]["stats"]["List"]["POWER"] = true
		E.db["sle"]["armory"]["stats"]["List"]["RUNE_REGEN"] = true
		E.db["sle"]["armory"]["stats"]["catFonts"]["font"] = "Kimberley"
		E.db["sle"]["armory"]["stats"]["catFonts"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["armory"]["stats"]["itemLevel"]["font"] = "Kimberley"
		E.db["sle"]["armory"]["stats"]["itemLevel"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["armory"]["stats"]["itemLevel"]["size"] = 20
		E.db["sle"]["armory"]["stats"]["statFonts"]["font"] = "Kimberley"
		E.db["sle"]["armory"]["stats"]["statFonts"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["armory"]["stats"]["statFonts"]["size"] = 10
		--- Media
		E.db["sle"]["media"]["fonts"]["gossip"]["font"] = "Kimberley"
		E.db["sle"]["media"]["fonts"]["gossip"]["size"] = 11
		E.db["sle"]["media"]["fonts"]["mail"]["font"] = "Kimberley"
		E.db["sle"]["media"]["fonts"]["mail"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["media"]["fonts"]["mail"]["size"] = 11
		E.db["sle"]["media"]["fonts"]["objective"]["font"] = "Kimberley"
		E.db["sle"]["media"]["fonts"]["objective"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["media"]["fonts"]["objective"]["size"] = 13
		E.db["sle"]["media"]["fonts"]["objectiveHeader"]["font"] = "Kimberley"
		E.db["sle"]["media"]["fonts"]["objectiveHeader"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["media"]["fonts"]["objectiveHeader"]["size"] = 15
		E.db["sle"]["media"]["fonts"]["pvp"]["font"] = "Kimberley"
		E.db["sle"]["media"]["fonts"]["pvp"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["media"]["fonts"]["pvp"]["size"] = 20
		E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["font"] = "Kimberley"
		E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["size"] = 22
		E.db["sle"]["media"]["fonts"]["subzone"]["font"] = "Kimberley"
		E.db["sle"]["media"]["fonts"]["subzone"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["media"]["fonts"]["subzone"]["size"] = 28
		E.db["sle"]["media"]["fonts"]["zone"]["font"] = "Kimberley"
		E.db["sle"]["media"]["fonts"]["zone"]["outline"] = "THICKOUTLINE"
		E.db["sle"]["media"]["fonts"]["zone"]["size"] = 48
		-- Minimap
		E.db["sle"]["minimap"]["coords"]["enable"] = true
		E.db["sle"]["minimap"]["coords"]["font"] = "Kimberley"
		E.db["sle"]["minimap"]["coords"]["fontOutline"] = "THICKOUTLINE"
		E.db["sle"]["minimap"]["coords"]["fontSize"] = 13
		E.db["sle"]["minimap"]["coords"]["format"] = "%.2f"
		E.db["sle"]["minimap"]["coords"]["mouseover"] = true
		E.db["sle"]["minimap"]["coords"]["yOffset"] = -70
		E.db["sle"]["minimap"]["instance"]["enable"] = true
		E.db["sle"]["minimap"]["instance"]["font"] = "Kimberley"
		E.db["sle"]["minimap"]["instance"]["fontOutline"] = "THICKOUTLINE"
		E.db["sle"]["minimap"]["instance"]["fontSize"] = 13
		E.db["sle"]["minimap"]["instance"]["xoffset"] = -5
		E.db["sle"]["minimap"]["instance"]["yoffset"] = -20
		E.db["sle"]["minimap"]["locPanel"]["font"] = "Kimberley"
		E.db["sle"]["minimap"]["locPanel"]["fontOutline"] = "THICKOUTLINE"
		E.db["sle"]["minimap"]["locPanel"]["fontSize"] = 14
		E.db["sle"]["minimap"]["locPanel"]["height"] = 29
		E.db["sle"]["minimap"]["locPanel"]["portals"]["cdFormat"] = "DEFAULT_ICONFIRST"
		E.db["sle"]["minimap"]["locPanel"]["width"] = 425
		-- Nameplates
		--E.db["sle"]["nameplates"]["targetcount"]["font"] = "Kimberley"
		--E.db["sle"]["nameplates"]["targetcount"]["fontOutline"] = "THICKOUTLINE"
		--E.db["sle"]["nameplates"]["targetcount"]["size"] = 10
		--E.db["sle"]["nameplates"]["targetcount"]["xoffset"] = 0
		--E.db["sle"]["nameplates"]["targetcount"]["yoffset"] = 1
		--E.db["sle"]["nameplates"]["threat"]["enable"] = false
		--E.db["sle"]["nameplates"]["targetcount"]["enable"] = false
		-- PvP
		E.db["sle"]["pvp"]["autorelease"] = true
		E.db["sle"]["pvp"]["duels"]["announce"] = true
		-- Quests
		E.db["sle"]["quests"]["autoReward"] = true
		--E.db["sle"]["quests"]["visibility"]["arena"] = "HIDE"
		--E.db["sle"]["quests"]["visibility"]["bg"] = "HIDE"
		--E.db["sle"]["quests"]["visibility"]["combat"] = "FULL"
		--E.db["sle"]["quests"]["visibility"]["enable"] = true
		-- Raidmanager
		E.db["sle"]["raidmanager"]["roles"] = true
		E.db["sle"]["raidmarkers"]["backdrop"] = true
		E.db["sle"]["raidmarkers"]["enable"] = false
		E.db["sle"]["raidmarkers"]["mouseover"] = true
		E.db["sle"]["raidmarkers"]["spacing"] = 3
		E.db["sle"]["raidmarkers"]["visibility"] = "ALWAYS"
		-- Backgrounds
		E.db["sle"]["backgrounds"]["bg1"]["height"] = 35
		E.db["sle"]["backgrounds"]["bg1"]["template"] = "Transparent"
		E.db["sle"]["backgrounds"]["bg1"]["width"] = 3840
		E.db["sle"]["backgrounds"]["bg2"]["height"] = 38
		E.db["sle"]["backgrounds"]["bg2"]["template"] = "Transparent"
		E.db["sle"]["backgrounds"]["bg2"]["width"] = 3840
		E.db["sle"]["backgrounds"]["bg4"]["height"] = 31
		E.db["sle"]["backgrounds"]["bg4"]["template"] = "Transparent"
		E.db["sle"]["backgrounds"]["bg4"]["width"] = 2290
		-- Chat
		--E.db["sle"]["chat"]["combathide"] = "LEFT"
		E.db["sle"]["chat"]["dpsSpam"] = true
		E.db["sle"]["chat"]["guildmaster"] = true
		E.db["sle"]["chat"]["invite"]["altInv"] = true
		E.db["sle"]["chat"]["textureAlpha"]["alpha"] = 0.47
		-- Databars
		E.db["sle"]["databars"]["experience"]["chatfilter"]["enable"] = true
		E.db["sle"]["databars"]["experience"]["chatfilter"]["style"] = "STYLE2"
		E.db["sle"]["databars"]["honor"]["chatfilter"]["awardStyle"] = "STYLE2"
		E.db["sle"]["databars"]["honor"]["chatfilter"]["enable"] = true
		E.db["sle"]["databars"]["honor"]["chatfilter"]["style"] = "STYLE2"
		E.db["sle"]["databars"]["reputation"]["chatfilter"]["enable"] = true
		E.db["sle"]["databars"]["reputation"]["chatfilter"]["showAll"] = true
		E.db["sle"]["databars"]["reputation"]["chatfilter"]["style"] = "STYLE2"
		E.db["sle"]["databars"]["reputation"]["chatfilter"]["styleDec"] = "STYLE2"
		-- Datatexts
		E.db["sle"]["dt"]["friends"]["combat"] = true
		E.db["sle"]["dt"]["friends"]["hideAFK"] = true
		E.db["sle"]["dt"]["friends"]["hideDND"] = true
		E.db["sle"]["dt"]["friends"]["hide_hintline"] = true
		E.db["sle"]["dt"]["friends"]["hide_titleline"] = true
		E.db["sle"]["dt"]["friends"]["tooltipAutohide"] = 0.1
		E.db["sle"]["dt"]["guild"]["combat"] = true
		E.db["sle"]["dt"]["guild"]["hide_hintline"] = true
		E.db["sle"]["dt"]["guild"]["hide_titleline"] = true
		E.db["sle"]["dt"]["guild"]["tooltipAutohide"] = 0.1
		-- Loot
		--[[
		E.db["sle"]["loot"]["autoroll"]["enable"] = false
		E.db["sle"]["loot"]["enable"] = false
		E.db["sle"]["loot"]["history"]["autohide"] = false
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_BN_CONVERSATION"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_BN_WHISPER"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_BN_WHISPER_INFORM"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_CHANNEL"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_EMOTE"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_GUILD"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_INSTANCE_CHAT"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_INSTANCE_CHAT_LEADER"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_OFFICER"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_PARTY"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_PARTY_LEADER"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_RAID"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_RAID_LEADER"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_RAID_WARNING"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_SAY"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_WHISPER"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_WHISPER_INFORM"] = true
		E.db["sle"]["loot"]["looticons"]["channels"]["CHAT_MSG_YELL"] = true
		E.db["sle"]["loot"]["looticons"]["enable"] = false
		E.db["sle"]["loot"]["looticons"]["size"] = 13
		]]--
		--AFK Screensaver
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
		E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["font"] = "Kimberley"
		E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["size"] = 20
		E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["xOffset"] = 127
		E.db["sle"]["afk"]["defaultTexts"]["SL_AFKMessage"]["yOffset"] = 0
		E.db["sle"]["afk"]["defaultTexts"]["SL_AFKTimePassed"]["font"] = "Kimberley"
		E.db["sle"]["afk"]["defaultTexts"]["SL_AFKTimePassed"]["size"] = 20
		E.db["sle"]["afk"]["defaultTexts"]["SL_AFKTimePassed"]["xOffset"] = 4
		E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["anchorPoint"] = "TOPRIGHT"
		E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["attachTo"] = "SL_BottomPanel"
		E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["enable"] = false
		E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["font"] = "Kimberley"
		E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["xOffset"] = 20
		E.db["sle"]["afk"]["defaultTexts"]["SL_Date"]["yOffset"] = 50
		E.db["sle"]["afk"]["defaultTexts"]["SL_GuildName"]["anchorPoint"] = "BOTTOMLEFT"
		E.db["sle"]["afk"]["defaultTexts"]["SL_GuildName"]["attachTo"] = "SL_PlayerName"
		E.db["sle"]["afk"]["defaultTexts"]["SL_GuildName"]["font"] = "Kimberley"
		E.db["sle"]["afk"]["defaultTexts"]["SL_GuildName"]["size"] = 20
		E.db["sle"]["afk"]["defaultTexts"]["SL_GuildRank"]["anchorPoint"] = "RIGHT"
		E.db["sle"]["afk"]["defaultTexts"]["SL_GuildRank"]["attachTo"] = "SL_GuildName"
		E.db["sle"]["afk"]["defaultTexts"]["SL_GuildRank"]["font"] = "Kimberley"
		E.db["sle"]["afk"]["defaultTexts"]["SL_GuildRank"]["size"] = 20
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerClass"]["anchorPoint"] = "TOPRIGHT"
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerClass"]["attachTo"] = "SL_TopPanel"
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerClass"]["enable"] = false
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerClass"]["font"] = "Kimberley"
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerLevel"]["enable"] = false
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["anchorPoint"] = "TOPLEFT"
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["attachTo"] = "SL_BottomPanel"
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["font"] = "Kimberley"
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["size"] = 20
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["xOffset"] = 128
		E.db["sle"]["afk"]["defaultTexts"]["SL_PlayerName"]["yOffset"] = -30
		E.db["sle"]["afk"]["defaultTexts"]["SL_SubText"]["enable"] = false
		E.db["sle"]["afk"]["defaultTexts"]["SL_SubText"]["size"] = 16
		E.db["sle"]["afk"]["defaultTexts"]["SL_SubText"]["xOffset"] = 0
		E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["anchorPoint"] = "CENTER"
		E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["attachTo"] = "SL_BottomPanel"
		E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["font"] = "Kimberley"
		E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["size"] = 32
		E.db["sle"]["afk"]["defaultTexts"]["SL_Time"]["yOffset"] = 40
		E.db["sle"]["afk"]["enable"] = true
		E.db["sle"]["afk"]["panels"]["bottom"]["height"] = 120
		E.db["sle"]["afk"]["panels"]["top"]["height"] = 120
		E.db["sle"]["afk"]["playermodel"]["anim"] = 47

		-- Shadows
		--E.db["sle"]["shadows"]["actionbars"]["bar1"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar1"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar1"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar10"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar10"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar10"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar2"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar2"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar2"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar3"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar3"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar3"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar4"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar4"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar4"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar5"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar5"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar5"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar6"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar6"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar6"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar7"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar7"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar7"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar8"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar8"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar8"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["bar9"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["bar9"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["bar9"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["microbar"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["microbar"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["microbar"]["size"] = 2
		E.db["sle"]["shadows"]["actionbars"]["petbar"]["backdrop"] = false
		--E.db["sle"]["shadows"]["actionbars"]["petbar"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["petbar"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["petbar"]["size"] = 2
		--E.db["sle"]["shadows"]["actionbars"]["stancebar"]["buttons"] = true
		E.db["sle"]["shadows"]["actionbars"]["stancebar"]["buttons"] = false
		E.db["sle"]["shadows"]["actionbars"]["stancebar"]["size"] = 2
		--E.db["sle"]["shadows"]["chat"]["LeftChatPanel"]["backdrop"] = true
		E.db["sle"]["shadows"]["chat"]["LeftChatPanel"]["backdrop"] = false
		E.db["sle"]["shadows"]["chat"]["LeftChatPanel"]["size"] = 2
		--E.db["sle"]["shadows"]["chat"]["RightChatPanel"]["backdrop"] = true
		E.db["sle"]["shadows"]["chat"]["RightChatPanel"]["backdrop"] = false
		E.db["sle"]["shadows"]["chat"]["RightChatPanel"]["size"] = 2
		E.db["sle"]["shadows"]["databars"]["azerite"]["size"] = 2
		E.db["sle"]["shadows"]["databars"]["experience"]["size"] = 2
		E.db["sle"]["shadows"]["databars"]["honor"]["size"] = 2
		E.db["sle"]["shadows"]["databars"]["reputation"]["size"] = 2
		--E.db["sle"]["shadows"]["datatexts"]["panels"]["LeftChatDataPanel"]["backdrop"] = true
		E.db["sle"]["shadows"]["datatexts"]["panels"]["LeftChatDataPanel"]["backdrop"] = false
		E.db["sle"]["shadows"]["datatexts"]["panels"]["LeftChatDataPanel"]["size"] = 2
		E.db["sle"]["shadows"]["datatexts"]["panels"]["MinimapPanel"]["size"] = 2
		--E.db["sle"]["shadows"]["datatexts"]["panels"]["RightChatDataPanel"]["backdrop"] = true
		E.db["sle"]["shadows"]["datatexts"]["panels"]["RightChatDataPanel"]["backdrop"] = false
		E.db["sle"]["shadows"]["datatexts"]["panels"]["RightChatDataPanel"]["size"] = 2
		--E.db["sle"]["shadows"]["minimap"]["backdrop"] = true
		E.db["sle"]["shadows"]["minimap"]["backdrop"] = false
		E.db["sle"]["shadows"]["minimap"]["size"] = 2
		--E.db["sle"]["shadows"]["unitframes"]["arena"]["health"] = true
		E.db["sle"]["shadows"]["unitframes"]["arena"]["health"] = false
		--E.db["sle"]["shadows"]["unitframes"]["arena"]["power"] = true
		E.db["sle"]["shadows"]["unitframes"]["arena"]["power"] = true
		--E.db["sle"]["shadows"]["unitframes"]["boss"]["health"] = true
		E.db["sle"]["shadows"]["unitframes"]["boss"]["health"] = false
		--E.db["sle"]["shadows"]["unitframes"]["boss"]["power"] = true
		E.db["sle"]["shadows"]["unitframes"]["boss"]["power"] = false
		--E.db["sle"]["shadows"]["unitframes"]["focus"]["health"] = true
		E.db["sle"]["shadows"]["unitframes"]["focus"]["health"] = false
		--E.db["sle"]["shadows"]["unitframes"]["focus"]["power"] = true
		E.db["sle"]["shadows"]["unitframes"]["focus"]["power"] = false
		--E.db["sle"]["shadows"]["unitframes"]["party"]["health"] = true
		E.db["sle"]["shadows"]["unitframes"]["party"]["health"] = false
		--E.db["sle"]["shadows"]["unitframes"]["party"]["power"] = true
		E.db["sle"]["shadows"]["unitframes"]["party"]["power"] = false
		--E.db["sle"]["shadows"]["unitframes"]["pet"]["health"] = true
		E.db["sle"]["shadows"]["unitframes"]["pet"]["health"] = false
		--E.db["sle"]["shadows"]["unitframes"]["pet"]["power"] = true
		E.db["sle"]["shadows"]["unitframes"]["pet"]["power"] = false
		--E.db["sle"]["shadows"]["unitframes"]["player"]["classbar"] = true
		E.db["sle"]["shadows"]["unitframes"]["player"]["classbar"] = false
		--E.db["sle"]["shadows"]["unitframes"]["player"]["health"] = true
		E.db["sle"]["shadows"]["unitframes"]["player"]["health"] = false
		--E.db["sle"]["shadows"]["unitframes"]["player"]["power"] = true
		E.db["sle"]["shadows"]["unitframes"]["player"]["power"] = false
		E.db["sle"]["shadows"]["unitframes"]["size"] = 2
		--E.db["sle"]["shadows"]["unitframes"]["target"]["health"] = true
		E.db["sle"]["shadows"]["unitframes"]["target"]["health"] = false
		--E.db["sle"]["shadows"]["unitframes"]["target"]["power"] = true
		E.db["sle"]["shadows"]["unitframes"]["target"]["power"] = false
		--E.db["sle"]["shadows"]["unitframes"]["targettarget"]["health"] = true
		E.db["sle"]["shadows"]["unitframes"]["targettarget"]["health"] = false
		--E.db["sle"]["shadows"]["unitframes"]["targettarget"]["power"] = true
		E.db["sle"]["shadows"]["unitframes"]["targettarget"]["power"] = false
		-- Skins
		E.db["sle"]["skins"]["merchant"]["list"]["nameFont"] = "Kimberley"
		E.db["sle"]["skins"]["merchant"]["list"]["nameSize"] = 12
		E.db["sle"]["skins"]["merchant"]["list"]["subFont"] = "Kimberley"
		E.db["sle"]["skins"]["merchant"]["list"]["subOutline"] = "THICKOUTLINE"
		E.db["sle"]["skins"]["merchant"]["list"]["subSize"] = 8
		E.db["sle"]["skins"]["objectiveTracker"]["classHeader"] = true
		E.db["sle"]["skins"]["objectiveTracker"]["colorHeader"]["b"] = 1
		E.db["sle"]["skins"]["objectiveTracker"]["colorHeader"]["g"] = 0
		E.db["sle"]["skins"]["objectiveTracker"]["colorHeader"]["r"] = 0.81960784313725
		E.db["sle"]["skins"]["objectiveTracker"]["underlineClass"] = true
		E.db["sle"]["skins"]["talkinghead"]["hide"] = true

		--Unitframes this was erroring in 915 due to internal sle change months back that i didnt realize
		E.db["sle"]["unitframes"]["roleIcons"]["icons"] = "Eltruism"
		--E.private["sle"]["unitframe"]["statusbarTextures"]["aura"] = true --old
		E.db["sle"]["unitframe"]["statusbarTextures"]["aurabar"]["enable"] = true
		E.db["sle"]["unitframe"]["statusbarTextures"]["aurabar"]["texture"] = "Eltreum-Blank"
		E.db["sle"]["unitframe"]["statusbarTextures"]["castbar"]["enable"] = true
		E.db["sle"]["unitframe"]["statusbarTextures"]["castbar"]["texture"] = "Eltreum-Blank"

		E.db["sle"]["unitframe"]["units"]["party"]["deathIndicator"]["custom"] = "Interface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\Unitframes\\dead5.tga"
		E.db["sle"]["unitframe"]["units"]["party"]["deathIndicator"]["enable"] = true
		E.db["sle"]["unitframe"]["units"]["party"]["deathIndicator"]["size"] = 25
		E.db["sle"]["unitframe"]["units"]["party"]["deathIndicator"]["texture"] = "CUSTOM"
		E.db["sle"]["unitframe"]["units"]["party"]["deathIndicator"]["yOffset"] = 10
		E.db["sle"]["unitframe"]["units"]["party"]["offlineIndicator"]["custom"] = "Interface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\Unitframes\\dc2.tga"
		E.db["sle"]["unitframe"]["units"]["party"]["offlineIndicator"]["enable"] = true
		E.db["sle"]["unitframe"]["units"]["party"]["offlineIndicator"]["size"] = 25
		E.db["sle"]["unitframe"]["units"]["party"]["offlineIndicator"]["texture"] = "CUSTOM"
		E.db["sle"]["unitframe"]["units"]["party"]["offlineIndicator"]["yOffset"] = 10

		E.db["sle"]["unitframe"]["units"]["raid"]["deathIndicator"]["custom"] = "Interface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\Unitframes\\dead5.tga"
		E.db["sle"]["unitframe"]["units"]["raid"]["deathIndicator"]["enable"] = true
		E.db["sle"]["unitframe"]["units"]["raid"]["deathIndicator"]["size"] = 15
		E.db["sle"]["unitframe"]["units"]["raid"]["deathIndicator"]["texture"] = "CUSTOM"
		E.db["sle"]["unitframe"]["units"]["raid"]["offlineIndicator"]["custom"] = "Interface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\Unitframes\\dc2.tga"
		E.db["sle"]["unitframe"]["units"]["raid"]["offlineIndicator"]["enable"] = true
		E.db["sle"]["unitframe"]["units"]["raid"]["offlineIndicator"]["size"] = 15
		E.db["sle"]["unitframe"]["units"]["raid"]["offlineIndicator"]["texture"] = "CUSTOM"

		E.db["sle"]["unitframe"]["units"]["raid40"]["deathIndicator"]["custom"] = "Interface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\Unitframes\\dead5.tga"
		E.db["sle"]["unitframe"]["units"]["raid40"]["deathIndicator"]["enable"] = true
		E.db["sle"]["unitframe"]["units"]["raid40"]["deathIndicator"]["size"] = 15
		E.db["sle"]["unitframe"]["units"]["raid40"]["deathIndicator"]["texture"] = "CUSTOM"
		E.db["sle"]["unitframe"]["units"]["raid40"]["offlineIndicator"]["custom"] = "Interface\\Addons\\ElvUI_EltreumUI\\Media\\Textures\\Unitframes\\dc2.tga"
		E.db["sle"]["unitframe"]["units"]["raid40"]["offlineIndicator"]["enable"] = true
		E.db["sle"]["unitframe"]["units"]["raid40"]["offlineIndicator"]["size"] = 15
		E.db["sle"]["unitframe"]["units"]["raid40"]["offlineIndicator"]["texture"] = "CUSTOM"

		ElvUI_EltreumUI:Print("Shadow and Light profile has been set")

		E.private.ElvUI_EltreumUI.isInstalled.sle = true
	else
		ElvUI_EltreumUI:Print("Shadow and Light is not loaded")
	end
end
