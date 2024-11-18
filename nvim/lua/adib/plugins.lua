-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- If you are using Packer

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  } 
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }  
		use 'bluz71/vim-moonfly-colors' 
     use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  })

-- Or with configuration
use({
  'projekt0n/github-nvim-theme',
})
use 'mfussenegger/nvim-lint'
 use({
    "stevearc/conform.nvim",
  })
use 'nvim-tree/nvim-web-devicons'
use {'mfussenegger/nvim-dap'}
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
     {'williamboman/mason.nvim'},
     {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

use 'Yazeed1s/oh-lucy.nvim'
use("mellow-theme/mellow.nvim")
use 'AlexvZyl/nordic.nvim'
use 'rmehri01/onenord.nvim'
use 'tpope/vim-commentary'
use("bartekprtc/gruv-vsassist.nvim")
use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})
use{
  "madskjeldgaard/cheeky-snippets.nvim",
  requires = {
    "L3MON4D3/LuaSnip"
  },
  config = function()
    local cheeky = require("cheeky")
    cheeky.setup({
      langs = {
        all = true,
        lua = true,
        cpp = true,
        asm = true,
        cmake = true,
        markdown = true,
        supercollider = true
      },
    })
  end
}
use({ 'kepano/flexoki-neovim', as = 'flexoki' })
use {'nvim-treesitter/nvim-treesitter'}
use {'preservim/tagbar'}
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
use { "catppuccin/nvim", as = "catppuccin" }
use  "olrtg/nvim-emmet"
use "EdenEast/nightfox.nvim" -- Packer
use "echasnovski/mini.nvim"
use 'xiyaowong/transparent.nvim'
use {'nyoom-engineering/oxocarbon.nvim'}
use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})
  end)

