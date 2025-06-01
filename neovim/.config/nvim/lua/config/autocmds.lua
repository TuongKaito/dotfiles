vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Open the dashboard at the startup screen,
    -- consider enable nvim tree if dashboard is disabled
    vim.cmd("Dashboard")
  end
})

