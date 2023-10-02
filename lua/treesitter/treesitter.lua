require'nvim-treesitter.configs'.setup {
-- A list of parser names, or "all"
  ensure_installed = { "python", "json", "lua", "typescript", "javascript", "sql", "graphql", "css", "scss", "html" },
  autotag = {
      enable = true,
  },
  -- Install parsers sync
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
