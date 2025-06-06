return {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {
        bind = true,
        always_trigger = true,
        handler_opts = {
            border = "rounded",
        },
    },
    config = function(_, opts) require 'lsp_signature'.setup(opts) end,
}

