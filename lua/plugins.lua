local status, packer = pcall(require, "packer")
if not status then
	print("Packer not installed")
	return
end
vim.cmd([[packadd packer.nvim]])

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

packer.startup(function(use)
	use("wbthomason/packer.nvim") --Packer Nvim
	--Color Scheme
	--use("folke/tokyonight.nvim")
	use("EdenEast/nightfox.nvim")
	--Web Icons
	use("kyazdani42/nvim-web-devicons")
	--buffer line
	use("noib3/nvim-cokeline")
	--lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	--Neovim Tree
	use("kyazdani42/nvim-tree.lua")
	--Autopair
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})
	--Comment line
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	--Auto-Tag
	use("windwp/nvim-ts-autotag")
	--TreeSetter & Arg Highlighter
	use("nvim-treesitter/nvim-treesitter")
	use("m-demare/hlargs.nvim")
	--Indent blankline
	use("lukas-reineke/indent-blankline.nvim")
	--rainbow brackets
	use("p00f/nvim-ts-rainbow")
	--Colorizer
	use("NvChad/nvim-colorizer.lua")
	--Indent-O-Matic
	use("Darazaki/indent-o-matic")
	--Lsp
	use("neovim/nvim-lspconfig")
	--Completion Engine
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	--snippet Engine
	use("L3MON4D3/LuaSnip")
	--snippet collection
	use("rafamadriz/friendly-snippets")
	--Icon for LSP
	use("onsails/lspkind.nvim")
	--Extra vim functionality
	use("nvim-lua/plenary.nvim")
	--Null-ls for Formatting and Linting
	use("jose-elias-alvarez/null-ls.nvim")
	--Lsp Color
	use("folke/lsp-colors.nvim")
	--Fuzzy Finder Telescope
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	--Whick key
	use("folke/which-key.nvim")
	--Color Picker
	use("ziontee113/color-picker.nvim")
	--LspSage
	use({ "kkharji/lspsaga.nvim" })
	--Lsp-Installer Mason
	use({ "williamboman/mason.nvim" })
	--Lazy loading using impatient
	use("lewis6991/impatient.nvim")
end)
