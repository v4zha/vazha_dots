local sumneko_lua = {
    name = "sumneko_lua",
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}


local lsp_servers = { 'clangd', sumneko_lua, 'rust_analyzer', 'taplo', 'html', 'tsserver', 'cssls', 'solidity','hls',
    'pyright' ,'dockerls','yamlls'}

return {
    lsp_servers = lsp_servers
}
