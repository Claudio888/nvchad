local dap = require("dap")
local dapui = require("dapui")

return {
  setup = function()
    -- Resolve python path dynamically
    local venv = os.getenv('VIRTUAL_ENV')
    local python_path = (venv and venv ~= '') and (venv .. '/bin/python') or 'python'
    
    require('dap-python').setup(python_path)
    
    -- Optional: Add a default configuration if it's still empty
    dap.configurations.python = dap.configurations.python or {
      {
        type = 'python',
        request = 'launch',
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
          return python_path
        end,
      },
    }

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>du', dapui.toggle, { desc = "Toggle DAP UI" })
    vim.keymap.set('n', '<leader>dc', dap.continue, { desc = "DAP Continue" })
    vim.keymap.set('n', '<leader>dn', dap.step_over, { desc = "DAP Step Over" })
    vim.keymap.set('n', '<leader>di', dap.step_into, { desc = "DAP Step Into" })
    vim.keymap.set('n', '<leader>do', dap.step_out, { desc = "DAP Step Out" })
        vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = "DAP Toggle Breakpoint" })
        vim.keymap.set('n', '<leader>dr', function() require('dap.ui.widgets').centered_floating_window(require('dap.ui.widgets').scopes) end, { desc = "DAP Show Scopes" })
      end,
    }
    