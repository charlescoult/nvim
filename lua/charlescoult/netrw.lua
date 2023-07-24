-- While in normal mode, pressing leader+p+v, execute Ex command (netrw)
vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
