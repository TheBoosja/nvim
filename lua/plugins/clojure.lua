return {
	{
		"Olical/conjure",
		ft = { "clojure", "clojurescript", "edn" },
		dependencies = {
			{
				"PaterJason/cmp-conjure",
				config = function()
					local cmp = require("cmp")
					local config = cmp.get_config()

					table.insert(config.sources, {
						name = "buffer",
						option = {
							sources = {
								{ name = "conjure" },
							},
						},
					})

					cmp.setup(config)
				end,
			},
		},
		config = function()
			require("conjure.main").main()
			require("conjure.mapping")["on-filetype"]()
		end,
		init = function()
			vim.g["conjure#debug"] = true
		end,
	},

  {
    "PaterJason/nvim-treesitter-sexp",
  },
}
