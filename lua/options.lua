require "nvchad.options"

-- add yours here!
local g = vim.g
local o = vim.o

-- o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.number= true
g.gitblame_use_blame_commit_file_urls = true

-- git blame
vim.api.nvim_create_user_command("ToggleBlame", function(args)
	require("blame").toggle(args)
end, { nargs = "*" })

vim.api.nvim_create_user_command("EnableBlame", function(args)
	require("blame").enable(args)
end, { nargs = "*" })

vim.api.nvim_create_user_command("DisableBlame", function()
	require("blame").disable()
end, {})

-- go fmt and go imports
local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimports()
  end,
  group = format_sync_grp,
})

-- telescopre
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
