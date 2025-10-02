-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("oil").setup()
-- require("lspconfig").arduino_language_server.setup({
--   cmd = {
--     "arduino-language-server",
--     "-clangd",
--     "/opt/homebrew/Cellar/llvm/19.1.6/bin/clangd",
--     "-cli",
--     "/opt/homebrew/Cellar/arduino-cli/1.1.1/bin/arduino-cli",
--     "-cli-config",
--     "/Users/ericyang/Library/Arduino15/arduino-cli.yaml",
--     "-fqbn",
--     "arduino:avr:uno",
--   },
-- })
--#regio
--- vim plug setup
local vim = vim
local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("nvim-lua/popup.nvim")
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim")
Plug("jvgrootveld/telescope-zoxide")
Plug("edluffy/hologram.nvim")
Plug("MunifTanjim/nui.nvim")
Plug("nvim-lua/plenary.nvim")

vim.call("plug#end")

require("telescope").load_extension("zoxide")

-- require("hologram").setup({
--   auto_display = true, -- WIP automatic markdown image display, may be prone to breaking
-- })

require("platformio").setup({
  lsp = "ccls", --default: ccls, other option: clangd
  -- If you pick clangd, it also creates compile_commands.json
  menu_key = "<leader>m",
})

require("lspconfig").clangd.setup({
  init_options = {
    fallbackFlags = { "--std=c++20" },
  },
})

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font"

  vim.g.neovide_transparency = 0.8
  vim.g.neovide_normal_opacity = 0.8
end

vim.opt.laststatus = 3
