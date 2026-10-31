-- src/api/moveToInventory.luau
local events = require("../core/events")
local slotManager = require("../core/slotManager")

const function moveToInventory(item: BackpackItem)
	const index = slotManager.getItemIndex(item)
	if index and slotManager.moveToInventory(index) then
		events.hotbarChanged.fire(slotManager.getHotbarItems())
	end
end

return moveToInventory