 local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)	npcHandler:onCreatureAppear(cid)	end
function onCreatureDisappear(cid)npcHandler:onCreatureDisappear(cid)	end
function onCreatureSay(cid, type, msg)npcHandler:onCreatureSay(cid, type, msg)end
function onThink()npcHandler:onThink()	end


local options = {
	['potions'] = {
		{name = "great health potion", id = 7591, buy = 225},
		{name = "great mana potion", id = 7590, buy = 144},
		{name = "great spirit potion", id = 8472, buy = 228},
		{name = "health potion", id = 7618, buy = 50},
		{name = "mana potion", id = 7620, buy = 56},
		{name = "strong health potion", id = 7588, buy = 115},
		{name = "strong mana potion", id = 7589, buy = 93},
		{name = "supreme health potion", id = 26031, buy = 625},
		{name = "ultimate health potion", id = 8473, buy = 379},
		{name = "ultimate mana potion", id = 26029, buy = 438},
		{name = "ultimate spirit potion", id = 26030, buy = 438},
		{name = "empty potion flask", id = 7634, sell = 5},
		{name = "empty potion flask", id = 7635, sell = 5},
		{name = "empty potion flask", id = 7636, sell = 5},
		{name = "vial", id = 2006, sell = 5}
	},
	['runes'] = {
		{name = "animate dead rune", id = 2316, buy = 375},
		{name = "avalanche rune", id = 2274, buy = 57},
		{name = "blank rune", id = 2260, buy = 10},
		{name = "chameleon rune", id = 2291, buy = 210},
		{name = "convince creature rune", id = 2290, buy = 80},
		{name = "cure poison rune", id = 2266, buy = 65},
		{name = "destroy field rune", id = 2261, buy = 15},
		{name = "disintegrate rune", id = 2310, buy = 26},
		{name = "energy bomb rune", id = 2262, buy = 203},
		{name = "energy field rune", id = 2277, buy = 38},
		{name = "energy wall rune", id = 2279, buy = 85},
		{name = "explosion rune", id = 2313, buy = 31},
		{name = "fire bomb rune", id = 2305, buy = 147},
		{name = "fire field rune", id = 2301, buy = 28},
		{name = "fire wall rune", id = 2303, buy = 61},
		{name = "fireball rune", id = 2302, buy = 30},
		{name = "great fireball rune", id = 2304, buy = 57},
		{name = "heavy magic missile rune", id = 2311, buy = 12},
		{name = "holy missile rune", id = 2295, buy = 16},
		{name = "icicle rune", id = 2271, buy = 30},
		{name = "intense healing rune", id = 2265, buy = 95},
		{name = "light magic missile rune", id = 2287, buy = 4},
		{name = "magic wall rune", id = 2293, buy = 116},
		{name = "paralyse rune", id = 2278, buy = 700},
		{name = "poison bomb rune", id = 2286, buy = 85},
		{name = "poison field rune", id = 2285, buy = 21},
		{name = "poison wall rune", id = 2289, buy = 52},
		{name = "soulfire rune", id = 2308, buy = 46},
		{name = "stalagmite rune", id = 2292, buy = 12},
		{name = "stone shower rune", id = 2288, buy = 37},
		{name = "sudden death rune", id = 2268, buy = 135},
		{name = "thunderstorm rune", id = 2315, buy = 47},
		{name = "ultimate healing rune", id = 2273, buy = 175},
		{name = "wild growth rune", id = 2269, buy = 160}
	},
	['distance'] = {
		{name = "arrow", id = 2544, buy = 2},
		{name = "bolt", id = 2580, buy = 4},
		{name = "bow", id = 2456, buy = 400, sell = 100},
		{name = "crossbow", id = 2455, buy = 500, sell = 120},
		{name = "crystalline arrow", id = 18304, buy = 20},
		{name = "drill bolt", id = 18436, buy = 12},
		{name = "earth arrow", id = 7850, buy = 5},
		{name = "envenomed arrow", id = 18437, buy = 12},
		{name = "flaming arrow", id = 7840, buy = 5},
		{name = "flash arrow", id = 7838, buy = 5},
		{name = "onyx arrow", id = 7365, buy = 7},
		{name = "piercing bolt", id = 7363, buy = 5},
		{name = "power bolt", id = 2547, buy = 7},
		{name = "prismatic bolt", id = 18435, buy = 20},
		{name = "royal spear", id = 7378, buy = 15},
		{name = "shiver arrow", id = 7839, buy = 5},
		{name = "sniper arrow", id = 7364, buy = 5},
		{name = "spear", id = 2389, buy = 9, sell = 3},
		{name = "tarsal arrow", id = 15648, buy = 6},
		{name = "throwing star", id = 2399, buy = 42},
		{name = "vortex bolt", id = 15649, buy = 6},
		{name = "infernal bolt", id = 6529, buy = 200},
		{name = "diamond arrow", id = 29057, buy = 300},
		{name = "spectral bolt", id = 29058, buy = 300}
		
	},
	['foods'] = {
		{name = "white mushroom", id = 2787, buy = 6},
		{name = "brown mushroom", id = 2789, buy = 10},
		{name = "red mushroom", id = 2788, buy = 12},
		{name = "bread", id = 2689, buy = 4},
		{name = "ham", id = 2671, buy = 8},
		{name = "cheese", id = 2696, buy = 6},
		{name = "meat", id = 2666, buy = 5}
	},
	['tools'] = {
		{name = "backpack", id = 1988, buy = 20},
		{name = "bag", id = 1987, buy = 5},		
		{name = "basket", id = 1989, buy = 6},
		{name = "bottle", id = 2007, buy = 3},
		{name = "bucket", id = 2005, buy = 4},
		{name = "candelabrum", id = 2041, buy = 8},
		{name = "candlestick", id = 2047, buy = 2},
		{name = "closed trap", id = 2578, buy = 280, sell = 75},
		{name = "crowbar", id = 2416, buy = 260, sell = 50},
		{name = "fishing rod", id = 2580, buy = 150, sell = 40},
		{name = "machete", id = 2420, buy = 35, sell = 6},
		{name = "pick", id = 2553, buy = 50, sell = 15},
		{name = "rope", id = 2120, buy = 50, sell = 15},
		{name = "scythe", id = 2550, buy = 50, sell = 10},
		{name = "shovel", id = 2554, buy = 50, sell = 8},
		{name = "torch", id = 2050, buy = 2},
		{name = "watch", id = 2036, buy = 20, sell = 6},
		{name = "worm", id = 3976, buy = 1},		
		{name = "closed silvered trap", id = 24730, buy = 5000}
		
	},
	['rods'] = {
		{name = "hailstorm rod", id = 2183, buy = 15000},
		{name = "moonlight rod", id = 2186, buy = 1000},
		{name = "necrotic rod", id = 2185, buy = 5000},
		{name = "northwind rod", id = 8911, buy = 7500},
		{name = "snakebite rod", id = 2182, buy = 500},
		{name = "springsprout rod", id = 8912, buy = 18000},
		{name = "terra rod", id = 2181, buy = 10000},
		{name = "underworld rod", id = 8910, buy = 22000},
		{name = "wand of cosmic energy", id = 2189, buy = 10000},
		{name = "wand of decay", id = 2188, buy = 5000},
		{name = "wand of draconia", id = 8921, buy = 7500},
		{name = "wand of dragonbreath", id = 2191, buy = 1000},
		{name = "wand of inferno", id = 2187, buy = 15000},
		{name = "wand of starstorm", id = 8920, buy = 18000},
		{name = "wand of voodoo", id = 8922, buy = 22000},
		{name = "wand of vortex", id = 2190, buy = 500}
	},
	['wands'] = {
		{name = "hailstorm rod", id = 2183, buy = 15000},
		{name = "moonlight rod", id = 2186, buy = 1000},
		{name = "necrotic rod", id = 2185, buy = 5000},
		{name = "northwind rod", id = 8911, buy = 7500},
		{name = "snakebite rod", id = 2182, buy = 500},
		{name = "spellwand", id = 7735, sell = 299},
		{name = "springsprout rod", id = 8912, buy = 18000},
		{name = "terra rod", id = 2181, buy = 10000},
		{name = "underworld rod", id = 8910, buy = 22000},
		{name = "wand of cosmic energy", id = 2189, buy = 10000},
		{name = "wand of decay", id = 2188, buy = 5000},
		{name = "wand of draconia", id = 8921, buy = 7500},
		{name = "wand of dragonbreath", id = 2191, buy = 1000},
		{name = "wand of inferno", id = 2187, buy = 15000},
		{name = "wand of starstorm", id = 8920, buy = 18000},
		{name = "wand of voodoo", id = 8922, buy = 22000},
		{name = "wand of vortex", id = 2190, buy = 500}
	},
	['various'] = {
		{name = "exercise axe", id = 32385, buy = 262500, type = 'chargable', charges = 500},
		{name = "exercise bow", id = 32387, buy = 262500, type = 'chargable', charges = 500},
		{name = "exercise club", id = 32386, buy = 262500, type = 'chargable', charges = 500},
		{name = "exercise rod", id = 32388, buy = 262500, type = 'chargable', charges = 500},
		{name = "exercise sword", id = 32384, buy = 262500, type = 'chargable', charges = 500},
		{name = "exercise wand", id = 32389, buy = 262500, type = 'chargable', charges = 500},
	},
	
}

