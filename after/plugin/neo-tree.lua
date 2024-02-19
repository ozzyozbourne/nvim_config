vim.keymap.set('n', [[<C-a>]], ':Neotree toggle<CR>')
require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    window = { position = "float" },
    filesystem = {
        follow_current_file = { enable = true, },
    },
})
