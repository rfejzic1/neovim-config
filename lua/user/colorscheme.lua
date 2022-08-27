local colorscheme = "nordfox"

if colorscheme == 'gruvbox' then
	local gruvbox = require "gruvbox"
	gruvbox.setup {
		contrast = "soft",
		italic = false,
	}
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

