return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	cmd = "NvimTreeToggle",
	lazy = true,
	keys = { "<leader>e" },
	config = function()
		require("nvim-tree").setup({
			view = {
				relativenumber = true,
				width = 35,
			},
			filters = {
				dotfiles = true,
				custom = { ".git", "node_modules", "__pycache__" },
				git_ignored = false,
			},
			disable_netrw = true,
			hijack_netrw = true,
			diagnostics = {
				enable = false, -- Disable LSP diagnostics in the tree
			},
		})

		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
	end,
}
