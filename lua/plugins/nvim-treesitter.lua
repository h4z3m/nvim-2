return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                -- System programming languages
                "c",           -- C language
                "cpp",         -- C++
                "go",          -- Go language
                "rust",        -- Memory-safe systems language

                -- Scripting languages
                "lua",         -- Lightweight scripting language
                "python",      -- General-purpose scripting language
                "javascript",  -- Web scripting language
                "typescript",  -- Typed JavaScript
                "bash",        -- Shell scripting
                "tcl",         -- Tool Command Language

                -- Web development
                "html",        -- HTML markup
                "css",         -- CSS styling
                "tsx",         -- TypeScript JSX
                "json",        -- JSON data format
                "xml",         -- XML markup
                "markdown",    -- Text formatting

                -- JVM languages
                "java",        -- JVM language
                "groovy",      -- Dynamic JVM language

                -- Configuration and data formats
                "yaml",        -- YAML configuration
                "toml",        -- TOML configuration
                "sql",         -- SQL database language
                "csv",         -- CSV data
                "dockerfile",  -- Docker configuration
                "ssh_config",  -- SSH configuration

                -- Editor-specific
                "vim",         -- Vim script
                "vimdoc",      -- Vim documentation
                "tmux",        -- Terminal multiplexer config
                "query",       -- TreeSitter query language

                -- Shell variants
                "bash",        -- Bourne Again Shell
                "fish",        -- Fish shell
            },
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  

            incremental_selection = {
                enable = true,
                keymaps = {
                    -- These keymaps are for jumping between tree nodes and scopes
                    init_selection = "<Enter>", -- set to `false` to disable one of the mappings
                    node_incremental = "<Enter>",
                    scope_incremental = false,
                    node_decremental = "<Backspace>",
                },
            },
        })
    end
}
