local home = os.getenv("HOME")
local nvm_node_dir_path = home .. "/.nvm/versions/node/v22.14.0"
local node_path = nvm_node_dir_path .. "/bin/node"
local copilot_lsp_path = nvm_node_dir_path .. "/lib/node_modules/@github/copilot-language-server/dist/main.js"
local cmd = node_path .. " " .. copilot_lsp_path .. " --stdio"

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      copilot = {
        cmd = cmd,
      },
    },
  },
}
