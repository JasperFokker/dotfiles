return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					-- Lua
					null_ls.builtins.formatting.stylua,

					-- PHP
					null_ls.builtins.formatting.phpcsfixer,
					-- null_ls.builtins.diagnostics.phpcs.with({
					--  		extra_args = { "--standard=Symfony" },
					-- }),
					-- null_ls.builtins.diagnostics.phpstan,

					-- Javascript
					null_ls.builtins.diagnostics.eslint.with({

						diagnostics_format = "[eslint] #{m}\n(#{c})",

						-- only enable eslint if root has .eslintrc.js

						condition = function(utils)
							return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
						end,
					}),
				},
			})

			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
