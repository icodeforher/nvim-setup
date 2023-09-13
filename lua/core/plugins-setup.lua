local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '2', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  --
  -- Themes
    use 'folke/tokyonight.nvim'
    use 'oxfist/night-owl.nvim'
    --nvim tree
    --use "nvim-tree/nvim-tree.lua"
    --use "nvim-tree/nvim-web-devicons"

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    use "nvim-treesitter/nvim-treesitter" 

    -- Telescope:  is a search tool
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- autopairs
    
    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"

    -- lua-line theme
    use "nvim-lualine/lualine.nvim"


      -- formatter
  
  -- lsp -> language server protocols
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "glepnir/lspsaga.nvim", branch = "main", -- for window like vscode
    "jose-elias-alvarez/typescript.nvim",
    "onsails/lspkind.nvim"
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
