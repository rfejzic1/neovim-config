-- Map leader to space
vim.g.mapleader = " "

-- Keymapping
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

require "user.options"

