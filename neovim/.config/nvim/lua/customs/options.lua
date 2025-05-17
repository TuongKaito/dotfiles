-- Highlight line number
vim.api.nvim_set_hl(0, "LineNrAbove", { fg="gray" })
vim.api.nvim_set_hl(0, "LineNr", { fg="gold", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg="gray" })
-- Highlight breadcrumb icons
vim.api.nvim_set_hl(0, "NavicText", { bold = true, fg="#c0bde4" })
vim.api.nvim_set_hl(0, "NavicSeparator", { fg="#e4d4be" })
vim.api.nvim_set_hl(0, "NavicIconsClass", { fg="#ff9800" })
vim.api.nvim_set_hl(0, "NavicIconsMethod", { fg="#9c27b0" })
vim.api.nvim_set_hl(0, "NavicIconsFunction", { fg="#9c27b0" })
vim.api.nvim_set_hl(0, "NavicIconsVariable", { fg="#2196f3" })


vim.diagnostic.config({
    virtual_text = false,
    float = { border = "rounded" },
})

