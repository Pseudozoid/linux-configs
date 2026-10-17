return {
    {
        'akinsho/toggleterm.nvim', 
        version = "*", 
        opts = {
            direction = "float",

            start_in_insert = true,
            close_on_exit = true,
            persist_size = true,

            float_opts = {
                border = "rounded",

                width = function()
                    return math.floor(vim.o.columns * 0.7)
                end,

                height = function()
                    return math.floor(vim.o.lines * 0.7)
                end,
            },
        },
    },
}
