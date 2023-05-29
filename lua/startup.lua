local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

alpha.setup(dashboard.config)

vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        local v = vim.version() or {}
        local version = string.format(
          "%s Neovim v%d.%d.%d%s",
          I.misc.vim,
          v.major,
          v.minor,
          v.patch,
          v.prerelease and "(nightly)" or ""
        )

        dashboard.section.footer.val = string.format(
          "--- %s loaded %d %s plugins in %d ms ---",
          version,
          stats.count,
          I.plugin.plugin,
          ms
        )
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
