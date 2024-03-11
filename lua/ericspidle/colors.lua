local primary_cs = "tokyonight" 
local secondary_cs = "codemonkey"

local loaded_pcs, _ = pcall(vim.cmd, "colorscheme " .. primary_cs) 
if not loaded_pcs then -- if we fail to load our primary CS 
		print("Failed to load primary colorscheme ", primary_cs)
		print("Attempting to fall back to ", secondary_cs) 
		local loaded_scs, _ = pcall(vim.cmd, "colorscheme " .. secondary_cs)
		if not loaded_scs then 
				print("Failed to load backup color scheme going to default")
				return
		end 
		print("all ok second option loaded")
end 
