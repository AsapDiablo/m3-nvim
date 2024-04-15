return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "leoluz/nvim-dap-go",
  },
  config = function()
    local dap, dapgo, dapui = require("dap"), require("dap-go"), require("dapui")

    dapgo.setup()
    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<Leader>bt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>bc", dap.continue, {})
    vim.keymap.set("n", "<Cmd>8", dap.step_over, {})
    vim.keymap.set("n", "<Cmd>7", dap.step_into, {})
    -- vim.keymap.set("n", "<Leader>dt", dapgo.debug_test, {})
  end,
}
