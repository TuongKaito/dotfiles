require("core.keymaps")
require("core.options")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	require("plugins.explorer"),
	require("plugins.colorscheme"),
	require("plugins.bufferline"),
  require("plugins.breadcrumb"),
	require("plugins.statusline"),
	require("plugins.treesitter"),
	require("plugins.autocomplete"),
	require("plugins.telescope"),
	-- Enable LSP requires `nvim-cmp` to be installed, ie., plugins.autocomplete
	require("plugins.lsp"),
  require("plugins.signature"),
	require("plugins.terminal"),
  require("plugins.indentbl"),
  require("plugins.autopairs"),
  require("plugins.ai-codes.codeium"),
  require("plugins/gits/diff"),
})

vim.cmd.colorscheme "catppuccin"

require("customs.options")
require("customs.keymaps")

