local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
    return
end

local keymap = vim.keymap

-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
    local opts = {noremap = true, silent = true, buffer = bufnr}

    -- set keybinds
    if client.name == "tsserver || ts_ls" then
        keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>")
    end
end

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["ts_ls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

typescript.setup({
    server = {
        capabilities = capabilities,
        on_attach = on_attach,
    }
})

lspconfig["ast_grep"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

