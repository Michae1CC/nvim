-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd.packadd('packer.nvim')
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
    -- color theme 
	use 'Mofiqul/dracula.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('p00f/nvim-ts-rainbow')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('christoomey/vim-tmux-navigator')
	use('tpope/vim-surround')
	use('numToStr/Comment.nvim')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

    -- Taken from:https://github.com/windwp/nvim-autopairs 
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    if packer_bootstrap then
        require("packer").sync()
    end
end)
