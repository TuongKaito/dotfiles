return {
    "SmiteshP/nvim-navic",
    opts = {
        icons = {
			File          = "󰈙 ",
			Module        = " ",
			Namespace     = "󰌗 ",
			Package       = " ",
			Class         = "󰌗 ",
			Method        = "󰆧 ",
			Property      = " ",
			Field         = " ",
			Constructor   = " ",
			Enum          = "󰕘",
			Interface     = "󰕘",
			Function      = "󰊕 ",
			Variable      = "√× ",
			Constant      = "󰏿 ",
			String        = "󰀬 ",
			Number        = "󰎠 ",
			Boolean       = "◩ ",
			Array         = "󰅪 ",
			Object        = "󰅩 ",
			Key           = "󰌋 ",
			Null          = "󰟢 ",
			EnumMember    = " ",
			Struct        = "󰌗 ",
			Event         = " ",
			Operator      = "󰆕 ",
			TypeParameter = "󰊄 ",
		},
        separator = " 🢒 ",
        highlight = true,
        lsp = {
            auto_attach = true,
            preference = {
                "clangd",
                "basedpyright",
            }
        }
    }
}
