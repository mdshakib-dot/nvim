return {
	{
		"uga-rosa/ccc.nvim",
		config = function()
			require("ccc").setup({})
		end,
	},
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
}
