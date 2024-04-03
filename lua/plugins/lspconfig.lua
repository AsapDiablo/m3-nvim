
return  {
    "neovim/nvim-lspconfig",
    config = function()
   	require("lspconfig").gopls.setup {
    settings = {
      gopls = {
        ui = {
          completion = {
            usePlaceholders = true,
          },
        },
      },
    },
  }
    end,
}

