local E, L, V, P, G = unpack(ElvUI)
local _G  = _G
local IsAddOnLoaded = _G.IsAddOnLoaded
local table = _G.table

-- OmniCD profile setup
function ElvUI_EltreumUI:GetOmniCDProfile()
	if IsAddOnLoaded('OmniCD') then
		if OmniCDDB.profiles.Eltreum then
			table.insert(OmniCDDB.profileKeys, E.mynameRealm)
			OmniCDDB["profileKeys"][E.mynameRealm] = "Eltreum"
		else
			OmniCDDB["profiles"]["Eltreum"] = {}
			OmniCDDB["profiles"]["Eltreum"] = {
				["Party"] = {
					["noneZoneSetting"] = "party",
					["groupSize"] = {
						["party"] = 5,
					},
					["party"] = {
						["extraBars"] = {
							["raidBar0"] = {
								["scale"] = 0.66,
								["growLeft"] = true,
								["hideSpark"] = true,
								["statusBarWidth"] = 263,
								["barColors"] = {
									["activeColor"] = {
										["g"] = 1,
										["b"] = 1,
									},
									["rechargeColor"] = {
										["g"] = 1,
										["b"] = 1,
									},
									["useClassColor"] = {
										["recharge"] = false,
									},
									["inactiveColor"] = {
										["g"] = 0,
									},
								},
								["locked"] = true,
								["paddingY"] = 3,
								["manualPos"] = {
									["raidBar0"] = {
										["y"] = 241.3336863993027,
										["x"] = 139.99978637612,
									},
								},
								["bgColors"] = {
									["rechargeColor"] = {
										["g"] = 0,
										["r"] = 0,
									},
									["activeColor"] = {
										["a"] = 1,
									},
								},
								["useIconAlpha"] = true,
								["textColors"] = {
									["useClassColor"] = {
										["active"] = true,
									},
								},
								["showInterruptedSpell"] = false,
							},
							["raidBar2"] = {
								["spellType"] = {
									["raidDefensive"] = true,
									["externalDefensive"] = true,
								},
								["growLeft"] = true,
								["scale"] = 1.03,
								["progressBar"] = false,
								["manualPos"] = {
									["raidBar2"] = {
										["y"] = 312.2666525266232,
										["x"] = 336.9780246527716,
									},
								},
								["paddingX"] = 2,
								["layout"] = "horizontal",
								["locked"] = true,
							},
							["raidBar1"] = {
								["statusBarWidth"] = 152,
								["barColors"] = {
									["activeColor"] = {
										["g"] = 1,
										["b"] = 1,
									},
									["rechargeColor"] = {
										["g"] = 1,
										["b"] = 1,
									},
									["useClassColor"] = {
										["recharge"] = false,
									},
									["inactiveColor"] = {
										["g"] = 0,
									},
								},
								["locked"] = true,
								["paddingY"] = 3,
								["name"] = "CC",
								["growLeft"] = true,
								["hideSpark"] = true,
								["spellType"] = {
									["other"] = false,
									["racial"] = false,
									["custom2"] = false,
									["custom1"] = false,
									["pvptrinket"] = false,
									["dispel"] = false,
									["counterCC"] = false,
									["externalDefensive"] = false,
									["essence"] = false,
									["trinket"] = false,
									["defensive"] = false,
									["covenant"] = false,
									["consumable"] = false,
									["offensive"] = false,
									["raidDefensive"] = false,
									["raidMovement"] = false,
									["immunity"] = false,
								},
								["manualPos"] = {
									["raidBar1"] = {
										["y"] = 246.6663623764453,
										["x"] = 208.8004816736411,
									},
								},
								["scale"] = 0.66,
								["bgColors"] = {
									["rechargeColor"] = {
										["g"] = 0,
										["r"] = 0,
									},
									["activeColor"] = {
										["a"] = 1,
									},
								},
								["useIconAlpha"] = true,
								["sortBy"] = 9,
								["textColors"] = {
									["useClassColor"] = {
										["active"] = true,
									},
								},
							},
						},
						["spells"] = {
							["363916"] = false,
							["216331"] = false,
							["31661"] = true,
							["116849"] = false,
							["12975"] = true,
							["58984"] = true,
							["22812"] = false,
							["187827"] = false,
							["19577"] = true,
							["370665"] = true,
							["235219"] = false,
							["6940"] = true,
							["207684"] = true,
							["48020"] = false,
							["265221"] = true,
							["386071"] = true,
							["215652"] = false,
							["59752"] = false,
							["357170"] = false,
							["221562"] = true,
							["7744"] = false,
							["403876"] = true,
							["115203"] = false,
							["115078"] = true,
							["15286"] = false,
							["345231"] = false,
							["336135"] = false,
							["209258"] = false,
							["191427"] = false,
							["20594"] = true,
							["108968"] = false,
							["179057"] = true,
							["122783"] = false,
							["5211"] = true,
							["10060"] = true,
							["20549"] = true,
							["498"] = true,
							["1776"] = true,
							["53480"] = false,
							["47788"] = false,
							["231895"] = false,
							["122278"] = false,
							["363534"] = false,
							["210256"] = false,
							["102558"] = true,
							["47482"] = false,
							["265202"] = false,
							["198111"] = false,
							["236320"] = false,
							["116841"] = true,
							["20608"] = true,
							["31230"] = false,
							["107079"] = true,
							["204336"] = false,
							["377509"] = false,
							["31935"] = false,
							["357214"] = true,
							["79206"] = true,
							["211881"] = true,
							["368970"] = true,
							["388615"] = true,
							["312916"] = true,
							["360194"] = false,
							["108199"] = true,
							["47481"] = true,
							["202138"] = true,
							["202137"] = true,
							["205604"] = false,
							["122470"] = false,
							["213691"] = true,
							["217832"] = true,
							["207399"] = true,
							["1044"] = true,
							["32375"] = true,
							["106898"] = true,
							["198838"] = false,
							["132469"] = true,
							["31884"] = false,
							["66"] = true,
							["55342"] = true,
							["102359"] = true,
							["212295"] = false,
							["374251"] = true,
							["199452"] = false,
							["408"] = true,
							["86659"] = true,
							["162488"] = true,
							["336126"] = false,
							["113724"] = true,
							["119381"] = true,
							["129597"] = true,
							["109248"] = true,
							["342245"] = false,
							["88625"] = true,
							["192058"] = true,
							["392060"] = true,
							["114018"] = true,
							["5484"] = true,
							["204021"] = true,
							["47476"] = true,
							["197268"] = false,
							["383005"] = true,
							["99"] = true,
							["109304"] = false,
							["29166"] = true,
							["378441"] = false,
							["47536"] = false,
							["64843"] = false,
							["264735"] = true,
							["19236"] = false,
							["98008"] = false,
							["190319"] = false,
							["46968"] = true,
							["378464"] = false,
							["374348"] = false,
							["198589"] = false,
							["184662"] = true,
							["31850"] = true,
							["207167"] = true,
							["6789"] = false,
							["48792"] = false,
							["47585"] = false,
							["198158"] = true,
							["23920"] = false,
							["374968"] = true,
							["5277"] = false,
							["1856"] = false,
							["48707"] = false,
							["108280"] = false,
							["62618"] = false,
							["107570"] = true,
							["104773"] = false,
							["19801"] = true,
							["33206"] = false,
							["114052"] = false,
							["73325"] = true,
							["110959"] = true,
							["30283"] = true,
							["184364"] = false,
						},
						["icons"] = {
							["scale"] = 1.11,
						},
						["raidCDS"] = {
							["853"] = true,
							["207167"] = true,
							["31661"] = true,
							["211881"] = true,
							["116849"] = true,
							["179057"] = true,
							["115310"] = false,
							["115750"] = true,
							["8122"] = true,
							["6940"] = true,
							["372048"] = true,
							["46968"] = true,
							["408"] = true,
							["107570"] = true,
							["119381"] = true,
							["97462"] = false,
							["99"] = true,
							["1022"] = true,
							["199452"] = true,
							["30283"] = true,
							["192058"] = true,
							["392060"] = true,
							["109248"] = true,
						},
						["position"] = {
							["offsetX"] = 3,
							["locked"] = false,
							["paddingX"] = 2,
							["attach"] = "TOPLEFT",
							["maxNumIcons"] = 3,
							["preset"] = "TOPLEFT",
							["anchor"] = "TOPRIGHT",
							["anchorMore"] = "LEFT",
						},
						["manualPos"] = {
							[5] = {
								["y"] = 384.3555214597109,
								["x"] = 682.3111276328564,
							},
						},
					},
					["visibility"] = {
						["scenario"] = true,
						["arena"] = false,
						["none"] = true,
					},
					["scenarioZoneSetting"] = "party",
				},
				["General"] = {
					["fonts"] = {
						["statusBar"] = {
							["font"] = "Kimberley",
							["flag"] = "OUTLINE",
						},
						["icon"] = {
							["font"] = "Kimberley",
							["ofsX"] = 1,
						},
						["anchor"] = {
							["font"] = "Kimberley",
							["flag"] = "OUTLINE",
						},
					},
					["textures"] = {
						["statusBar"] = {
							["BG"] = "ElvUI Norm1",
							["bar"] = "Asphyxia",
						},
					},
				},
			}
			OmniCDDB["profileKeys"][E.mynameRealm] = "Eltreum"
		end

		ElvUI_EltreumUI:Print(L["OmniCD profile has been set."])
	else
		ElvUI_EltreumUI:Print(L["OmniCD is not loaded"])
	end
end
