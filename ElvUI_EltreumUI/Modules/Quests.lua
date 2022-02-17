local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

--Collapse Quests during boss fights
function ElvUI_EltreumUI:QuestEncounter()
	if E.db.ElvUI_EltreumUI.questsettings.enable then
		local _, instanceType = IsInInstance()
		if instanceType == "raid" or instanceType == "party" or instanceType == "scenario" then --and event == "PLAYER_REGEN_DISABLED"
			if E.Retail then
				ObjectiveTracker_Collapse()
			elseif E.TBC or E.Classic then
				QuestWatchFrame:Hide()
				if IsAddOnLoaded("Questie") then
					_G["Questie_BaseFrame"]:Hide()
				end
			end
		end
	end
end
--expand after encounter is over
function ElvUI_EltreumUI:QuestEncounterEnd()
	if E.db.ElvUI_EltreumUI.questsettings.enable then
		local _, instanceType = IsInInstance()
		if instanceType == "raid" or instanceType == "party" or instanceType == "scenario" then --and event == "PLAYER_REGEN_DISABLED"
			if E.Retail then
				ObjectiveTracker_Expand()
			elseif E.TBC or E.Classic then
				QuestWatchFrame:Show()
				if IsAddOnLoaded("Questie") then
					_G["Questie_BaseFrame"]:Show()
				end
			end
		end
	end
end
--hide quests in arena/bg matches
function ElvUI_EltreumUI:ArenaQuest()
	if E.db.ElvUI_EltreumUI.questsettings.arena then
		local _, instanceType = IsInInstance()
		if instanceType == "arena" or instanceType == "pvp" then
			if E.Retail then
				ObjectiveTrackerFrame:Hide()
			elseif E.TBC or E.Classic then
				QuestWatchFrame:Hide()
				if IsAddOnLoaded("Questie") then
					_G["Questie_BaseFrame"]:Hide()
				end
			end
		elseif instanceType == "none" then
			if E.Retail then
				ObjectiveTrackerFrame:Show()
			elseif E.TBC or E.Classic then
				QuestWatchFrame:Show()
				if IsAddOnLoaded("Questie") then
					_G["Questie_BaseFrame"]:Show()
				end
			end
		end
	end
end
--Collapse/Hide Quests during combat with anything
function ElvUI_EltreumUI:QuestCombat()
	if E.db.ElvUI_EltreumUI.questsettings.combatenable then
		if E.Retail then
			ObjectiveTracker_Collapse()
		elseif E.TBC or E.Classic then
			QuestWatchFrame:Hide()
			if IsAddOnLoaded("Questie") then
				_G["Questie_BaseFrame"]:Hide()
			end
		end
	end
end
--expand after combat is over
function ElvUI_EltreumUI:QuestCombatEnd()
	if E.db.ElvUI_EltreumUI.questsettings.combatenable then
		if E.Retail then
			ObjectiveTracker_Expand()
		elseif E.TBC or E.Classic then
			QuestWatchFrame:Show()
			if IsAddOnLoaded("Questie") then
				_G["Questie_BaseFrame"]:Show()
			end
		end
	end
end

--based on Rogue Door Opener by Burzolog
local RogueOrderHallAutoOpen = CreateFrame("Frame", "EltruismRogueOrderHallAutoOpen")
RogueOrderHallAutoOpen:Hide()
RogueOrderHallAutoOpen:RegisterEvent("GOSSIP_SHOW")
function ElvUI_EltreumUI:RogueAutoOpen()
	if not IsAddOnLoaded("ElvUI_EltreumUI") then
		return
	elseif not E.private.ElvUI_EltreumUI then
		return
	elseif E.db.ElvUI_EltreumUI.questsettings == nil then
		E.db.ElvUI_EltreumUI.questsettings = {
			enable = true,
			rogueopen = true,
		}
	end
	if E.db.ElvUI_EltreumUI.questsettings.rogueopen then
		local guid = UnitGUID("npc")
		--ElvUI_EltreumUI:Print('got guid from npc')
		if not guid then
			return nil
		end
		local NPC_ID = tonumber(string.match(guid, "Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)"))

		local function handle_NPC_Interaction()
			if C_GossipInfo.GetNumOptions() ~= 2 then
				--ElvUI_EltreumUI:Print('not the right amount of gossip')
				return
			end
			local gossipInfoTable = C_GossipInfo.GetOptions()
			if gossipInfoTable[1].type ~= "gossip" then
				--ElvUI_EltreumUI:Print('not a gossip at first')
				return
			end
			if NPC_ID == 97004 or NPC_ID == 96782 or NPC_ID == 93188 then
				--ElvUI_EltreumUI:Print('its the right npc')
				if IsShiftKeyDown() or IsControlKeyDown() or IsAltKeyDown() then
					--ElvUI_EltreumUI:Print('you hold a modifier key')
					return
				else
					C_GossipInfo.SelectOption(1)
				end
			end
		end
		RogueOrderHallAutoOpen:SetScript("OnEvent", handle_NPC_Interaction)
	end