local equivalente = {
	[1] = 'potions',
	[2] = 'runes',
	[3] = 'distance',
	[4] = 'foods',
	[5] = 'tools',
	[6] = 'rods',
	[7] = 'wands',
	[8] = 'various',
}

local function getTable(player)
	local msg = equivalente[player:getStorageValue(Storage.NPCTable)]
	if not msg then
		return false
	end

	local itemsList = {}
	local sendTrade = options[msg:lower()]
	if not sendTrade then return false end

	itemsList = sendTrade
	return itemsList
end

local function setNewTradeTable(_table)
	local items, item = {}
	if _table then
		for i = 1, #_table do
			item = _table[i]
			items[item.id] = {itemId = item.id, buyPrice = item.buy, sellPrice = item.sell, subType = 0, realName = item.name, type = item.type, charges = item.charges}
		end
	end
	return items
end

local function onBuy(cid, item, subType, amount, ignoreCap, inBackpacks)
	local player = Player(cid)
	if not player then
		return false
	end

	if not getTable(player) then
		return false
	end

	local items = setNewTradeTable(getTable(player))
	if items then
		if not ignoreCap and player:getFreeCapacity() < ItemType(items[item].itemId):getWeight(amount) then
			return player:sendTextMessage(MESSAGE_INFO_DESCR, 'You don\'t have enough cap.')
		end
		if not player:removeMoneyNpc(items[item].buyPrice * amount) then
			selfSay("You don't have enough money.", cid)
		else
			local itemType = ItemType(items[item].itemId)
			if itemType:isStackable() then
				local item_ = player:addItem(items[item].itemId, amount)
				if item_ then
					if items[item].type and items[item].type == 'chargable' then
						item_:setAttribute(ITEM_ATTRIBUTE_CHARGES, items[item].charges)
					end
				end
			else
				for i = 1, amount do
					local it = player:addItem(itemType:getId(), subType)
					if it then
						if items[item].type and items[item].type == 'chargable' then
							it:setAttribute(ITEM_ATTRIBUTE_CHARGES, items[item].charges)
						end
					end
				end
			end

			return player:sendTextMessage(MESSAGE_INFO_DESCR, 'Bought '..amount..'x '..items[item].realName..' for '..items[item].buyPrice * amount..' gold coins.')
		end
	end
	return true
end

local function onSell(cid, item, subType, amount, ignoreCap, inBackpacks)
	local player = Player(cid)
	if not player then
		return false
	end

	if not getTable(player) then
		return false
	end

	local items = setNewTradeTable(getTable(player))
	if items[item].sellPrice and player:removeItem(items[item].itemId, amount) then
		player:addMoney(items[item].sellPrice * amount)
		return player:sendTextMessage(MESSAGE_INFO_DESCR, 'Sold '..amount..'x '..items[item].realName..' for '..items[item].sellPrice * amount..' gold coins.')
	else
		selfSay("You don't have item to sell.", cid)
	end
	return true
end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	player:setStorageValue(Storage.NPCTable, -1)
	for i = 1, #equivalente do
		if msgcontains(equivalente[i], msg) then
			player:setStorageValue(Storage.NPCTable, i)
			local items = setNewTradeTable(getTable(player))

			openShopWindow(cid, getTable(player), onBuy, onSell)
			npcHandler:say('Alright, here\'s all the ' .. equivalente[i] .. ' I can order for you!', cid)
			break
		end
	end

	return true
end

npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. :)')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
