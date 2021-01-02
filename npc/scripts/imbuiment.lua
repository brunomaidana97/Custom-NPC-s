 local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = {
	{ text = '' },
}

npcHandler:addModule(VoiceModule:new(voices))

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
	
	if msgcontains(msg, "skill increase") then
		npcHandler:say("Do you want to buy for skill increase {club}, {axe}, {sword}, {distance}, {magic} or {shielding}? ", cid)
		npcHandler.topic[cid] = 23
	end
	
	if msgcontains(msg, "elemental protection") then
		npcHandler:say("Do you want to buy for elemental {energy protection}, {holy protection}, {fire protection}, {death protection}, {ice protection} or {earth protection}? ", cid)
		npcHandler.topic[cid] = 24
	end
	
	if msgcontains(msg, "elemental damage") then
		npcHandler:say("Do you want to buy for elemental {energy damage}, {fire damage}, {death damage}, {ice damage} or {earth damage}? ", cid)
		npcHandler.topic[cid] = 25
	end
	
	if msgcontains(msg, "Additional Attributes") then
		npcHandler:say("Do you want to buy for additional attributes {critical damage}, {life leech}, {mana leech}, {speed increase} or {capacity increase}? ", cid)
		npcHandler.topic[cid] = 26
	end
	
	if msgcontains(msg, "critical damage") then
		npcHandler:say("Do you want to buy items for powerfull critical imbuiment?", cid)
		npcHandler.topic[cid] = 1
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 1 then
		if player:getMoney() + player:getBankBalance() >= 1000000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(1000000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(12400, 20) --Protective Charms.
			bag:addItem(11228, 25) --Sabretooth
			bag:addItem(25384, 5) --Vexclaw Talons.
		else
			npcHandler:say("You need 1kk to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
	
	if msgcontains(msg, "life leech") then
		npcHandler:say("Do you want to buy items for powerfull life leech imbuiment?", cid)
		npcHandler.topic[cid] = 2
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 2 then
		if player:getMoney() + player:getBankBalance() >= 1000000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(1000000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10602, 25) --Vampire Teeth
			bag:addItem(10550, 15) --Bloody Pincers
			bag:addItem(10580, 5) --Piece of Dead Brain
		else
			npcHandler:say("You need 1kk to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
	
	if msgcontains(msg, "mana leech") then
		npcHandler:say("Do you want to buy items for powerfull mana leech imbuiment?", cid)
		npcHandler.topic[cid] = 3
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 3 then
		if player:getMoney() + player:getBankBalance() >= 1000000 then
		local bag = player:addItem(1987, 1) -- a bag		
			player:removeMoneyNpc(1000000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(12448, 25) --Rope Belts
			bag:addItem(22534, 25) --Silencer Claws
			bag:addItem(25386, 5) --Some Grimeleech Wings
		else
			npcHandler:say("You need 1kk to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
		
	if msgcontains(msg, "club") then
		npcHandler:say("Do you want to buy items for powerfull skill club imbuiment?", cid)
		npcHandler.topic[cid] = 4
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 4 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10574, 25) --Cyclops Toe
			bag:addItem(24845, 15) --Ogre Nose Rings
			bag:addItem(11322, 10) --Warmaster's Wristguards
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
	
	if msgcontains(msg, "shielding") then
		npcHandler:say("Do you want to buy items for powerfull skill shield imbuiment?", cid)
		npcHandler.topic[cid] = 5
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 5 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10558, 20) --Piece of Scarab Shell
			bag:addItem(12659, 25) --Brimstone Shells
			bag:addItem(22533, 25) --Frazzle Skins
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
			
	if msgcontains(msg, "axe") then
		npcHandler:say("Do you want to buy items for powerfull skill axe imbuiment?", cid)
		npcHandler.topic[cid] = 6
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 6 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(11113, 20) --Orc Tooth
			bag:addItem(12403, 25) --Battle Stones
			bag:addItem(23571, 20) --Moohtant Horns
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
	
	if msgcontains(msg, "magic") then
		npcHandler:say("Do you want to buy items for powerfull magic level imbuiment?", cid)
		npcHandler.topic[cid] = 7
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 7 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10552, 25) --elvish talisman.
			bag:addItem(12408, 15) --broken shamanic staff
			bag:addItem(11226, 15) --strand of medusa hair.
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "distance") then
		npcHandler:say("Do you want to buy items for powerfull skill distance imbuiment?", cid)
		npcHandler.topic[cid] = 8
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 8 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(12420, 25) --Elven Scouting Glasses
			bag:addItem(21311, 20) --Elven Hoofs
			bag:addItem(11215, 10) --Metal Spikes
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "sword") then
		npcHandler:say("Do you want to buy items for powerfull skill sword imbuiment?", cid)
		npcHandler.topic[cid] = 9
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 9 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10608, 25) --Lion's Mane
			bag:addItem(23573, 25) --Mooh'tah Shells
			bag:addItem(10571, 5) --War Crystals
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "capacity increase") then
		npcHandler:say("Do you want to buy items for powerfull capacity increase imbuiment?", cid)
		npcHandler.topic[cid] = 10
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 10 then
		if player:getMoney() + player:getBankBalance() >= 500000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(500000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(28999, 20) --Fairy Wings
			bag:addItem(29007, 10) --Little Bowl of Myrrhs
			bag:addItem(22539, 5) --Goosebump Leather
		else
			npcHandler:say("You need 500k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "speed") then
		npcHandler:say("Do you want to buy items for powerfull speed imbuiment?", cid)
		npcHandler.topic[cid] = 11
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 11 then
		if player:getMoney() + player:getBankBalance() >= 500000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(500000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(19738, 15) --Damselfly Wings
			bag:addItem(11219, 25) --Compasses
			bag:addItem(15484, 20) --Waspoid Wings
		else
			npcHandler:say("You need 500k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "energy damage") then
		npcHandler:say("Do you want to buy items for powerfull energy damage imbuiment?", cid)
		npcHandler.topic[cid] = 13
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 13 then
		if player:getMoney() + player:getBankBalance() >= 700000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(700000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(21310, 25) --Rorc Feathers
			bag:addItem(24631, 5) --Peacock Feather Fans
			bag:addItem(26164, 1) --Energy Vein
		else
			npcHandler:say("You need 700k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "ice damage") then
		npcHandler:say("Do you want to buy items for powerfull ice damage imbuiment?", cid)
		npcHandler.topic[cid] = 14
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 14 then
		if player:getMoney() + player:getBankBalance() >= 700000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(700000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10578, 25) -- Frosty Hearts
			bag:addItem(24170, 10) --Seacrest Hairs
			bag:addItem(10567, 5) --Polar Bear Paws
		else
			npcHandler:say("You need 700k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "death damage") then
		npcHandler:say("Do you want to buy items for powerfull death damage imbuiment?", cid)
		npcHandler.topic[cid] = 15
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 15 then
		if player:getMoney() + player:getBankBalance() >= 700000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(700000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(12440, 25) -- Pile of Grave Earth
			bag:addItem(10564, 20) --Demonic Skeletal Hands
			bag:addItem(11337, 5) --Petrified Screams
		else
			npcHandler:say("You need 700k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "fire damage") then
		npcHandler:say("Do you want to buy items for powerfull fire damage imbuiment?", cid)
		npcHandler.topic[cid] = 16
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 16 then
		if player:getMoney() + player:getBankBalance() >= 700000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(700000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10553, 25) -- Fiery Hearts
			bag:addItem(5920, 5) --Green Dragon Scales
			bag:addItem(5954, 5) --Demon Horns
		else
			npcHandler:say("You need 700k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "earth damage") then
		npcHandler:say("Do you want to buy items for powerfull earth damage imbuiment?", cid)
		npcHandler.topic[cid] = 17
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 17 then
		if player:getMoney() + player:getBankBalance() >= 700000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(700000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10603, 25) -- Swamp Grasses
			bag:addItem(10557, 20) -- Poisonous Slimes
			bag:addItem(23565, 2) -- Slime Hearts
		else
			npcHandler:say("You need 700k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "energy protection") then
		npcHandler:say("Do you want to buy items for powerfull energy protection imbuiment?", cid)
		npcHandler.topic[cid] = 18
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 18 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10561, 20) -- Wyvern Talismans
			bag:addItem(15482, 15) -- Crawler Head Platings
			bag:addItem(10582, 10) -- Wyrm Scales
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "holy protection") then
		npcHandler:say("Do you want to buy items for powerfull holy protection imbuiment?", cid)
		npcHandler.topic[cid] = 19
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 19 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(10556, 25) -- Cultish Robes
			bag:addItem(10555, 25) -- Cultish Masks
			bag:addItem(11221, 20) -- Hellspawn Tails
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "fire protection") then
		npcHandler:say("Do you want to buy items for powerfull fire protection imbuiment?", cid)
		npcHandler.topic[cid] = 20
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 20 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(5877, 20) -- Green Dragon Leathers
			bag:addItem(18425, 10) -- Blazing Bones
			bag:addItem(12614, 5) --  Draken Sulphurs
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "death protection") then
		npcHandler:say("Do you want to buy items for powerfull death protection imbuiment?", cid)
		npcHandler.topic[cid] = 21
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 21 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(12422, 25) -- Flask of Embalming Fluid
			bag:addItem(24663, 20) -- Gloom Wolf Furs
			bag:addItem(10577, 5) --  Mystical Hourglasses
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "ice protection") then
		npcHandler:say("Do you want to buy items for powerfull ice protection imbuiment?", cid)
		npcHandler.topic[cid] = 22
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 22 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(11212, 25) -- Winter Wolf Furs
			bag:addItem(11224, 15) -- Thick Furs
			bag:addItem(15425, 10) --  Deepling Warts
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "earth protection") then
		npcHandler:say("Do you want to buy items for powerfull earth protection imbuiment?", cid)
		npcHandler.topic[cid] = 23
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 23 then
		if player:getMoney() + player:getBankBalance() >= 800000 then
		local bag = player:addItem(1987, 1) -- a bag
			player:removeMoneyNpc(800000)
			bag:setAttribute(ITEM_ATTRIBUTE_NAME, "bag of imbuiments")
			npcHandler:say("whoooosh There!", cid)
			bag:addItem(20103, 25) --  Piece of Swampling Wood
			bag:addItem(10611, 20) -- Snake Skins
			bag:addItem(12658, 10) --  Brimstone Fangss
		else
			npcHandler:say("You need 800k to buy this imbuiment.", cid)
		end
		npcHandler.topic[cid] = 0
	end	


	return true
end

keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, text = 'I have several types of imbuiment. {Skill increase}, {Additional Attributes}, {Elemental Damage}, {Elemental Protection}?'})


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye |PLAYERNAME|.")
npcHandler:addModule(FocusModule:new())