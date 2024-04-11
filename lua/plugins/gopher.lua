return {
    "olexsmir/gopher.nvim",
    requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    ft = "go",
    config = function ()
      require("gopher").setup({
         commands = {
            go = "go",
            gomodifytags = "gomodifytags",
            gotest = "/Users/hupac/.gvm/pkgsets/go1.20/global/bin/gotests",
            impl = "impl",
            iferr = "iferr",
        }})
    end,
    build = function()
    end,
}
