return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-mini/mini.icons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    local opts = {
      layout = {
        { type = "padding", val = 3 },
        dashboard.section.buttons,
      },
      opts = {
        margin = 5,
      },
    }

    alpha.setup(opts)

    dashboard.section.header.val = {
      [[ ⠀⠀⠀⣰⠏⡰⢃⣾⠏⠀⠀⡾⠋⠐⢸⡋⣾⣹⢏⣿⡇⢀⣀⣏⠈⣿⣷⣌⢢⣄⣠⠤⣿⣰⣲⡋⢀⣀⠷⢻⣿⣷⣿⡳⣤⢎⢸⣿⠸⠀⣿⣿⣿⣿⣳⠈⠀⢿⠘⣆⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⡼⠃⢰⢃⣟⡟⠀⠀⣰⠀⠀⠀⡏⢨⣿⠇⢸⣹⣷⣄⣠⡻⣎⣿⣌⢫⣽⣪⣷⣦⣼⡻⡍⠉⠀⢹⡄⠀⣿⠈⠓⠽⣿⣯⣿⣽⡄⢀⣿⠈⡁⠀⣧⢇⢯⠘⡆⠘⡆⠀⠀⠀⠀ ]],
      [[ ⠀⠘⠃⠀⡏⡞⣼⠁⠀⡤⠃⠀⠀⠐⠀⣿⢇⡌⠟⡏⢿⣧⠀⠀⢹⡄⢻⣧⣤⣬⣿⡤⣤⣿⣽⣄⠀⠈⡿⣀⣿⡆⠀⠀⠀⠀⣿⣿⡇⣼⣿⡇⠇⠀⢸⠘⡜⣆⣷⠀⢹⡄⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠸⣷⣧⠇⣠⣸⠁⠀⠀⠀⣸⣼⠏⡞⠓⠻⣷⠉⠻⣷⣆⡀⢻⣆⢽⡿⣄⠌⣷⡘⣎⠀⠹⣷⣄⢨⣿⣿⣿⣷⠀⠀⢸⣿⣿⣵⡿⢸⣧⠀⢸⠀⣇⢹⠹⣼⠀⠀⢧⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⣽⠏⣼⣾⠏⡄⠀⠀⠀⣿⡿⡼⠀⠀⠀⠹⣧⡀⢸⠳⡝⢏⢻⣦⡛⣼⢷⣬⣿⣝⣷⣦⣼⣿⣿⣿⣿⠿⠟⠀⠀⣼⣿⣧⣟⢁⡟⣿⠀⢸⣧⢻⠀⢧⢻⡇⠀⢸⡆⠀⠀ ]],
      [[ ⠀⠀⠀⢰⣯⣾⣿⡟⢸⡇⠀⠀⠀⣿⣷⢀⣀⣀⣀⣀⣹⣷⡸⣧⠱⡌⠻⣿⡻⣾⣧⣬⡿⠿⢾⣯⣴⡾⢛⣿⡿⠀⠀⠀⠀⢹⠻⣿⢿⡞⢠⣿⡄⢸⣼⠘⡆⢈⣆⢷⠀⠀⣇⠀⠀⠀]],
      [[ ⠀⢀⣠⣿⣿⣿⣿⠇⣟⠇⠀⠀⠀⣽⣻⣷⣶⣶⣶⣬⣭⣻⣧⢹⣇⠙⢄⠈⠳⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⡇⠀⠀⠀⠀⢸⣆⢸⣻⣷⣿⢣⣧⠈⣼⡀⣷⢸⠘⢆⢧⡀⢸⠀⠀ ]],
      [[ ⠀⠈⢩⣿⡿⠋⣿⣸⣽⠀⠀⡇⣷⠻⣿⡟⠉⢸⣿⣯⣿⣿⡻⣷⣽⣷⣾⣷⣤⣽⣄⠀⣿⣿⣷⣟⣿⡿⣿⣿⠏⡔⠀⠀⠀⢸⡟⠙⢋⠹⣞⢸⣿⡀⣯⡇⢸⠨⣇⠈⢎⢣⡈⠀⠀ ]],
      [[ ⠀⠀⣸⡿⠁⠀⣿⢯⠇⠀⠀⡇⢸⣄⢻⢷⡈⠙⣿⣿⢿⣽⡇⠈⡉⠛⠷⠎⠉⠉⠉⢹⣿⣾⡿⣭⡿⢁⣿⠃⡼⢣⠀⠀⠀⢀⣿⡄⢸⢧⢳⣫⣿⣇⢻⢷⠀⡇⣿⠀⠘⡆⢳⡀⠀⠀]],
      [[ ⠀⢠⢿⠃⠀⢀⡟⡾⠀⡀⠀⡇⠀⣿⣌⣇⢹⣦⣽⠿⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡙⠛⠋⢑⣿⣡⠞⣱⡿⠀⡀⢠⣿⣿⣷⢸⣄⣣⣙⣿⣽⡼⡜⠀⣿⣿⣇⠀⠘⢆⠹⣄ ]],
      [[ ⢀⣎⡎⠀⠀⣸⡿⠁⣴⠟⠀⡇⣇⠘⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠐⢛⣽⣿⣾⡿⣡⠞⣠⣞⣼⣿⣿⣿⣿⢿⣾⣿⣶⣇⣷⡆⢸⢿⣻⡄⢠⠈⢢⠈ ]],
      [[ ⡌⡘⠀⣀⣤⢟⣡⣴⣇⣴⣸⣿⣿⣦⢈⣿⣯⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢲⣟⣻⣷⡾⢛⣵⣶⡯⢞⣽⣿⣿⣿⣿⣦⠈⣿⠁⢻⠸⣿⠘⡆⣿⣷⡘⣧⠀⠀⠀]],
      [[ ⠐⠁⡜⠀⢹⢻⣭⡾⠛⣸⣿⢿⣿⣿⣯⣿⣿⣿⡿⠟⠃⠀⠀⠀⣶⣲⠀⠀⠀⠀⠀⠀⠀⠀⣀⣲⡿⢿⣷⠛⢿⠛⠛⠛⢯⣾⣷⡿⡏⠙⠓⠂⡇⡄⠈⣇⢿⡄⡇⣿⡏⢧⢹⣧⠀⠀]],
      [[ ⠀⠠⢁⡄⡸⣾⠇⠀⣠⣿⣿⣲⠿⡟⡿⡶⢿⣯⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡶⠛⣿⣋⠣⡀⠀⢷⣀⣸⣷⡞⣀⣼⠟⡏⡇⡇⠀⠀⢰⢣⡇⠀⢿⠈⣿⣇⢿⡇⠘⢇⢫⡃⠀]],
      [[ ⡰⠂⢾⣷⣿⡏⠀⠚⣻⣱⠙⢻⠀⡇⣿⡟⠾⠛⢏⠛⠶⢄⣀⠀⠀⠀⠀⠀⢀⣴⠏⢀⠎⡵⡻⠓⠿⢦⣀⣻⣛⣻⣿⣷⠿⢿⣇⡧⣿⣀⠀⡾⡞⢷⠀⠈⣷⠹⣿⢸⣧⠀⠘⢯⢧⠀]],
      [[ ⠁⢠⣾⡹⡼⠀⠀⢰⢃⣏⢰⢸⠀⡇⣿⠳⣆⡀⠈⢳⡄⠀⠉⠛⢶⣤⣴⣶⢾⡏⢀⢏⠞⡼⠁⠀⠀⢠⠇⢀⡴⠃⠀⢀⣼⢻⣿⠃⣿⣙⠹⠿⠷⣌⣦⠀⠙⣄⠹⣼⣿⣆⠀⠈⢯⠀]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰈞  > Find file", ":Telescope find_files<CR>"),
      dashboard.button("c", "  > Edit Config", ":e ~/.config/nvim/<CR>"),
    }

    local function footer()
      return "Making 5-day tasks into 5-week tasks since 2018 ;)"
    end

    dashboard.section.footer.val = footer()

    alpha.setup(dashboard.opts)
  end,
}
