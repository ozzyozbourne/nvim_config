vim.keymap.set('n', [[<leader>bl]], ':BufferLinePick<CR>')
vim.keymap.set('n', [[<leader>bc]], vim.cmd.BufferLineCloseOthers)
vim.keymap.set('n', [[<c-g>]], vim.cmd.BufferLineCycleNext)

require("bufferline").setup {
    options = {
        mode = 'buffers',
        -- diagnostics = 'coc',
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true,
            }
        },
    },
}
