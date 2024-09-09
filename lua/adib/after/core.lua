local set = vim.opt
set.number = true
set.hlsearch = true
set.smartindent = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
vim.wo.relativenumber = true
set.expandtab = true
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.opt.cursorline = true
vim.opt.conceallevel = 1
vim.g.maplocalleader = " "
vim.cmd[[colo moonfly]]
vim.g.moonflyItalics = true 
vim.g.moonflyUnderlineMatchParen = true 
vim.cmd([[autocmd FileType * set formatoptions-=ro]])
vim.keymap.set('i', 'jj','<Esc>',{noremap = true})
vim.keymap.set('n', 'bp',':bprevious<cr>',{ noremap = true})
vim.keymap.set('n', '<leader>tt',':TagbarToggle<cr>',{ noremap = true})
 vim.keymap.set({ "n", "v" }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
vim.keymap.set('n', 'bn',':bnext<cr>',{ noremap = true})
vim.keymap.set("n", "<leader>e", ":Oil<cr>", {noremap = true})
vim.o.guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor'
vim.g.moonflyItalics = true 
vim.g.moonflyTerminalColors = true 
vim.g.moonflyTransparent = true
--vim.cmd[[hi Normal ctermbg=none guibg=non]]
vim.cmd[[let g:netrw_browsex_viewer="cmd.exe /C start"]]
vim.cmd[[:let g:netrw_browsex_viewer= "chrome"]]

