local utils = require("utils")


return {
    mappings = {
        n = {
            ["<leader>f"] = utils.wrap_func("find_files")
        },
    },
    funcs = {
        find_files = {
            func = function()
                vim.cmd("Telescope find_files")
            end,
            desc = "Find files",
        },
    },
    plugins = {
        {
            "nvim-telescope/telescope.nvim",
            dependencies = {
                { "nvim-lua/plenary.nvim" },
                { "nvim-tree/nvim-web-devicons" },
            },
        },
    },
}
