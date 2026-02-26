local M = {}

M.palettes = {

	-- 💜 Kuromi Classic
	classic = {
		bg = "#18122B",
		bg2 = "#231942",
		fg = "#F4D9FF", -- rosinha claro
		com = "#9F86C0",

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

	-- ⚡ Neon Kuromi
	neon = {
		bg = "#140F2D",
		bg2 = "#1F1545",
		fg = "#FFD6FF",
		com = "#8A7CA8",

		purple = "#B026FF",
		pink = "#FF1493",
		lilac = "#C77DFF",
		hotpink = "#FF007F",

		red = "#FF2D55",
		orange = "#FF7A18",
		yellow = "#FFE45E",
		green = "#00F5A0",
		cyan = "#00E5FF",
		blue = "#2D7DFF",
	},

	-- 🌸 Soft Kuromi Night
	soft = {
		bg = "#1E1433",
		bg2 = "#2A1E4A",
		fg = "#F2D5FF",
		com = "#A084CA",

		purple = "#8338EC",
		pink = "#FF4D9D",
		lilac = "#D0B3FF",
		hotpink = "#FF2F92",

		red = "#FF4D6D",
		orange = "#FF9F1C",
		yellow = "#FFD6A5",
		green = "#4ADE80",
		cyan = "#22D3EE",
		blue = "#60A5FA",
	},

	-- 😈 Dark Gothic Kuromi
	gothic = {
		bg = "#120B21",
		bg2 = "#1C1233",
		fg = "#F0D0FF",
		com = "#7A5C9E",

		purple = "#7B2CBF",
		pink = "#F72585",
		lilac = "#B983FF",
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
