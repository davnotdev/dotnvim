vim.keymap.set("n", "<leader>qt", function()
    -- There are a few themes I hate!
    -- Also, I'm not sure how to get a list of colorschemes..
    -- ChatGPT doesn't know either.
    local whitelisted = {
        'afterglow',
        'alduin',
        'ayu',
        'catppuccin-macchiato',
        'catppuccin-mocha',
        'deep-space',
        'distill',
        'embark',
        'everforest',
        'gruvbox',
        'habamax',
        'iceberg',
        'jellybeans',
        'kimbox',
        'lunaperche',
        'materialbox',
        'meh',
        'melange',
        'nord',
        'scheakur',
        'shades-of-purple',
        'sierra',
        'sunbather',
        'tender',
        'xcodedarkhc',
        'everblush',
        'oxocarbon',
    }

    local colorscheme = whitelisted[math.random(#whitelisted)]

    vim.g.background = 'dark'
    vim.cmd.colorscheme(colorscheme)

    print(colorscheme)
end)
