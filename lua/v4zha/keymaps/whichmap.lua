local whichmap = {
    ["b"] = {"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
             "Buffers"},
    ["e"] = {"<cmd>NvimTreeToggle<cr>", "NvimTree"},
    ["w"] = {"<cmd>w!<CR>", "Save"},
    ["q"] = {"<cmd>q!<CR>", "Quit"},
    ["c"] = {"<cmd>Bdelete!<CR>", "Close Buffer"},
    ["f"] = {"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
             "Find files"},
    ["F"] = {"<cmd>Telescope live_grep theme=ivy<cr>", "Live Grep"},
    ["g"] = {"<cmd>FloatermNew gitui<cr>", "GitUi"},
    ["t"] = {"<cmd>FloatermToggle<cr>", "Floaterm"},
    ["v"] = {"<cmd>FloatermNew vmod -a && $SHELL <cr>", "Vmod Loader"},
    p = {
        name = "Packer",
        c = {"<cmd>PackerCompile<cr>", "Compile"},
        i = {"<cmd>PackerInstall<cr>", "Install"},
        s = {"<cmd>PackerSync<cr>", "Sync"},
        S = {"<cmd>PackerStatus<cr>", "Status"},
        u = {"<cmd>PackerUpdate<cr>", "Update"}
    },

    l = {
        name = "LSP",
        a = {"<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        w = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format"},
        i = {"<cmd>LspInfo<cr>", "Info"},
        I = {"<cmd>LspInstallInfo<cr>", "Installer Info"},
        j = {"<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Next Diagnostic"},
        k = {"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", "Prev Diagnostic"},
        l = {"<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action"},
        q = {"<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix"},
        r = {"<cmd>lua vim.lsp.buf.rename()<cr>", "Rename"},
        s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
        S = {"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols"}
    },
    s = {
        name = "Search",
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        h = {"<cmd>Telescope help_tags<cr>", "Find Help"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        R = {"<cmd>Telescope registers<cr>", "Registers"},
        k = {"<cmd>Telescope keymaps<cr>", "Keymaps"},
        C = {"<cmd>Telescope commands<cr>", "Commands"}
    }
}

return {
    map = whichmap
}
