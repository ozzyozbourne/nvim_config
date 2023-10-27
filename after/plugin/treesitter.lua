require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "bash",
        "cmake",
        "css",
        "cpp",
        "dockerfile",
        "elixir",
        "erlang",
        "gitignore",
        "go",
        "gosum",
        "html",
        "java",
        "json",
        "kotlin",
        "make",
        "proto",
        "heex",
        "regex",
        "sql",
        "toml",
        "typescript",
        "yaml",
        "zig",
        "rust",
        "haskell",
        "python",
    },

    sync_install = false,

    auto_install = true,

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}
