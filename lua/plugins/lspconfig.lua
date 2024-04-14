return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").gopls.setup({
      settings = {
        gopls = {
          completeUnimported = true,
          usePlaceholders = true,
          analyses = {
            unusedparams = true,
          },
        },
      },
    })
  end,
}
