return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
        require("nvim-tree").setup({
          -- 关闭文件时自动关闭
          auto_close = true,
          -- 不显示 git 状态图标
          git = {
            enable = true
          },
          sort = {
            sorter = "case_sensitive",
          },
          view = {
            width = 30,
          },
          renderer = {
            group_empty = true,
          },
          filters = {
            dotfiles = true,
          },
        })
        end
    },
}
