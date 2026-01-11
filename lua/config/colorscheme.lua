local M = {
    -- Your active colorscheme name
    colorscheme = "kanagawa",
    
    -- Colorscheme settings
    settings = {
        -- Common settings
        background = "dark", -- "dark" or "light"
        transparent =true, -- true for transparent background
        termguicolors = true, -- enable true colors
        
        -- Gruvbox specific settings
        gruvbox = {
            contrast = "medium", -- "hard", "medium", or "soft"
            italic = true,
            bold = true,
        },
        
        -- Add other colorscheme-specific settings here
        -- Example:
        -- catppuccin = {
        --     flavour = "mocha" -- latte, frappe, macchiato, mocha
        -- },
    }
}

function M.load()
    -- Enable termguicolors
    vim.opt.termguicolors = M.settings.termguicolors
    
    -- Set background
    vim.o.background = M.settings.background
    
    -- Apply colorscheme-specific settings
    if M.colorscheme == "gruvbox" then
        vim.g.gruvbox_contrast_dark = M.settings.gruvbox.contrast
        vim.g.gruvbox_italic = M.settings.gruvbox.italic and 1 or 0
        vim.g.gruvbox_bold = M.settings.gruvbox.bold and 1 or 0
    end
    
    -- Load the colorscheme
    local ok, _ = pcall(vim.cmd.colorscheme, M.colorscheme)
    if not ok then
        vim.notify('Could not load colorscheme "' .. M.colorscheme .. '"', vim.log.levels.ERROR)
        return
    end
    
    -- Apply transparency if enabled
    if M.settings.transparent then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end
end

-- Initialize colorscheme
M.load()

return M
