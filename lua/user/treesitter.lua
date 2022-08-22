local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = { "lua", "go" },
	auto_install = true,
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true },
	autopairs = {
		enable = true,
	},
	context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

