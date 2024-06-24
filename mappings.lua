local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<F5>"] = { "<cmd>DapContinue<CR>" },
    ["<F10>"] = { "<cmd>DapStepOver<CR>" },
    ["<F11>"] = { "<cmd>DapStepInto<CR>" },
    ["<S-F11>"] = { "<cmd>DapStepOut<CR>" },
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    },
    ["<leader>dpa"] = {
      function()
        local args_str = vim.fn.input("Enter arguments (space-separated): ")
        local args = vim.split(args_str, " ")

        require("dap").run({
            type = "python",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            args = args, -- Pass user-provided arguments
        })
      end
    },
  }
}

M.clipboard_to_iterm = {
  v = {
    ["<leader>pi"] = {
      function()
        vim.cmd('normal! "iy')
        local selected_text = vim.fn.getreg('i')
        if not selected_text or selected_text == "" then
          print("No text selected or text is empty.")
          return
        end
        local command = "/bin/bash -c '~/.iterm2/it2copy'"
        local handle = io.popen(command, 'w')
        if not handle then
          print("Failed to execute command: " .. command)
          return
        end
        handle:write(selected_text)
        handle:close()
      end,
      desc = "Send selection to it2copy"
    }
  }
}

return M
