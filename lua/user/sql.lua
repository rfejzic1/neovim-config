local function setup()
  vim.g.db_ui_execute_on_save = 0


  vim.keymap.set({ 'n', 'v' }, "<leader>q", "<Plug>(DBUI_ExecuteQuery)", { desc = "Run SQL query" })
  vim.keymap.set({ 'n', 'v' }, "<leader>d", "<CMD>DBUIToggle<CR>", { desc = "Run SQL query" })

end

return {
  setup = setup,
}
