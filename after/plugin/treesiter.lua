require'nvim-treesitter.configs'.setup{
    -- A list af parser names, or "all"
    ensure_installed = {"help", "javascript", "typescript", "c", "lua", "rust", "python"},

    -- Install parsers synchronously
    sync_install = false,

    -- Automatically install when entering buffer
    auto_install = true,

    highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
    },
}
