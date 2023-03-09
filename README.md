# `davnotdev`'s Neovim Config

Feel free to steal this and do whatever you want.

`git clone https://github.com/davnotdev/dotnvim ~/.config/nvim`

## About ChatGPT

This config includes ChatGPT which requires an OpenAI api key.
If you plan on using this, export `OPENAI_API_KEY`.

Otherwise, remove `jackMort/ChatGPT.nvim` from `lua/config/packer.lua` and
remove `after/plugin/chatgpt.lua`.

## Post Install Setup

Some packages require manual installation.

### Packer

Install with `:PackerInstall` and update with `:PackerUpdate` and `:PackerSync`

### Treesitter

You can either do `:TSInstall all` if you're lazy or manually select languages
from [here](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages).
Update with `:TSUpdate`

### Mason

LSPs, formatters, debug adapters are provided by Mason.
You can install them with `:Mason`.
I currently have the following installed:

#### C / C++

- `clangd`
- `cmake-language-server`
- `arduino-language-server`

#### C# / Unity

- `csharpier`
- `omnisharp-mono`

#### Rust

- `rust-analyzer`

#### Markdown

- `markdownlint`

#### Web

- `css-lsp`
- `html-lsp`
- `prettier`
- `typescript-language-server`
- `astro-lanuage-server`
- `svelte-language-server`
- `tailwindcss-language-server`

#### Miscellaneous

- `rnix-lsp`
- `yaml-fmt`
- `yaml-language-server`

## Keybinds

| Key         | Action                        |
| ----------- | ----------------------------- |
| `J`         | Scroll down by more           |
| `K`         | Scroll up by more             |
| `gs`        | Horizontal split              |
| `gv`        | Vertical split                |
| `gcc`       | Comment out                   |
| `s`         | Hop by search                 |
| `W`         | Hop by words                  |
| `m`         | Tree hopper                   |
| `<space>y`  | Copy to system clipboard      |
| `<space>b`  | Switch to alternate file      |
| `<space>qt` | Set random theme              |
| `<space>wh` | Go to left window             |
| `<space>wl` | Go to right window            |
| `<space>wj` | Go to bottom window           |
| `<space>wk` | Go to top window              |
| `<space>wH` | Resize window left            |
| `<space>wL` | Resize window right           |
| `<space>wJ` | Resize window down            |
| `<space>wK` | Resize window up              |
| `<space>w=` | Resize windows equally        |
| `<space>ws` | Set fixed resize for window   |
| `<space>wS` | Unset fixed resize for window |
| `<space>th` | Go to left tab                |
| `<space>tl` | Go to right tab               |
| `<space>to` | Open terminal below           |
| `<space>tO` | Open terminal to the right    |
| `<C-j>`     | Unfocus terminal              |
| `<space>qs` | Enable spell check            |
| `<space>qS` | Disable spell check           |
| `<space>qc` | Open ChatGPT prompt           |
| `<C-y>`     | Copy last ChatGPT Response    |
| `<C-c>`     | Close ChatGPT prompt          |
| `<C-d>`     | Scroll down in ChatGPT prompt |
| `<C-u>`     | Scroll up in ChatGPT prompt   |
| `<C-n>`     | New ChatGPT session           |
| `<C-o>`     | Open ChatGPT settings         |
| `<C-space>` | Open LSP completion           |
| `<space>ld` | See LSP diagnostics           |
| `<space>lD` | Goto LSP definition           |
| `<space>lk` | See Documentation             |
| `<space>la` | LSP code actions              |
| `<space>ln` | Auto format                   |
| `<space>tp` | Open file tree                |
| `<space>pf` | Search files                  |
| `<space>pb` | Search buffers                |
| `<space>ps` | Search for text               |
| `<space>lr` | List LSP references           |
| `<space>ls` | List LSP document symbols     |
| `<space>lw` | List LSP workspace symbols    |
| `<space>ll` | List LSP diagnostics          |
