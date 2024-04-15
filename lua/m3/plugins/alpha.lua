return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      [[ ********************************************* ]],
      [[                                               ]],
      [[                    _ooOoo_                    ]],
      [[                   o8888888o                   ]],
      [[                   88" . "88                   ]],
      [[                   (| -_- |)                   ]],
      [[                   O\  =  /O                   ]],
      [[                ____/`---'\____                ]],
      [[              .'  \\|     |//  `.              ]],
      [[             /  \\|||  :  |||//  \             ]],
      [[            /  _||||| -:- |||||-  \            ]],
      [[            |   | \\\  -  /// |   |            ]],
      [[            | \_|  ''\---/''  |   |            ]],
      [[            \  .-\__  `-`  ___/-. /            ]],
      [[          ___`. .'  /--.--\  `. . __           ]],
      [[       ."" '<  `.___\_<|>_/___.'  >'"".        ]],
      [[      | | :  `- \`.;`\ _ /`;.`/ - ` : | |      ]],
      [[      \  \ `-.   \_ __\ /__ _/   .-` /  /      ]],
      [[ ======`-.____`-.___\_____/___.-`____.-'====== ]],
      [[                  `=---='                      ]],
      [[ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ]],
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC t", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fg", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
