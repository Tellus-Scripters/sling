-- src/api/removeCategory.luau
local states = require("../core/states")

local function removeCategory(category: string)
	const old = states.categories()
	const new = {}
	for _, entry in old do
		if entry.category ~= category then
			table.insert(new, entry)
		end
	end
	assert(#new < #old, `Category {category} does not exist`)
	states.categories(new) -- new table so Vide sees a change
end

return removeCategory