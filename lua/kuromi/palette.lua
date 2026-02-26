local M = {}

M.palettes = {
	classic = {
		bg = "#0F0B14",
		bg2 = "#1A1325",
		fg = "#EDEAFF",
		com = "#7C6F9E",
		purple = "#9D4EDD",
		pink = "#FF4FA3",
		lilac = "#C77DFF",
		hotpink = "#FF2E88",
		red = "#FF3B6B",
		orange = "#FF8A3D",
		yellow = "#FFD166",
		green = "#2EE59D",
		cyan = "#35D6FF",
		blue = "#4D7CFF",
	},

	neon = {
		bg = "#0A0A0F",
		bg2 = "#140F1F",
		fg = "#F5F2FF",
		com = "#6A5C8F",
		purple = "#A020F0",
		pink = "#FF1493",
		lilac = "#B026FF",
		hotpink = "#FF007F",
		red = "#FF2D55",
		orange = "#FF7A18",
		yellow = "#FFE45E",
		green = "#00F5A0",
		cyan = "#00E5FF",
		blue = "#2D7DFF",
	},

	soft = {
		bg = "#120C1C",
		bg2 = "#1E1430",
		fg = "#E8E3FF",
		com = "#5E548E",
		purple = "#8338EC",
		pink = "#FF4D9D",
		lilac = "#CDB4FF",
		hotpink = "#FF2F92",
		red = "#FF4D6D",
		orange = "#FF9F1C",
		yellow = "#FFD6A5",
		green = "#4ADE80",
		cyan = "#22D3EE",
		blue = "#60A5FA",
	},

	gothic = {
		bg = "#07040C",
		bg2 = "#110B1A",
		fg = "#F0EBFF",
		com = "#50436B",
		purple = "#7B2CBF",
		pink = "#F72585",
		lilac = "#9D4EDD",
		hotpink = "#FF4FA3",
		red = "#FF2E63",
		orange = "#FF7F50",
		yellow = "#FFC857",
		green = "#2BD9A7",
		cyan = "#2EC4FF",
		blue = "#5B7CFF",
	},
}

function M.get(flavour)
	return M.palettes[flavour] or M.palettes.classic
end

return M
