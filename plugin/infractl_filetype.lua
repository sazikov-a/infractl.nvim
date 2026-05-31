vim.filetype.add({
    pattern = {
        ['.*.star'] = 'infractl.yaml',
        ['i.yaml'] = 'infractl.yaml',
        ['i.*.yaml'] = 'infractl.yaml'
    }
})
