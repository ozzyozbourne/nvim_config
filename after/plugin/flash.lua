local wk = require("which-key")
wk.register({
        -- flash search
        l = {
            name = "flash",
            s = { function() require("flash").jump() end, "Flash Jump" },
            t = { function() require("flash").treesitter() end, "Flash Treesitter" },
            r = { function() require("flash").treesitter_search() end, "Flash Treesitter Search" },
        },
    },
    { prefix = "<leader>" })

require('flash').setup({})
