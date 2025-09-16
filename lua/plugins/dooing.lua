return {
  "atiladefreitas/dooing",
  lazy = false,
  config = function()
    -- Configuração opcional do plugin (caso queira definir algo)
    -- Por exemplo, definir o arquivo padrão de tarefas:
    vim.g.dooing_file = "~/todo.md"
  end,
  cmd = { "Dooing", "DooingToday", "DooingTasks" },  -- Comandos expostos pelo plugin
  ft = { "markdown", "text" },  -- Tipos de arquivos onde faz sentido carregar
}

