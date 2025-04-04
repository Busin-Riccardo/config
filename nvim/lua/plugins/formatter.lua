return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				vue = { "prettierd", "prettier" },
				javascript = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				html = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
				go = { "gofumpt", "gofmt" },
				yaml = {},
				yml = {},
				template = { "prettierd", "prettier" },
				reason = { "refmt" },
				["ocaml.mlx"] = { "ocamlformatmlx" },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			formatters = {
				refmt = {
					command = "refmt",
				},
				ocamlformatmlx = {
					command = "ocamlformat-mlx",
					args = { "--enable-outside-detected-project", "--name", "$FILENAME", "-" },
				},
			},
		})
	end,
}
