local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

local unpack = unpack

-- AddonSkins profile setup
function ElvUI_EltreumUI:GetASProfile()
	local AS = unpack(AddOnSkins)
	AS.data:SetProfile("Eltreum Dual")
	AS.db['EmbedBackdrop'] = false
	AS.db['EmbedBackdropTransparent'] = false
	AS.db['EmbedRightChat'] = true
	AS.db['EmbedSystem'] = false
	AS.db["EmbedSystemDual"] = true
	AS.db["EmbedLeftWidth"] = 206
	AS.db['EmbedSystemMessage'] = false
	AS.db["EmbedOoC"] = true
	AS.db["EmbedOoCDelay"] = 1
	AS.db["EmbedIsHidden"] = false
	AS.db["EmbedFrameLevel"] = 2
	AS.db["HighlightColor"] = {
		0.7725490196078432, -- [1]
		0.4235294117647059, -- [2]
		0.9411764705882353, -- [3]
		1, -- [4]
	}
	AS.db["StatusBarColor"] = {
		0.4, -- [1]
		0.4, -- [2]
		0.4, -- [3]
		1, -- [4]
	}
	AS.db["SelectedColor"] = {
		1, -- [1]
		1, -- [2]
		1, -- [3]
		1, -- [4]
	}
	AS.db["DBMSkinHalf"] = true
	AS.db["DBMFontFlag"] = "THICKOUTLINE"
	AS.db["DBMFont"] = "Kimberley"
	AS.db["DBMRadarTrans"] = true
	AS.db["HideChatFrame"] = "ChatFrame3"
	AS.db["TransparentEmbed"] = true
	AS.db["EmbedSystemDual"] = true
end
