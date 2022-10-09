local opts = { leftpad = 48, rightpad = 48 }

local status_ok, centerpad = pcall(require, "centerpad")
if not status_ok then
	return
end

CenterMeMode = false

function CenterMe()
	if CenterMeMode == false then
		vim.cmd("only!")
		CenterMeMode = not CenterMeMode
	end
	centerpad.toggle(opts)
end
