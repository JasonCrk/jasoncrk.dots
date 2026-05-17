return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
        local util = require("conform.util")

		require("conform").setup({
			format_on_save = {
				timeout_ms = 5000,
                lsp_format = "fallback",
			},
			formatters_by_ft = {
				c = { "clang-format" },
				cpp = { "clang-format" },
				lua = { "stylua" },
				go = { "gofmt" },
				javascript = { "prettier", "biome", stop_after_first = true },
				typescript = { "prettier", "biome", stop_after_first = true },
                javascriptreact = { "prettier", "biome", stop_after_first = true },
				typescriptreact = { "prettier", "biome", stop_after_first = true },
				elixir = { "mix" },
			},
			formatters = {
				["clang-format"] = {
					prepend_args = { "-style=file", "-fallback-style=LLVM" },
				},
                prettier = {
                    cwd = util.root_file({
                        ".prettierrc",
                        ".prettierrc.json",
                        ".prettierrc.js",
                        ".prettierrc.cjs",
                        ".prettierrc.mjs",
                        "prettier.config.js",
                        "prettier.config.cjs",
                        "prettier.config.mjs",
                    }),
                    require_cwd = true,
                },

                biome = {
                    cwd = util.root_file({
                        "biome.json",
                        "biome.jsonc",
                    }),
                    require_cwd = true,
                },
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({ bufnr = 0 })
		end)
	end,
}
