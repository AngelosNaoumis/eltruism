local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local UF = E:GetModule('UnitFrames')
local _G = _G
local hooksecurefunc = _G.hooksecurefunc
local UnitExists = _G.UnitExists
local UnitClass = _G.UnitClass
local UnitReaction = _G.UnitReaction
local UnitIsPlayer = _G.UnitIsPlayer
local databarXP
local castbar
local targetcastbar
local _, playerclass
local targetclass
local reactiontarget

function ElvUI_EltreumUI:CheckmMediaTagInterrupt()
	if IsAddOnLoaded("ElvUI_mMediaTag") then
		if E.db.mMediaTag.mCastbar.enable then
			return _G.mMediaTag_interruptinTime or _G.mMediaTag_interruptOnCD
		end
	else
		return false
	end
end

--Databar gradient
function ElvUI_EltreumUI:GradientDatabar()
	databarXP = _G["ElvUI_ExperienceBar"]
	if databarXP and E.db.ElvUI_EltreumUI.unitframes.gradientmode.gradientXP then
		databarXP:GetStatusBarTexture():SetGradientAlpha("HORIZONTAL", E.db.databars.colors.experience.r, E.db.databars.colors.experience.g, E.db.databars.colors.experience.b, E.db.databars.colors.experience.a, 0.8, 0.4, 1, E.db.databars.colors.experience.a)
	end
end
local DB = E:GetModule('DataBars')
hooksecurefunc(DB, 'ExperienceBar_Update', ElvUI_EltreumUI.GradientDatabar)

--elvui castbar texture/gradient
function ElvUI_EltreumUI:CastBarTextureGradient()
	castbar = _G["ElvUF_Player_CastBar"]
	targetcastbar = _G["ElvUF_Target_CastBar"]

	--spark
	if E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.enable and E.private.unitframe.enable then
		castbar.Spark_:SetTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.texture))
		if E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.texture == 'Eltreum-Fade' then --flip otherwise it will look wrong
			castbar.Spark_:SetTexCoord(1, 0, 0, 1)
		end
		castbar.Spark_:SetVertexColor(E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.r, E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.g, E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.b, 1)
		castbar.Spark_:SetWidth(E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.width)
		--castbar.bg:SetAlpha(E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha)
		--castbar.Spark_:SetAlpha(0.8) dunno since it can look bad with color mixing, infact textures themselves can look bad

		if UnitExists("target") then
			targetcastbar.Spark_:SetTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.texture))
			targetcastbar.Spark_:SetVertexColor(E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.r, E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.g, E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.b, 1)
			targetcastbar.Spark_:SetWidth(E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.width)
			--targetcastbar.bg:SetAlpha(E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha)
		end
	end

	--gradient/texture
	if E.db.ElvUI_EltreumUI.unitframes.UFmodifications then
		if E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.enable and (not E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable) then
			castbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.castbartexture))
			if UnitExists("target") then
				targetcastbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.castbartexture))
			end
		end

		--player
		if UnitExists("player") then
			_, playerclass = UnitClass("player")
			if E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.enable and (not E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable) then
				castbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.castbartexture))
			end
			if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable and (not E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.enable) then
				if castbar.notInterruptible then --cant interrupt
					if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableplayercastbarnoninterruptible then
						castbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.gradientmode.texture))
						if E.db.unitframe.units.player.castbar.reverse == true then
							if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2noninterruptiblecustom)
							else
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2noninterruptible)
							end
						elseif E.db.unitframe.units.player.castbar.reverse == false then
							if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1noninterruptiblecustom)
							else
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1noninterruptible)
							end
						end
					end
				elseif (not castbar.notInterruptible) then --can interrupt
					if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableplayercastbar then
						castbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.gradientmode.texture))
						if E.db.unitframe.units.player.castbar.reverse == true then
							if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and not E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolorplayercastbar then
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1)
							elseif E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolorplayercastbar then
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom(E.myclass, true))
							else
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors(E.myclass, true))
							end
						elseif E.db.unitframe.units.player.castbar.reverse == false then
							if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and not E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolorplayercastbar then
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2)
							elseif E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolorplayercastbar then
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom(E.myclass))
							else
								castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors(E.myclass))
							end
						end
					end
				end
			end
		end

		--target
		if UnitExists("target") then
			_, targetclass = UnitClass("target")
			reactiontarget = UnitReaction("target", "player")
			if E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.enable and (not E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable) then
				targetcastbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.castbartexture))
			end
			if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable and (not E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.enable) then
				if (targetcastbar.notInterruptible) then --cant interrupt
					if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enabletargetcastbarnoninterruptible then
						targetcastbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.gradientmode.texture))
						if E.db.unitframe.units.target.castbar.reverse == true then
							if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
								targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2noninterruptiblecustom)
							else
								targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2noninterruptible)
							end
						elseif E.db.unitframe.units.target.castbar.reverse == false then
							if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
								targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1noninterruptiblecustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1noninterruptiblecustom)
							else
								targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1noninterruptible, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1noninterruptible)
							end
						end
					end
				elseif (not targetcastbar.notInterruptible) and (not ElvUI_EltreumUI:CheckmMediaTagInterrupt()) then --can interrupt
					if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enabletargetcastbar then
						targetcastbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.gradientmode.texture))
						if E.db.unitframe.units.target.castbar.reverse == true then
							if UnitIsPlayer("target") then
								if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and not E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar then
									targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1custom)
								elseif E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar then
									targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom(targetclass, true))
								else
									targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors(targetclass, true))
								end
							else
								if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and not E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar then
									targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1custom)
								elseif E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar then
									if reactiontarget >= 5 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCFRIENDLY",true))
									elseif reactiontarget == 4 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCNEUTRAL",true))
									elseif reactiontarget == 3 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCUNFRIENDLY",true))
									elseif reactiontarget <= 2 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCHOSTILE",true))
									end
								else
									if reactiontarget >= 5 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCFRIENDLY",true))
									elseif reactiontarget == 4 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCNEUTRAL",true))
									elseif reactiontarget == 3 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCUNFRIENDLY",true))
									elseif reactiontarget <= 2 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCHOSTILE",true))
									end
								end
							end
						elseif E.db.unitframe.units.target.castbar.reverse == false then
							if UnitIsPlayer("target") then
								if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and not E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar then
									targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2custom)
								elseif E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar then
									targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom(targetclass))
								else
									targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors(targetclass))
								end
							else
								if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and not E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar then
									targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2custom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2custom)
								elseif E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor and E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar then
									if reactiontarget >= 5 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCFRIENDLY"))
									elseif reactiontarget == 4 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCNEUTRAL"))
									elseif reactiontarget == 3 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCUNFRIENDLY"))
									elseif reactiontarget <= 2 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCHOSTILE"))
									end
								else
									if reactiontarget >= 5 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCFRIENDLY"))
									elseif reactiontarget == 4 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCNEUTRAL"))
									elseif reactiontarget == 3 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCUNFRIENDLY"))
									elseif reactiontarget <= 2 then
										targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCHOSTILE"))
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
hooksecurefunc(UF, 'Construct_Castbar', ElvUI_EltreumUI.CastBarTextureGradient)
hooksecurefunc(UF, 'PostCastStart', ElvUI_EltreumUI.CastBarTextureGradient)

