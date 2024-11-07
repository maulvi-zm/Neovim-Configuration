return {
    "olimorris/persisted.nvim",
    lazy = false, -- make sure the plugin is always loaded at startup
    config = true,
    opts = {
        save_dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
        use_git_branch = true,
    },

    keys = {
        {
            "<leader>qs",
            function()
                require("persisted").load()
            end,
            desc = "Restore Session",
        },
        {
            "<leader>qS",
            function()
                require("persisted").select()
            end,
            desc = "Select Session",
        },
        {
            "<leader>ql",
            function()
                require("persisted").load({ last = true })
            end,
            desc = "Restore Last Session",
        },
        {
            "<leader>qd",
            function()
                require("persisted").stop()
            end,
            desc = "Don't Save Current Session",
        },
        {
            "<leader>qt",
            function()
                vim.cmd("Telescope persisted")
            end,
            desc = "Open Session Management",
        },
    },
}
