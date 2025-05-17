local opts = { noremap = true, silent = true }

local map = vim.keymap.set

-- continuous indentation
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- bufferline
map("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>bn", ":BufferLineMoveNext<CR>", opts)
map("n", "<leader>bp", ":BufferLineMovePrev<CR>", opts)
map("n", "<M-h>", ":BufferLineCloseLeft<CR>", opts)
map("n", "<M-l>", ":BufferLineCloseRight<CR>", opts)
map("n", "<M-k>", ":BufferLineCloseOthers<CR>", opts)
map("n", "<M-p>", ":BufferLineTogglePin<CR>", opts)
map("n", "<M-x>", function ()
	if pcall(function ()
		-- Move to next tab and delete last buffer
		vim.api.nvim_command("bp|bd#")
	end) then
	-- Error if there is one buffer
	else
		-- Delete both buffer and window
		vim.api.nvim_command("bd")
	end
end, opts)

-- terminal
map("n", "<M-h>", ":ToggleTerm direction=horizontal<CR>", opts)
map("n", "<M-v>", ":ToggleTerm direction=vertical<CR>", opts)
map("n", "<M-f>", ":ToggleTerm direction=float<CR>", opts)
map("n", "<leader>tt", ":ToggleTerm direction=tab<CR>", opts)
map("t", "<esc>", "<C-\\><C-n>", opts)

-- diagnostics
map("n", "<M-d>", vim.diagnostic.open_float, opts)

-- others
map("n", "<Esc>", "<cmd>noh<CR>")
