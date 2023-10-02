-- Configuración de Prettier para CoC
vim.g.coc_global_extensions = {
    'coc-prettier',
    'coc-eslint'
}

-- Configuración específica para Prettier
vim.cmd('autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.json,*.html,*.css,*.scss,*.md,*.vue silent execute "CocCommand prettier.formatFile"')

