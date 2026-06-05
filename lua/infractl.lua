local M = {}

function M.setup()
    vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
        pattern = { "*.star", "i.yaml", "i.*.yaml" },
        callback = function(args)
            vim.lsp.start({
                name = "infractl",
                cmd = { "ya", "tool", "infractl", "lsp" },
                root_dir = vim.fs.dirname(
                    vim.fs.find({ "a.yaml", ".arcadia.root" }, { upward = true, path = args.file })[1]
                ),
            })
        end,
    })
end

return M
