return {
    cmd = {'ya', 'tool', 'infractl', 'lsp'},
    filetypes = {'infractl.yaml'},
    root_dir = vim.fs.dirname(
        vim.fs.find({"a.yaml", ".arcadia.root"}, {upward = true, path = vim.uv.cwd()})[1]
    ),
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            }
        }
    }
}
