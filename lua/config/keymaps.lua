vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostic in float" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "Format current file" })




vim.api.nvim_create_user_command('LspStatus', function()
    local clients = vim.lsp.get_active_clients()
    if #clients == 0 then
        print("No LSP clients running")
        return
    end
    
    for _, client in pairs(clients) do
        print(string.format(
            "LSP: %s, Root: %s, Settings: %s",
            client.name,
            client.config.root_dir or "no root",
            vim.inspect(client.config.settings or {})
        ))
    end
end, {})
