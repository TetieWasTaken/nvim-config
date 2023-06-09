local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local I = require("alpha.themes.startify")

dashboard.section.header.val = {
             [[                               __                ]],
             [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
             [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
             [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
             [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
             [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
         }
         dashboard.section.buttons.val = {
             dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
             dashboard.button( "f", "  Find file" , ":Telescope find_files<CR>"),     
	     dashboard.button( "b", "  Browse files" , ":Telescope file_browser<CR>"),
	     dashboard.button( "h", "  Find word" , ":Telescope live_grep<CR>"),
	     dashboard.button( "p", "  Recent files" , ":Telescope oldfiles<CR>"),
	     dashboard.button( "r", "  Recent projects" , ":Telescope projects<CR>"),
	     dashboard.button( "s", "  Settings" , ":e ~/.config/nvim/lua/settings.lua<CR>"),
	     dashboard.button( "c", "  Terminal" , ":vsplit | term<CR>"),
	dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
         }
         local handle = io.popen('fortune')
         local fortune = handle:read("*a")
         handle:close()
         dashboard.section.footer.val = fortune

         dashboard.config.opts.noautocmd = true

         vim.cmd[[autocmd User AlphaReady echo 'ready']]

         alpha.setup(dashboard.config)
