local fn = vim.fn 

-- Automatically install packer if we do not have it 
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then 
		PACKER_BOOTSTRAP = fn.system {
				"git", 
				"clone", 
				"--depth", 
				"1",
				"https://github.com/wbthomason/packer.nvim", 
				install_path,
		}
		print "Installing packer close and reopen Neovim ..."
		vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim when we update packages file 
vim.cmd [[
 augroup packer_user_config
 autocmd! 
 autocmd BufWritePost plugins.lua source <afile> | PackerSync
 augroup end
 ]]
 local is_ok, packer = pcall(require, "packer")
 if not is_ok then 
		 print("Packer missing something is wrong")
		 return
end

return packer.startup(function(use) 
		-- List desired plugins here
		use "wbthomason/packer.nvim" -- manage packer for you 
		use "nvim-lua/popup.nvim" -- Used by other plugins
		use "nvim-lua/plenary.nvim" -- also used by other plugins 
		-- colorschemes 
		use "lunarvim/colorschemes"
		use "folke/tokyonight.nvim"
		use "hrsh7th/nvim-cmp" -- auto complete
		use "hrsh7th/cmp-path"
		use "hrsh7th/cmp-cmdline" 
		use "saadparwaiz1/cmp_luasnip"

		--snippets 
		use "L3MON4D3/LuaSnip"
		use "rafamadriz/friendly-snippets"
		
		if PACKER_BOOTSTRAP then 
				require("packer").sync()
		end
end)
