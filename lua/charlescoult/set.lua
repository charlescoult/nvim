

vim.opt.guicursor = ''

local tabsize = 3
vim.opt.tabstop = tabsize
vim.opt.softtabstop = tabsize
vim.opt.shiftwidth = tabsize
vim.opt.expandtab = true

vim.smartindent = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = '80'

vim.g.mapleader = ' '
vim.keymap.set( 'n', '<leader>pv', vim.cmd.Ex )
print('set')

-- Remaps

vim.keymap.set( 'v', 'J', ":m '>+1<CR>gv=gv" )
vim.keymap.set( 'v', 'K', ":m '<-2<CR>gv=gv" )

vim.keymap.set( 'n', 'J', 'mzJ`z' )
vim.keymap.set( 'n', '<C-d>', '<C-d>zz' )
vim.keymap.set( 'n', '<C-u>', '<C-u>zz' )
vim.keymap.set( 'n', 'n', 'nzzzv' )
vim.keymap.set( 'n', 'N', 'Nzzzv' )

vim.keymap.set( 'x', '<leader>p', "\"_dP" )

vim.keymap.set( 'n', '<leader>y', "\"+y" )
vim.keymap.set( 'v', '<leader>y', "\"+y" )
vim.keymap.set( 'n', '<leader>Y', "\"+Y" )

vim.keymap.set( 'n', '<leader>d', '\"_d' )
vim.keymap.set( 'v', '<leader>d', '\"_d' )

vim.keymap.set( 'n', 'Q', '<nop>' )

-- quickfix list
vim.keymap.set( 'n', '<C-k>', '<cmd>cnext<CR>zz' )
vim.keymap.set( 'n', '<C-j>', '<cmd>cprev<CR>zz' )
vim.keymap.set( 'n', '<leader>k', '<cmd>lnext<CR>zz' )
vim.keymap.set( 'n', '<leader>j', '<cmd>lprev<CR>zz' )

vim.keymap.set( 'n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r></gI<Left><Left><Left>' )
vim.keymap.set( 'n', '<leader>x', '<cmd>![ -x % ] && ( chmod -x %; echo unset ) || ( chmod +x %; echo set )<CR>', { silent = false })
