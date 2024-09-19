return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim" },
		},
		build = "make tiktoken",
		config = function()
			require("CopilotChat").setup({
				debug = true,
			})

			-- Keybindings for CopilotChat commands with descriptions for which-key
			local wk = require("which-key")

			for _, mode in ipairs({ "n", "v" }) do
				wk.register({
					C = {
						{ ":CopilotChatToggle<CR>", "Open chat window with optional input" },
					},
					cc = {
						name = "Copilot Chat",
						c = { ":CopilotChat<CR>", "Open chat window with optional input" },
						o = { ":CopilotChatOpen<CR>", "Open chat window" },
						C = { ":CopilotChatClose<CR>", "Close chat window" },
						t = { ":CopilotChatToggle<CR>", "Toggle chat window" },
						s = { ":CopilotChatStop<CR>", "Stop current copilot output" },
						r = { ":CopilotChatReset<CR>", "Reset chat window" },
						S = { ":CopilotChatSave<CR>", "Save chat history to file" },
						L = { ":CopilotChatLoad<CR>", "Load chat history from file" },
						di = { ":CopilotChatDebugInfo<CR>", "Show debug information" },
						m = { ":CopilotChatModels<CR>", "View and select available models" },
						M = { ":CopilotChatModel<CR>", "View the currently selected model" },
						e = { ":CopilotChatExplain<CR>", "Write an explanation for the active selection" },
						v = { ":CopilotChatReview<CR>", "Review the selected code" },
						f = { ":CopilotChatFix<CR>", "Rewrite the code to show it with the bug fixed" },
						O = { ":CopilotChatOptimize<CR>", "Optimize the selected code" },
						dd = { ":CopilotChatDocs<CR>", "Add documentation comment for the selection" },
						T = { ":CopilotChatTests<CR>", "Generate tests for the code" },
						fd = { ":CopilotChatFixDiagnostic<CR>", "Assist with the diagnostic issue in file" },
						cm = { ":CopilotChatCommit<CR>", "Write commit message with commitizen convention" },
						cs = { ":CopilotChatCommitStaged<CR>", "Write commit message for staged changes" },
					},
				}, { prefix = "<leader>", mode = mode })
			end
		end,
	},
}
