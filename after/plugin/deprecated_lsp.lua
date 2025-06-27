--[[
local lsp = require('lsp-zero')

vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>lD", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "<leader>lk", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "<leader>ln", function() vim.lsp.buf.rename() end)

lsp.preset("recommended")

lsp.ensure_installed({})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {
        error = "ERRRt",
        warn = "WARN",
        hint = "HINT",
        info = "INFO",
    },
    set_lsp_keymaps = false,
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    if client.name == "tsserver" then
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end

    --  Workaround for Unity
    if client.name == "omnisharp_mono" then
        client.server_capabilities.semanticTokensProvider = {
            full = vim.empty_dict(),
            legend = {
                tokenModifiers = { "static_symbol" },
                tokenTypes = {
                    "comment",
                    "excluded_code",
                    "identifier",
                    "keyword",
                    "keyword_control",
                    "number",
                    "operator",
                    "operator_overloaded",
                    "preprocessor_keyword",
                    "string",
                    "whitespace",
                    "text",
                    "static_symbol",
                    "preprocessor_text",
                    "punctuation",
                    "string_verbatim",
                    "string_escape_character",
                    "class_name",
                    "delegate_name",
                    "enum_name",
                    "interface_name",
                    "module_name",
                    "struct_name",
                    "type_parameter_name",
                    "field_name",
                    "enum_member_name",
                    "constant_name",
                    "local_name",
                    "parameter_name",
                    "method_name",
                    "extension_method_name",
                    "property_name",
                    "event_name",
                    "namespace_name",
                    "label_name",
                    "xml_doc_comment_attribute_name",
                    "xml_doc_comment_attribute_quotes",
                    "xml_doc_comment_attribute_value",
                    "xml_doc_comment_cdata_section",
                    "xml_doc_comment_comment",
                    "xml_doc_comment_delimiter",
                    "xml_doc_comment_entity_reference",
                    "xml_doc_comment_name",
                    "xml_doc_comment_processing_instruction",
                    "xml_doc_comment_text",
                    "xml_literal_attribute_name",
                    "xml_literal_attribute_quotes",
                    "xml_literal_attribute_value",
                    "xml_literal_cdata_section",
                    "xml_literal_comment",
                    "xml_literal_delimiter",
                    "xml_literal_embedded_expression",
                    "xml_literal_entity_reference",
                    "xml_literal_name",
                    "xml_literal_processing_instruction",
                    "xml_literal_text",
                    "regex_comment",
                    "regex_character_class",
                    "regex_anchor",
                    "regex_quantifier",
                    "regex_grouping",
                    "regex_alternation",
                    "regex_text",
                    "regex_self_escaped_character",
                    "regex_other_escape",
                },
            },
            range = true,
        }
    end

    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>lD", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>lk", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>ln", function() vim.lsp.buf.rename() end, opts)
    -- vim.keymap.set("n", "<leader>lf", function()
    --     vim.lsp.buf.format { async = true }
    -- end, opts)
end)

lsp.set_server_config({
    settings = {
        ["rust-analyzer"] = {
            completion = { autoimport = { enable = false } },
            check = { command = "clippy" },
            checkOnSave = true,

            workspace = { 
                symbol = { 
                    search = { 
                        limit = 48000,
                        kind = "all_symbols",
                    } 
                } 
            },
            len = {
                enable = true,
            },
            -- Maybe this line will cause issues?
            -- cargo = { allFeatures = true },
        },
        clangd = { arguments = { "-header-insertion=never" } },
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = false,
    signs = true,
    underline = true,
    severity_sort = true,
    float = true,
})

--  godot lsp
require 'lspconfig'.gdscript.setup { capabilities = require('cmp_nvim_lsp').default_capabilities() }
--  phpactor lsp
require 'lspconfig'.phpactor.setup {}
--  swift lsp
require 'lspconfig'.sourcekit.setup {
    capabilities = {
        workspace = {
            didChangeWatchedFiles = {
                dynamicRegistration = true,
            },
        },
    },
}
]]--
