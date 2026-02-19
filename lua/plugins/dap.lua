return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        config = function()
          require("dapui").setup()
        end,
      },
      "nvim-neotest/nvim-nio",
      "mfussenegger/nvim-dap-python",
    },
    keys = {
      { "<leader>du", function() require("dapui").toggle() end, desc = "Toggle DAP UI" },
      { "<leader>dc", function() require("dap").continue() end, desc = "DAP Continue" },
      { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "DAP Toggle Breakpoint" },
      { "<leader>dn", function() require("dap").step_over() end, desc = "DAP Step Over" },
      { "<leader>di", function() require("dap").step_into() end, desc = "DAP Step Into" },
      { "<leader>do", function() require("dap").step_out() end, desc = "DAP Step Out" },
    },
    config = function()
      require("configs.dap").setup()
    end,
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    dependencies = { "mfussenegger/nvim-dap", "nvim-telescope/telescope.nvim" },
    keys = {
      { "<leader>dtb", "<cmd>Telescope dap list_breakpoints<cr>", desc = "DAP List Breakpoints" },
      { "<leader>dtc", "<cmd>Telescope dap commands<cr>", desc = "DAP Commands" },
      { "<leader>dtv", "<cmd>Telescope dap variables<cr>", desc = "DAP Variables" },
      { "<leader>dtf", "<cmd>Telescope dap frames<cr>", desc = "DAP Frames" },
    },
    config = function()
      require("telescope").load_extension("dap")
    end,
  },
}