end

--yet another quest auto accept thing
local EltruismAutoComplete = CreateFrame("FRAME", "EltruismAutoCompleteFrame")
function ElvUI_EltreumUI:AutoAcceptQuests()
	if E.db.ElvUI_EltreumUI.questsettings.autoaccept then
		--print("quest automation is enabled")
		EltruismAutoComplete:RegisterEvent("QUEST_GREETING")
		EltruismAutoComplete:RegisterEvent("GOSSIP_SHOW")
		EltruismAutoComplete:RegisterEvent("QUEST_DETAIL")
		EltruismAutoComplete:RegisterEvent("QUEST_COMPLETE")
		EltruismAutoComplete:RegisterEvent("QUEST_ACCEPT_CONFIRM")
		EltruismAutoComplete:RegisterEvent("QUEST_PROGRESS")
		EltruismAutoComplete:SetScript("OnEvent", function(_, event)
			--print(event)
			local normal = (IsShiftKeyDown() or IsControlKeyDown() or IsAltKeyDown())
			if E.db.ElvUI_EltreumUI.questsettings.autoacceptinvert then
				--print("inverted the mod keys")
				normal = not (IsShiftKeyDown() or IsControlKeyDown() or IsAltKeyDown())
			end
			if normal then
				--print("using normal keys")
				return
			else
				--print("started quest automation")
				if event == 'QUEST_DETAIL' then
					--print("QUEST_DETAIL")
					if E.Retail then
						if QuestGetAutoAccept() then
							--print("its an annoying auto accept quest, panel has been closed")
							CloseQuest()
						else
							if E.Retail then
								--print("not an auto accept quest")
								if not E.db.ElvUI_EltreumUI.questsettings.acceptdaily then
									if QuestIsDaily() then
										--print("its a daily quest")
										return
									elseif QuestIsWeekly() then
										--print("its a weekly quest")
										return
									else
										AcceptQuest()
										--print("quest accepted")
									end
								else
									AcceptQuest()
									--print("quest accepted")
								end
							elseif E.TBC or E.Classic then
								AcceptQuest()
							end
						end
					elseif E.TBC or E.Classic then
						AcceptQuest()
						--print("quest accepted")
						if (GetNumQuestChoices() <= 0) then
							--print("no quest choices")
							return
						end
					end
				end
				if event == 'QUEST_ACCEPT_CONFIRM' then
					--print("QUEST_ACCEPT_CONFIRM tried to accept and hide popup")
					ConfirmAcceptQuest()
					StaticPopup_Hide("QUEST_ACCEPT")
				end
				if event == 'GOSSIP_SHOW' then
					--print("GOSSIP_SHOW")
					local guid = UnitGUID("npc")
					local NPC_ID = tonumber(string.match(guid, "Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)"))
					local ignoredNPCS = {
						[164079] = true,
						[174871] = true,
						[164173] = true,
						[111243] = true,
						[142063] = true,
						[141584] = true,
						[88570] = true,
						[87391] = true,
						[18166] = true,
						[142700] = true,
						[143005] = true,
						[142685] = true,
						[142975] = true,
						[143007] = true,
						[142992] = true,
						[142997] = true,
						[142998] = true,
						[142983] = true,
						[142995] = true,
						[142993] = true,
						[142981] = true,
						[143004] = true,
						[142973] = true,
						[142970] = true,
						[142994] = true,
						[142969] = true,
						[142157] = true,
						[143008] = true,
						[142158] = true,
						[142159] = true,
						[142977] = true,
					}
					if ignoredNPCS[NPC_ID] then
						--print("npc is in the ignored list")
						return
					else
						--https://wowpedia.fandom.com/wiki/Category:API_namespaces/C_GossipInfo
						if E.Retail then
							for i, k in next, C_GossipInfo.GetAvailableQuests() do  --quests to grab
								--local title, questLevel, isTrivial, frequency, repeatable, isComplete, isLegendary, isIgnored, questID = C_GossipInfo.GetAvailableQuests(i)
								--print("iterate and select quest to get")
								C_GossipInfo.SelectAvailableQuest(i)
							end
							for i, k in next, C_GossipInfo.GetActiveQuests() do --quests already grabbed
								local questdump = C_GossipInfo.GetActiveQuests()
								--local _, _, _, _, isComplete = questdump[i]
								if questdump[i].isComplete == true then
									--print("iterate and select already active quest")
									C_GossipInfo.SelectActiveQuest(i)
								elseif questdump[i].isComplete ~= true then
									--print("selecting gossip instead")
									local gossipInfoTable = C_GossipInfo.GetOptions()
									for i = 1, C_GossipInfo.GetNumOptions() do
										if gossipInfoTable[i].type == "gossip" or gossipInfoTable[i].type == "chatbubble" then --chatbubble is for sanctum stuff
											if NPC_ID == 153897 then
												return
											else
												C_GossipInfo.SelectOption(i)
											end
										end
									end
								end
							end

							local active = C_GossipInfo.GetActiveQuests()
							local available = C_GossipInfo.GetAvailableQuests()
							if active.title == nil or available.title == nil then
								--print("no available or active quest, looking for gossip instead")
								local gossipInfoTable = C_GossipInfo.GetOptions()
								for i = 1, C_GossipInfo.GetNumOptions() do
									if gossipInfoTable[i].type == "gossip" or gossipInfoTable[i].type == "chatbubble" then --chatbubble is for sanctum stuff
										if NPC_ID == 153897 then
											return
										else
											--print("gossip found, selecting it")
											C_GossipInfo.SelectOption(i)
										end
									end
								end
							end
						elseif E.TBC or E.Classic then
							if (GetNumGossipAvailableQuests() > 0) then
								--print("number of available quests > 0")
								local questlist = {GetGossipAvailableQuests()}
								local i = 1
								while(questlist[i]) do
									--print("tried to select quests with while "..math.random(1,99))
									SelectGossipAvailableQuest(i)
									i = i + 1
								end
							end
							if (GetNumGossipActiveQuests() > 0) then
								--print("number of active quests > 0")
								for i = 1, GetNumGossipActiveQuests() do
									--print("tried to select and accept quests in a loop"..math.random(1,99))
									SelectGossipActiveQuest(i)
									if E.Retail then
										if not E.db.ElvUI_EltreumUI.questsettings.acceptdaily then
											if QuestIsDaily() then
												--print("its a daily quest")
												return
											elseif QuestIsWeekly() then
												--print("its a weekly quest")
												return
											else
												AcceptQuest()
											end
										else
											AcceptQuest()
										end
										if (GetNumQuestChoices() <= 0) then
											--print("no quest choices")
											return
										end
									elseif E.TBC or E.Classic then
										AcceptQuest()
										if (GetNumQuestChoices() <= 0) then
											return
										end
									end

									i = i + 1
								end
							end
						end
					end

				end
				if event == 'QUEST_GREETING' then
					--print("QUEST_GREETING")

					--if accepting quests
					for i = 1, GetNumAvailableQuests() do
						--print("numquests accept loop")
						SelectAvailableQuest(i)
					end

					--if completing quests
					for i = 1, GetNumActiveQuests() do
					--print("numquests complete loop")
						local _, completed = GetActiveTitle(i)
						if E.Retail then
							if completed and not C_QuestLog.IsWorldQuest(GetActiveQuestID(i)) then
								--print("tried to complete "..completed.." and it's not a world quest")
								SelectActiveQuest(i)
							end
						elseif E.TBC or E.Classic then
							if completed then
								--print("tried to complete "..completed)
								SelectActiveQuest(i)
							end
						end
					end
				end
				if event == 'QUEST_PROGRESS' then
					--print("QUEST_PROGRESS")
					if GetQuestMoneyToGet() > 0 then
						--print("quest requires gold")
						return
					else
						--print("tried to complete quest")
						if E.Retail then
							for i, k in next, C_GossipInfo.GetActiveQuests() do --quests already grabbed
								local questdump = C_GossipInfo.GetActiveQuests()
								--local _, _, _, _, isComplete = questdump[i]
								if questdump[i].isComplete ~= true then
									--print("quest not completed")
									return
								elseif questdump[i].isComplete == true then
									--print("quest completed, turning in")
									CompleteQuest()
								end
							end
						elseif E.TBC or E.Classic then
							CompleteQuest()
						end
					end
				end
				if event == 'QUEST_COMPLETE' then
				--print("QUEST_COMPLETE")
					if GetQuestMoneyToGet() > 0 then
						--print("quest requires gold")
						return
					else
						if E.Retail then
							if GetNumQuestChoices() <= 1 then
								--print("tried to select reward and complete")
								GetQuestReward(GetNumQuestChoices())
							end
						elseif E.TBC or E.Classic then
							if GetNumQuestChoices() == 1 then
								GetQuestReward(1)
								--print("tried to select reward and complete")
								QuestFrameCompleteButton:Click()
							end
							if GetNumQuestChoices() == 0 then
								--print("tried to complete")
								QuestFrameCompleteButton:Click()
								QuestFrameCompleteQuestButton:Click()
							end
						end
					end
				end
			end
		end)
	end
end

