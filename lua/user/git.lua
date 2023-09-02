return function(bufnr)
  local gs = package.loaded.gitsigns

  local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = bufnr
    vim.keymap.set(mode, l, r, opts)
  end

  -- Navigation
  local function next_hunk()
    if vim.wo.diff then return ']h' end
    vim.schedule(function() gs.next_hunk() end)
    return '<Ignore>'
  end

  local function prev_hunk()
    if vim.wo.diff then return '[h' end
    vim.schedule(function() gs.prev_hunk() end)
    return '<Ignore>'
  end

  map('n', ']h', next_hunk, { expr = true, desc = "Next hunk" })
  map('n', '[h', prev_hunk, { expr = true, desc = "Previous hunk" })

  -- Actions
  local function stage_hunk()
    gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') }
  end

  local function reset_hunk()
    gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') }
  end

  local function blame_line()
    gs.blame_line { full = true }
  end

  local function diff_head()
    gs.diffthis('~')
  end

  map('n', '<leader>hs', gs.stage_hunk, { desc = "Stage hunk" })
  map('n', '<leader>hr', gs.reset_hunk, { desc = "Reset hunk" })
  map('v', '<leader>hs', stage_hunk, { desc = "Stage hunk" })
  map('v', '<leader>hr', reset_hunk, { desc = "Reset hunk" })
  map('n', '<leader>hS', gs.stage_buffer, { desc = "Stage buffer" })
  map('n', '<leader>hu', gs.undo_stage_hunk, { desc = "Unstage hunk" })
  map('n', '<leader>hR', gs.reset_buffer, { desc = "Reset buffer" })
  map('n', '<leader>hp', gs.preview_hunk, { desc = "Preview hunk" })
  map('n', '<leader>hb', blame_line, { desc = "Blame line" })
  map('n', '<leader>hd', gs.diffthis, { desc = "Diff" })
  map('n', '<leader>hD', diff_head, { desc = "Diff head" })

  -- Text object
  map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
end
