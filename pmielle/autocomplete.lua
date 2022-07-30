local cmp = require "cmp"

cmp.setup{
	mapping = cmp.mapping.preset.insert({
		['<Down>'] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		['<CR>'] = cmp.mapping.confirm({select = true}),
		['<Esc>'] = cmp.mapping.abort()
	}),
	sources = {
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "buffer", keyword_length = 4 },
	},
}
