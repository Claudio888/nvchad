return {
  "iamcco/markdown-preview.nvim",
  lazy = false,
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}

-- Depois de rodar, ou execute MarkDownPreviewInstall ou vá até o diretório instalado 
-- cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app e rode npm install 
-- POsteriormente MarkDownPreview no comando que abrira o navegador
