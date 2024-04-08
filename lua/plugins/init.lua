return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
     "neovim/nvim-lspconfig",
     config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
   },
  --
  {
   	"williamboman/mason.nvim",
   	opts = {
   		ensure_installed = {
   			"lua-language-server",
        "gopls",
   		},
   	},
 },
   {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
  		ensure_installed = {"vim", "lua", "vimdoc","go"
   		},
   	},
   },
 {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
   opts = function ()
      return require "configs.null-ls"
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function (_, opts)
      require("dap-go").setup(opts)
    end
  },
  {
    "fatih/gomodifytags",
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function ()
      require("gopher").setup({
         commands = {
            go = "go",
            gomodifytags = "gomodifytags",
--            gotests = "~/go/bin/gotests", -- also you can set custom command path
            impl = "impl",
            iferr = "iferr",
        }})
    end,
    build = function()
    end,
  },
  {
  "FabijanZulj/blame.nvim"
  },
  {
    "cademichael/gotest.nvim",
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope.nvim',
    },
    config = function()
     -- defaults
     vim.g.gotest = {
        test_cmd = "go test -run ",
        preview_cutoff = 0,
        preview_width = 0.67
     }
     local goTest = require("gotest")
     vim.keymap.set("n", "<Space>tf", goTest.goFuncTester)
     vim.keymap.set("n", "<Space>tm", goTest.goModTester)
    end
  },
  {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup()
  end,
  event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },  
}
