return {
	{
		"tjdevries/ocaml.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		build = "make",
		config = function()
			require("ocaml").setup({
				install_mlx = true,
				install_rapper = true,
				setup_lspconfig = false,
				setup_conform = true,
			})
		end,
	},
}
