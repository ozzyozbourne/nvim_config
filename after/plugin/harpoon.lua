vim.keymap.set("n", "<leader>hm", require('harpoon.mark').add_file)
vim.keymap.set("n", "<leader>hn", require('harpoon.ui').nav_next)
vim.keymap.set("n", "<leader>hb", require('harpoon.ui').nav_prev)
vim.keymap.set("n", "<leader>hv", ':Telescope harpoon marks<CR>')
vim.keymap.set("n", "<leader>e", require('harpoon.ui').toggle_quick_menu)

require('telescope').load_extension('harpoon')
