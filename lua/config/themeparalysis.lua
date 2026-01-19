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
        'darkblue',
        'distill',
        'default',
        'embark',
        'everblush',
        'evergarden-fall',
        'evergarden-spring',
        'evergarden-winter',
        'everforest',
        'gruvbox',
        'github-monochrome-dark',
        'github-monochrome-rosepine',
        'github-monochrome-tokyonight',
        'github-monochrome-zenbones',
        'habamax',
        'iceberg',
        'jellybeans',
        'kimbox',
        'komau',
        'lunaperche',
        'materialbox',
        'meh',
        'melange',
        'miasma',
        'murphy',
        'nord',
        'rose-pine',
        'rose-pine-moon',
        'scheakur',
        'quiet',
        'retrobox',
        'sierra',
        'scheakur',
        'sunbather',
        'vague',
        'wildcharm',
        'xcodedarkhc',
        'oxocarbon',
    }

    local colorscheme = whitelisted[math.random(#whitelisted)]

    vim.g.background = 'dark'
    vim.cmd.colorscheme(colorscheme)

    print(colorscheme)
end)
