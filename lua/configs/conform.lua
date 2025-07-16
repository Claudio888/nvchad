local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    css = { "prettier" },
    html = { "prettier" },
    terraform = { "terraform_fmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
