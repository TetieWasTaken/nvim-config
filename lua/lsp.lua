local cmp = require("cmp")

local cmp_select = { behavior = cmp.SelectBehavior.Select }
 
        -- luasnip
        require("luasnip.loaders.from_vscode").lazy_load()
 
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<Enter>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-c>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'nvim_lsp_signature_help' },
                { name = 'buffer' },
                { name = 'calc' },
            }),
            experimental = {
                ghost_text = {
                    hl_group = 'Comment',
                },
            },
        })
 
        cmp.setup.filetype('gitcommit', {
            sources = cmp.config.sources({
                { name = 'cmp_git' },
            }, {
                { name = 'buffer' },
            })
        })
 
        cmp.setup.cmdline({ '/', '?' }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' }
            }
        })
 
        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = 'path' }
            }, {
                { name = 'cmdline' }
            })
        })
 
        -- Set up lspconfig.
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
 
        require('lspconfig')['tsserver'].setup { capabilities = capabilities }
  
 
        vim.diagnostic.config({
            virtual_text = { prefix = "" },
            update_in_insert = false,
            signs = true,
            underline = true,
            severity_sort = true,
            float = { border = "rounded" },
        })
 
        local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
 
        vim.keymap.set("n", "bf", vim.lsp.buf.format, {}) -- format buffer
        vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float) -- view diagnostics
