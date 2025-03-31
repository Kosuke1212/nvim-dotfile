local M = {}

M.toggle_diagflow = function ()
	local enabled_diagflow = require("diagflow").enable
	enabled_diagflow = not enabled_diagflow
end

return M
