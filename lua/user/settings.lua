local function setup()
  -- [[ Setting options ]]
  -- See `:help vim.o`

  -- Disable netrw
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  -- Set highlight on search
  vim.o.hlsearch = false

  -- Make line numbers default
  vim.opt.number = true
  vim.opt.relativenumber = true

  vim.wo.wrap = false

  vim.opt.sidescroll = 4
  vim.opt.scrolloff = 8
  vim.opt.sidescrolloff = 8
  vim.opt.shortmess:append "c"
  vim.opt.splitright = true
  vim.opt.splitbelow = true
  vim.opt.termguicolors = true

  -- Enable mouse mode
  vim.o.mouse = 'a'

  vim.o.shiftwidth = 4
  vim.o.tabstop = 4
  vim.o.softtabstop = 4
  vim.o.expandtab = true

  -- Sync clipboard between OS and Neovim.
  --  Remove this option if you want your OS clipboard to remain independent.
  --  See `:help 'clipboard'`
  vim.o.clipboard = 'unnamedplus'

  -- Enable break indent
  vim.o.breakindent = true

  -- Save undo history
  vim.o.undofile = true

  -- Case insensitive searching UNLESS /C or capital in search
  vim.o.ignorecase = true
  vim.o.smartcase = true

  -- Keep signcolumn on by default
  vim.wo.signcolumn = 'yes'

  -- Decrease update time
  vim.o.updatetime = 250
  vim.o.timeout = true
  vim.o.timeoutlen = 300

  -- Set completeopt to have a better completion experience
  vim.o.completeopt = 'menuone,noselect'

  -- NOTE: You should make sure your terminal supports this
  vim.o.termguicolors = true
end

return {
  setup = setup
}
