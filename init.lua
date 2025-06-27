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

require("copilot").setup({
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>",
    },
    layout = {
      position = "bottom", -- | top | left | right | horizontal | vertical
      ratio = 0.4,
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    hide_during_completion = true,
    debounce = 75,
    keymap = {
      accept = "<M-l>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = "node", -- Node.js version must be > 18.x
  server_opts_overrides = {},
})

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font"

  vim.g.neovide_transparency = 0.8
  vim.g.neovide_normal_opacity = 0.8
end
