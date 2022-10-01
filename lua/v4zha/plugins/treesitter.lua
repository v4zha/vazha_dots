local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end
treesitter.setup({
    ensure_installed = {"c", "lua", "rust", "toml", "yaml", "markdown"},
    auto_install = true,
    highlight = {
        enable = true
    },
    autopairs = {
        enable = true
    },
    indent = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    }
})
