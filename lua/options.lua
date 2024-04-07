require "nvchad.options"

-- add yours here!

local g = vim.g
local o = vim.o

-- o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.number= true
g.gitblame_use_blame_commit_file_urls = true

vim.api.nvim_create_user_command("ToggleBlame", function(args)
	require("blame").toggle(args)
end, { nargs = "*" })

vim.api.nvim_create_user_command("EnableBlame", function(args)
	require("blame").enable(args)
end, { nargs = "*" })

vim.api.nvim_create_user_command("DisableBlame", function()
	require("blame").disable()
end, {})

