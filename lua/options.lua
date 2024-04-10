require "nvchad.options"

-- add yours here!

local function map(mode, lhs, rhs, opt)
  local options = { noremap = true}
  if opts then 
    options = vim.tbl_extend("force", options, opt)
  end 
  vim.api.nvim_set_keymap(mode, lhs, rhs, opt)
end

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
map('n', 'ff', "<cmd>Telescope find_files<cr>",{})
