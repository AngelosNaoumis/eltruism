local E, L, V, P, G = unpack(ElvUI)
local _G = _G
local IsAddOnLoaded = _G.C_AddOns and _G.C_AddOns.IsAddOnLoaded or _G.IsAddOnLoaded
local table = _G.table

-- OmniCD profile setup
function ElvUI_EltreumUI:GetOmniCDProfile(profile)
	if IsAddOnLoaded('OmniCD') then
		if profile == "dps" then
			if OmniCDDB.profiles.EltreumDPS then
				table.insert(OmniCDDB.profileKeys, E.mynameRealm)
				OmniCDDB["profileKeys"][E.mynameRealm] = "EltreumDPS"
			else
				OmniCDDB["profiles"]["EltreumDPS"] = {}
				OmniCDDB["profiles"]["EltreumDPS"] = {
					["Party"] = {
						["noneZoneSetting"] = "party",
						["groupSize"] = {
							["party"] = 5,
						},
						["party"] = {
							["extraBars"] = {
								["raidBar1"] = {
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
										["raidBar1"] = {
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
									["textColors"] = {
										["useClassColor"] = {
											["active"] = true,
										},
									},
									["scale"] = 0.66,
									["showInterruptedSpell"] = false,
									["useIconAlpha"] = true,
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
									["layout"] = "horizontal",
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
									["textColors"] = {
										["useClassColor"] = {
											["active"] = true,
										},
									},
									["sortBy"] = 9,
									["useIconAlpha"] = true,
								},
							},
							["spells"] = {
								["363916"] = false,
								["216331"] = false,
								["31661"] = true,
								["47481"] = true,
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
								["336126"] = false,
								["215652"] = false,
								["59752"] = false,
								["357170"] = false,
								["221562"] = true,
								["7744"] = false,
								["403876"] = true,
								["115203"] = false,
								["115078"] = true,
								["15286"] = false,
								["217832"] = true,
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
								["79206"] = true,
								["211881"] = true,
								["190319"] = false,
								["184364"] = false,
								["162488"] = true,
								["48792"] = false,
								["132469"] = true,
								["19801"] = true,
								["205604"] = false,
								["122470"] = false,
								["213691"] = true,
								["207399"] = true,
								["104773"] = false,
								["1044"] = true,
								["32375"] = true,
								["106898"] = true,
								["107570"] = true,
								["31884"] = false,
								["66"] = true,
								["55342"] = true,
								["62618"] = false,
								["108280"] = false,
								["408"] = true,
								["86659"] = true,
								["119381"] = true,
								["129597"] = true,
								["342245"] = false,
								["88625"] = true,
								["197268"] = false,
								["374251"] = true,
								["204021"] = true,
								["47476"] = true,
								["357214"] = true,
								["48707"] = false,
								["383005"] = true,
								["6789"] = false,
								["99"] = true,
								["109304"] = false,
								["29166"] = true,
								["19236"] = false,
								["378441"] = false,
								["207167"] = true,
								["47536"] = false,
								["64843"] = false,
								["202137"] = true,
								["192058"] = true,
								["264735"] = true,
								["102359"] = true,
								["98008"] = false,
								["108199"] = true,
								["47585"] = false,
								["378464"] = false,
								["312916"] = true,
								["212295"] = false,
								["184662"] = true,
								["31850"] = true,
								["113724"] = true,
								["114052"] = false,
								["392060"] = true,
								["114018"] = true,
								["198158"] = true,
								["5484"] = true,
								["374968"] = true,
								["5277"] = false,
								["1856"] = false,
								["46968"] = true,
								["374348"] = false,
								["198589"] = false,
								["368970"] = true,
								["23920"] = false,
								["202138"] = true,
								["199452"] = false,
								["33206"] = false,
								["198838"] = false,
								["73325"] = true,
								["110959"] = true,
								["30283"] = true,
								["388615"] = true,
								["360194"] = false,
								["109248"] = true,
							},
							["icons"] = {
								["scale"] = 1.02,
							},
							["raidCDS"] = {
								["374227"] = false,
								["31935"] = false,
								["740"] = false,
								["351338"] = false,
								["196718"] = false,
								["119898"] = false,
								["51052"] = false,
								["187707"] = false,
								["115310"] = false,
								["57994"] = false,
								["98008"] = false,
								["78675"] = false,
								["15286"] = false,
								["108280"] = false,
								["212619"] = false,
								["96231"] = false,
								["363534"] = false,
								["116705"] = false,
								["183752"] = false,
								["62618"] = false,
								["64843"] = false,
								["1766"] = false,
								["15487"] = false,
								["6552"] = false,
								["106839"] = false,
								["386071"] = false,
								["31821"] = false,
								["265202"] = false,
								["2139"] = false,
								["47528"] = false,
								["147362"] = false,
								["97462"] = false,
							},
							["position"] = {
								["offsetX"] = 6,
								["anchor"] = "TOPRIGHT",
								["breakPoint2"] = "raidMovement",
								["paddingX"] = 2,
								["breakPoint"] = "cc",
								["layout"] = "doubleRow",
								["attach"] = "TOPLEFT",
								["uf"] = "ElvUI",
								["maxNumIcons"] = 3,
								["preset"] = "TOPLEFT",
								["locked"] = false,
								["anchorMore"] = "LEFT",
							},
							["priority"] = {
								["covenant"] = 20,
							},
							["general"] = {
								["showPlayer"] = true,
								["showRange"] = true,
							},
							["manualPos"] = {
								[5] = {
									["y"] = 384.3555214597109,
									["x"] = 682.3111276328564,
								},
							},
						},
						["visibility"] = {
							["arena"] = false,
						},
						["scenarioZoneSetting"] = "party",
					},
					["General"] = {
						["textures"] = {
							["statusBar"] = {
								["BG"] = "ElvUI Norm1",
								["bar"] = "Asphyxia-Norm",
							},
						},
						["fonts"] = {
							["statusBar"] = {
								["font"] = E.db.general.font,
								["flag"] = ElvUI_EltreumUI:FontFlag(E.db.general.fontStyle),
							},
							["icon"] = {
								["font"] = E.db.general.font,
								["ofsX"] = 1,
							},
							["anchor"] = {
								["font"] = E.db.general.font,
								["flag"] = ElvUI_EltreumUI:FontFlag(E.db.general.fontStyle),
							},
						},
					},
				}
				OmniCDDB["profileKeys"][E.mynameRealm] = "EltreumDPS"
			end
		elseif profile == "healer" then
			if OmniCDDB.profiles.EltreumHealer then
				table.insert(OmniCDDB.profileKeys, E.mynameRealm)
				OmniCDDB["profileKeys"][E.mynameRealm] = "EltreumHealer"
			else
				OmniCDDB["profiles"]["EltreumHealer"] = {}
				OmniCDDB["profiles"]["EltreumHealer"] = {
					["Party"] = {
						["noneZoneSetting"] = "party",
						["groupSize"] = {
							["party"] = 5,
						},
						["party"] = {
							["extraBars"] = {
								["raidBar1"] = {
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
										["raidBar1"] = {
											["y"] = 405.6004004463648,
											["x"] = 133.5997753704532,
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
									["textColors"] = {
										["useClassColor"] = {
											["active"] = true,
										},
									},
									["scale"] = 0.66,
									["showInterruptedSpell"] = false,
									["useIconAlpha"] = true,
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
									["layout"] = "horizontal",
									["name"] = "CC",
									["growLeft"] = true,
									["scale"] = 0.66,
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
									["hideSpark"] = true,
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
							["general"] = {
								["showPlayer"] = true,
								["showRange"] = true,
							},
							["spells"] = {
								["216331"] = false,
								["31661"] = true,
								["198589"] = false,
								["116849"] = false,
								["12975"] = true,
								["58984"] = true,
								["22812"] = false,
								["187827"] = false,
								["212295"] = false,
								["370665"] = true,
								["235219"] = false,
								["6940"] = true,
								["207684"] = true,
								["48020"] = false,
								["265221"] = true,
								["386071"] = true,
								["336126"] = false,
								["215652"] = false,
								["59752"] = false,
								["357170"] = false,
								["221562"] = true,
								["7744"] = false,
								["403876"] = true,
								["115203"] = false,
								["115078"] = true,
								["15286"] = false,
								["217832"] = true,
								["345231"] = false,
								["336135"] = false,
								["191427"] = false,
								["20594"] = true,
								["108968"] = false,
								["179057"] = true,
								["122783"] = false,
								["5211"] = true,
								["10060"] = true,
								["20549"] = true,
								["498"] = true,
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
								["107079"] = true,
								["204336"] = false,
								["377509"] = false,
								["31935"] = false,
								["1161"] = true,
								["64901"] = true,
								["370960"] = true,
								["79206"] = true,
								["211881"] = true,
								["102359"] = true,
								["62618"] = false,
								["374251"] = true,
								["113724"] = true,
								["132469"] = true,
								["104773"] = false,
								["205604"] = false,
								["122470"] = false,
								["213691"] = true,
								["207399"] = true,
								["48707"] = false,
								["1044"] = true,
								["32375"] = true,
								["106898"] = true,
								["360194"] = false,
								["31884"] = false,
								["66"] = true,
								["55342"] = true,
								["46968"] = true,
								["108280"] = false,
								["86659"] = true,
								["119381"] = true,
								["129597"] = true,
								["342245"] = false,
								["88625"] = true,
								["197268"] = false,
								["392060"] = true,
								["204021"] = true,
								["47476"] = true,
								["357214"] = true,
								["107570"] = true,
								["383005"] = true,
								["6789"] = false,
								["99"] = true,
								["29166"] = true,
								["19236"] = false,
								["378441"] = false,
								["48792"] = false,
								["47536"] = false,
								["64843"] = false,
								["198838"] = false,
								["114018"] = true,
								["264735"] = true,
								["388615"] = true,
								["98008"] = false,
								["114052"] = false,
								["5484"] = true,
								["378464"] = false,
								["312916"] = true,
								["190319"] = false,
								["184662"] = true,
								["31850"] = true,
								["47585"] = false,
								["23920"] = false,
								["192058"] = true,
								["47481"] = true,
								["198158"] = true,
								["199452"] = false,
								["374968"] = true,
								["5277"] = false,
								["1856"] = false,
								["184364"] = false,
								["19577"] = true,
								["19801"] = true,
								["207167"] = true,
								["108199"] = true,
								["202137"] = true,
								["33206"] = false,
								["162488"] = true,
								["73325"] = true,
								["110959"] = true,
								["30283"] = true,
								["368970"] = true,
								["202138"] = true,
								["109248"] = true,
							},
							["raidCDS"] = {
								["212619"] = false,
								["374227"] = false,
								["116705"] = false,
								["363534"] = false,
								["183752"] = false,
								["47528"] = false,
								["31935"] = false,
								["2139"] = false,
								["106839"] = false,
								["57994"] = false,
								["96231"] = false,
								["119898"] = false,
								["351338"] = false,
								["265202"] = false,
								["196718"] = false,
								["6552"] = false,
								["62618"] = false,
								["108280"] = false,
								["15487"] = false,
								["1766"] = false,
								["51052"] = false,
								["64843"] = false,
								["147362"] = false,
								["115310"] = false,
								["97462"] = false,
								["187707"] = false,
								["98008"] = false,
								["31821"] = false,
								["386071"] = false,
								["78675"] = false,
								["740"] = false,
								["15286"] = false,
							},
							["position"] = {
								["offsetX"] = 0,
								["locked"] = false,
								["attachMore"] = "BOTTOMLEFT",
								["paddingX"] = 2,
								["breakPoint"] = "cc",
								["preset"] = "manual",
								["breakPoint2"] = "raidMovement",
								["attach"] = "BOTTOMLEFT",
								["uf"] = "ElvUI",
								["maxNumIcons"] = 3,
								["layout"] = "doubleRow",
								["offsetY"] = 6,
								["anchorMore"] = "TOPLEFT",
							},
							["priority"] = {
								["covenant"] = 20,
							},
							["manualPos"] = {
								[5] = {
									["y"] = 384.3555214597109,
									["x"] = 682.3111276328564,
								},
							},
						},
						["visibility"] = {
							["arena"] = false,
						},
						["scenarioZoneSetting"] = "party",
					},
					["General"] = {
						["fonts"] = {
							["statusBar"] = {
								["font"] = E.db.general.font,
								["flag"] = ElvUI_EltreumUI:FontFlag(E.db.general.fontStyle),
							},
							["icon"] = {
								["font"] = E.db.general.font,
								["ofsX"] = 1,
							},
							["anchor"] = {
								["font"] = E.db.general.font,
								["flag"] = ElvUI_EltreumUI:FontFlag(E.db.general.fontStyle),
							},
						},
						["textures"] = {
							["statusBar"] = {
								["BG"] = "ElvUI Norm1",
								["bar"] = "Asphyxia-Norm",
							},
						},
					},
				}
				OmniCDDB["profileKeys"][E.mynameRealm] = "EltreumHealer"
			end
		end

		ElvUI_EltreumUI:Print(L["OmniCD profile has been set."])
	else
		ElvUI_EltreumUI:Print(L["OmniCD is not loaded"])
	end
end
