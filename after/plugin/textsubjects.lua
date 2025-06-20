require('nvim-treesitter-textsubjects').configure({
    prev_selection = ',',
    keymaps = {
        ['.'] = 'textsubjects-smart',
        [';'] = 'textsubjects-container-outer',
        ['\''] = 'textsubjects-container-inner',
    },
})
