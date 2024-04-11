return {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
  		ensure_installed = {"vim", "lua", "vimdoc","go", "thrift", "proto"},
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
        -- 启用增量选择
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<CR>',
          node_incremental = '<CR>',
          node_decremental = '<BS>',
          scope_incremental = '<TAB>',
        }
      },
    },
}
