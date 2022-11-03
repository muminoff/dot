local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  -- themes
  use 'folke/tokyonight.nvim'
  use 'jaredgorski/fogbell.vim'
  use 'nvim-lualine/lualine.nvim'
  use 'tpope/vim-commentary'
  use 'is0n/fm-nvim'
  use 'fenetikm/falcon'
end)
-- vim.cmd[[colorscheme tokyonight-night]]
