return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'} },
    config = function()
      require('dashboard').setup({
        -- config
        theme = 'doom', -- theme is doom and hyper default is hyper
        config = {
          header = {
            [[                                                       ]],
            [[  ███████╗██╗  ██╗         ██╗   ██╗███████╗ ██████╗   ]],
            [[  ██╔════╝██║ ██╔╝         ██║   ██║██╔════╝██╔════╝   ]],
            [[  █████╗  █████╔╝  █████╗  ██║   ██║███████╗██║        ]],
            [[  ██╔══╝  ██╔═██╗   ╚═══╝  ╚██╗ ██╔╝╚════██║██║        ]],
            [[  ██║     ██║  ██╗          ╚████╔╝ ███████║╚██████╗   ]],
            [[  ╚═╝     ╚═╝  ╚═╝           ╚═══╝  ╚══════╝ ╚═════╝   ]],
            [[                                                       ]],
          },
          center = {
            {
              icon = '🗃️ ',
              icon_hl = 'Title',
              desc = 'Project             ',
              desc_hl = 'String',
              key = 'p',
              keymap = 'SPC p',
              key_hl = 'Number',
              action = 'NvimTreeToggle'
            },
            {
              icon = '📄 ',
              icon_hl = 'Title',
              desc = 'New File            ',
              desc_hl = 'String',
              key = 'n',
              keymap = 'SPC f n',
              key_hl = 'Number',
              action = 'enew'
            },
            {
              icon = '📂 ',
              desc = 'Recent Files        ',
              key = 'r',
              keymap = 'SPC f r',
              action = 'lua require("telescope.builtin").oldfiles()'
            },
            {
              icon = '🔍 ',
              desc = 'Find File           ',
              key = 'f',
              keymap = 'SPC f f',
              action = 'lua require("telescope.builtin").find_files()'
            },
            {
              icon = '🔤 ',
              desc = 'Find Text           ',
              key = 'g',
              keymap = 'SPC f g',
              action = 'lua require("telescope.builtin").live_grep()'
            },
            {
              icon = '⚙️  ',
              desc = 'Config              ',
              key = 'c',
              keymap = 'SPC f c',
              action = 'edit ~/.config/nvim/init.lua'
            },
            {
              icon = '❌ ',
              desc = 'Quit                ',
              key = 'q',
              keymap = 'SPC q',
              action = 'quit'
            },
          },
          footer = {
            '',
            '🚀 Sharp tools make good work 🚀'
          }
        },
      })
    end,
  },
}
