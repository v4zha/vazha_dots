local cmp = require 'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({
            select = true
        })
    }),
    sources = cmp.config.sources({{
        name = 'nvim_lsp'
    }, {
        name = 'luasnip'
    }}, {{
        name = 'buffer'
    }})
})

cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({{
        name = 'cmp_git'
    }}, {{
        name = 'buffer'
    }})
})

cmp.setup.cmdline({'/', '?'}, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {{
        name = 'buffer'
    }}
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({{
        name = 'path'
    }}, {{
        name = 'cmdline'
    }})
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lsp_servers = {'rust_analyzer', 'clangd', 'sumneko_lua'}

for _, lsp_server in pairs(lsp_servers) do
    require('lspconfig')[lsp_server].setup {
        capabilities = capabilities
    }
end
