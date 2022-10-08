local lsp_servers = require("v4zha.plugins.lsp.lspsrv").lsp_servers
local lsp_flags = {
    debounce_text_changes = 150
}

local status, lspconfig = pcall(require, 'lspconfig')

if not status then
    return
end

local function lsp_setup(lsp_server, opts)
    if not opts then
        opts = {
            on_attach = on_attach,
            flags = lsp_flags
        }
    end
    lspconfig[lsp_server].setup(opts)
end

for _, lsp_server in pairs(lsp_servers) do
    lsp_setup(lsp_server)
end

local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " "
}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {
        text = icon,
        texthl = hl,
        numhl = hl
    })
end

