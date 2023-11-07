require('treesj').setup({
    -- Use default keymaps
    -- (<space>m - toggle, <space>j - join, <space>s - split)
    use_default_keymaps = false,

    -- Node with syntax error will not be formatted
    check_syntax_error = false,

    -- If line after join will be longer than max value,
    -- node will not be formatted
    max_join_length = 120,

    -- hold|start|end:
    -- hold - cursor follows the node/place on which it was called
    -- start - cursor jumps to the first symbol of the node being formatted
    -- end - cursor jumps to the last symbol of the node being formatted
    cursor_behavior = 'hold',

    -- Notify about possible problems or not
    notify = true,
    langs = {
        lua = require('treesj.langs.lua'),
        javascript = require('treesj.langs.javascript'),
        typescript = require('treesj.langs.typescript'),
        css = require('treesj.langs.css'),
        html = require('treesj.langs.html'),
        cpp = require('treesj.langs.cpp'),
        c = require('treesj.langs.c'),
        go = require('treesj.langs.go'),
        java = require('treesj.langs.java'),
        kotlin = require('treesj.langs.kotlin'),
        python = require('treesj.langs.python'),
        rust = require('treesj.langs.rust'),
        bash = require('treesj.langs.bash'),
        svelte = require('treesj.langs.svelte'),
        tsx = require('treesj.langs.tsx'),
        json = require('treesj.langs.json'),
        sql = require('treesj.langs.sql'),
        yaml = require('treesj.langs.yaml'),
        toml = require('treesj.langs.toml'),
    },

    -- Use `dot` for repeat action
    dot_repeat = true,
})

vim.keymap.set('n', [[<leader>bt]], vim.cmd.TSJToggle)
