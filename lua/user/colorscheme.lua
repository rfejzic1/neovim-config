local colorscheme = "substrata"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

if colorscheme == "gruvbox" then
	local gruvbox = require "gruvbox"
	gruvbox.setup {
		contrast = "soft",
		italic = false,
	}
end

if colorscheme == "substrata" then
	vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#fe9f7c" })
	vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#d2b45f" })
	vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#a0b9d8" })
	vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#5b5f71" })
end
