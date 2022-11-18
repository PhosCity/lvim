local M = {}

-- toggle boolean word - true/false
-- https://github.com/whatsthatsmell/dots/blob/4cebed8818cc89b9e6f7a6935fb2c8b25300b499/public%20dots/vim-nvim/lua/joel/funcs.lua#L86
--
function M.toggle_bool(args)
	if args.word == "true" then
		vim.cmd([[norm ciwfalse]])
	elseif args.word == "True" then
		vim.cmd([[norm ciwFalse]])
	elseif args.word == "false" then
		vim.cmd([[norm ciwtrue]])
	elseif args.word == "False" then
		vim.cmd([[norm ciwTrue]])
	else
		print("Word under cursor needs to be 'true' or 'false")
	end
end

return M
