return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000, -- Load this before other colorschemes
  config = function()
    require('kanagawa').setup({
      compile = false,           -- Enable compilation
      undercurl = true,          -- Enable undercurls
      commentStyle = { italic = true },
      functionStyle = { bold = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true,       -- Set to true if you want a transparent background
      dimInactive = false,       -- Dim inactive windows
      terminalColors = true,     -- Set terminal colors
      theme = "wave",            -- "wave" (default), "dragon", or "lotus"
      background = {             -- Customize the background color
          dark = "wave",         -- "wave", "dragon", "lotus"
          light = "lotus"
      },
      colors = {
        -- Optionally override specific colors
        -- For example: palette = { sumiInk0 = "#16161D" }
      },
      overrides = function(colors)
        -- Add your custom highlights here
        return {
          -- For example:
          -- PythonDecorator = { fg = colors.palette.sakuraPink },
          -- PythonBuiltin = { fg = colors.palette.springViolet1 }
        }
      end,
    })
  end,
}
