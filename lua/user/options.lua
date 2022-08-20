-- :help options
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 2
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0
vim.opt.fileencoding = "utf-8"
vim.opt.ignorecase = true
vim.opt.mouse = "a"
-- popup menu height (number of items shown; 0 for full height)
vim.opt.pumheight = 10
-- we don't need to see things like -- INSERT -- anymore
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.smartcase = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.number = true
-- signcolumn is used for git, lsp stuff and others...
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.sidescroll = 4
-- lines off top and bottom when scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.shortmess:append "c"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.termguicolors = true

