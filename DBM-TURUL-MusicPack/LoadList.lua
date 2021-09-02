local inserted = false
local tinsert = table.insert

local music = {
	{
		text	= "Bride of Dawn",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Bride_of_Dawn.ogg"
	},
	{
		text	= "End Effect",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\End_Effect.ogg"
	},
	{
		text	= "Fall of the Dark Lady",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Fall_of_the_Dark_Lady.ogg"
	},
	{
		text	= "Guardian of the Mortals",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Guardian_of_the_Mortals.ogg"
	},
	{
		text	= "Hidden History",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Hidden_History.ogg"
	},
	{
		text	= "Horn of the Necrolord",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Hord_of_the_Necrolord.ogg"
	},
	{
		text	= "Inception of the Chain",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Inception_of_the_Chain.ogg"
	},
	{
		text	= "Infernum",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Infernum.ogg"
	},
	{
		text	= "Vision of the Gods",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Vision_of_the_Gods.ogg"
	},
	{
		text	= "Voice of the Eden",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Voice_of_the_Eden.ogg"
	},
	{
		text	= "Volcano",
		value	= "Interface\\AddOns\\DBM-TURUL-MusicPack\\Music\\Volcano.ogg"
	}
}

function DBMMTURULPack() -- Register Music
	if inserted then
		return
	end
	local dbmAddMusic = DBM.AddMusic
	for _, v in pairs(music) do
		if dbmAddMusic then
			dbmAddMusic(v.text, v.value)
		else
			tinsert(DBM.Music, v)
		end
	end
	inserted = true
end
