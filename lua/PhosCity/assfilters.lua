local filters = {}

function filters.filter1(line, _)
	local ass = require("ass")
	return ass.set_line_dialogue(
		line,
		ass.get_line_dialogue(line)
			:gsub("%([^\\}]-%)", "")
			:gsub("^%s", "")
			:gsub("^\\N", "")
			:gsub("・", "")
			:gsub("（[^）]+）", "")
	)
end

function filters.filter2(line, _)
	local ass = require("ass")
	return ass.set_line_dialogue(line, "")
end

return filters
