return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            sections = {
                { section = "header" },
                { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 }, { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                { section = "startup" },
            },
            preset = {
                header = {
                    [[
//////////////////////////////////////////////////////////////////////
//██████╗  █████╗ ███╗   ██╗██████╗  █████╗ ██╗   ██╗██╗███╗   ███╗ //
//██╔══██╗██╔══██╗████╗  ██║██╔══██╗██╔══██╗██║   ██║██║████╗ ████║ //
//██████╔╝███████║██╔██╗ ██║██║  ██║███████║██║   ██║██║██╔████╔██║ //
//██╔═══╝ ██╔══██║██║╚██╗██║██║  ██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║ //
//██║     ██║  ██║██║ ╚████║██████╔╝██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ //
//╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ //
//////////////////////////////////////////////////////////////////////
                                                                           ]]
                },
            },
        },
        explorer = {
            enabled = false,
            replace_netrw = true, -- Replace netrw with the snacks explorer
        },
        image = {
            enabled = true,
            formats = {
                "png",
                "jpg",
                "jpeg",
                "gif",
                "bmp",
                "webp",
                "tiff",
                "heic",
                "avif",
                "mp4",
                "mov",
                "avi",
                "mkv",
                "webm",
                "pdf",
            },
            force = false, -- try displaying the image, even if the terminal does not support it
            doc = {
                -- enable image viewer for documents
                -- a treesitter parser must be available for the enabled languages.
                -- supported language injections: markdown, html
                enabled = true,
                -- render the image inline in the buffer
                -- if your env doesn't support unicode placeholders, this will be disabled
                -- takes precedence over `opts.float` on supported terminals
                inline = true,
                -- render the image in a floating window
                -- only used if `opts.inline` is disabled
                float = true,
                max_width = 80,
                max_height = 40,
            },
            convert = {
                notify = true,           -- show a notification on error
                math = {
                    font_size = "Large", -- see https://www.sascha-frank.com/latex-font-size.html
                    -- for latex documents, the doc packages are included automatically,
                    -- but you can add more packages here. Useful for markdown documents.
                    packages = { "amsmath", "amssymb", "amsfonts", "amscd", "mathtools", "physics", "siunitx", "mhchem" },
                },
            },
            cache = vim.fn.stdpath("cache") .. "/snacks/image",
            debug = {
                request = false,
                convert = false,
                placement = false,
            },
        },
        indent = { enabled = true },
        input = { enabled = true },
        picker = {
            hidden = true,
            ignored = true,
            sources = {
                explorer = {
                    hidden = true,
                    ignored = true,
                },
            },
        },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        scroll = { enabled = true },
        statuscolumn = {
            ---@class snacks.statuscolumn.Config
            ---@field left snacks.statuscolumn.Components
            ---@field right snacks.statuscolumn.Components
            ---@field enabled? boolean
            left = { "mark", "sign" }, -- priority of signs on the left (high to low)
            right = { "fold", "git" }, -- priority of signs on the right (high to low)
            folds = {
                open = false,          -- show open fold icons
                git_hl = false,        -- use Git Signs hl for fold icons
            },
            git = {
                -- patterns to match Git signs
                patterns = { "GitSign", "MiniDiffSign" },
            },
            refresh = 50, -- refresh at most every 50ms
        },
        -- words = { enabled = true },
    },
}
