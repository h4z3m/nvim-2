-- Create an autocommand group
local augroup = vim.api.nvim_create_augroup("MyAutoCmds", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
    group = augroup,
    callback = function()
        vim.cmd("Neotree")
        vim.cmd("wincmd p")
    end,
})