--color when interrupted
function ElvUI_EltreumUI:CastBarTextureGradientFail(unit)
	if not unit then return end

	castbar = _G["ElvUF_Player_CastBar"]
	targetcastbar = _G["ElvUF_Target_CastBar"]

	if E.db.ElvUI_EltreumUI.unitframes.UFmodifications then
		if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable and (not E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.enable) then
			--player
			if E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableplayercastbarinterrupted and (unit == "player") then
				castbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.gradientmode.texture))
				if E.db.unitframe.units.player.castbar.reverse == true then
					if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
						castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1interrupted)
					else
						castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1interrupted)
					end
				else
					if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
						castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2interrupted)
					else
						castbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarR2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarG2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.playercastbarB2interrupted)
					end
				end
			end
			--target
			if UnitExists("target") and E.db.ElvUI_EltreumUI.unitframes.gradientmode.enabletargetcastbarinterrupted and targetcastbar ~= nil and (unit == "target") then
				targetcastbar:SetStatusBarTexture(E.LSM:Fetch("statusbar", E.db.ElvUI_EltreumUI.unitframes.gradientmode.texture))
				if E.db.unitframe.units.target.castbar.reverse == true then
					if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
						targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1interrupted)
					else
						targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1interrupted)
					end
				else
					if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
						targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2interruptedcustom, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2interrupted)
					else
						targetcastbar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB1interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarR2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarG2interrupted, E.db.ElvUI_EltreumUI.unitframes.gradientmode.targetcastbarB2interrupted)
					end
				end
			end
		end
	end
end
hooksecurefunc(UF, 'PostCastFail', ElvUI_EltreumUI.CastBarTextureGradientFail)
