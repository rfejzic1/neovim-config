local function setup()
  -- [[ Basic Keymaps ]]

  -- Shorten function name
  local keymap = vim.api.nvim_set_keymap

  local opts = { noremap = true, silent = true }

  local term_opts = { silent = true }

  --Remap space as leader key
  keymap("", "<Space>", "<Nop>", opts)

  -- Modes
  --   normal_mode = "n",
  --   insert_mode = "i",
  --   visual_mode = "v",
  --   visual_block_mode = "x",
  --   term_mode = "t",
  --   command_mode = "c",

  -- Normal --
  -- Better window navigation
  keymap("n", "<C-h>", "<C-w>h", opts)
  keymap("n", "<C-j>", "<C-w>j", opts)
  keymap("n", "<C-k>", "<C-w>k", opts)
  keymap("n", "<C-l>", "<C-w>l", opts)

  -- Resize with arrows
  keymap("n", "<C-Up>", ":resize +2<CR>", opts)
  keymap("n", "<C-Down>", ":resize -2<CR>", opts)
  keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
  keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

  -- Navigate buffers
  keymap("n", "<S-l>", ":bnext<CR>", opts)
  keymap("n", "<S-h>", ":bprevious<CR>", opts)

  keymap("n", "<C-d>", "<C-d>zz", opts)
  keymap("n", "<C-u>", "<C-u>zz", opts)

  -- Visual --
  -- Stay in indent mode
  keymap("v", "<", "<gv", opts)
  keymap("v", ">", ">gv", opts)

  -- Move text up and down
  keymap("v", "<A-j>", ":m .+1<CR>==", opts)
  keymap("v", "<A-k>", ":m .-2<CR>==", opts)
  keymap("v", "p", '"_dP', opts)

  -- Visual Block --
  -- Move text up and down
  keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
  keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
  keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
  keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

  -- Terminal --
  -- Better terminal navigation
  keymap('t', '<esc>', [[<C-\><C-n>]], opts)
  keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  keymap('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  keymap('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  keymap('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)

  -- Nvim-Tree
  keymap("n", "<leader>E", ":NvimTreeToggle<cr>", opts)
  keymap("n", "<leader>e", ":NvimTreeFocus<cr>", opts)

  -- Keymaps for better default experience
  -- See `:help vim.keymap.set()`
  vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

  -- Remap for dealing with word wrap
  vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
  vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
end

return {
  setup = setup,
}

