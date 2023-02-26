# `davnotdev`'s Neovim Config

Feel free to steal this and do whatever you want.

`git clone https://github.com/davnotdev/dotnvim ~/.config/nvim`

## About ChatCPT

This config includes ChatGPT which requires an OpenAI api key.
If you plan on using this, export `OPENAI_API_KEY`.

Otherwise, remove `jackMort/ChatGPT.nvim` from `lua/config/packer.lua` and
remove `after/plugin/chatgpt.lua`.

## Keybinds

| Key         | Action                     |
| ----------- | -------------------------- |
| `J`         | Scroll down by more        |
| `K`         | Scroll up by more          |
| `gs`        | Horizontal split           |
| `gv`        | Vertical split             |
| `gv`        | Vertical split             |
| `s`         | Hop by search              |
| `W`         | Hop by words               |
| `m`         | Tree hopper                |
| `<space>y`  | Copy to system clipboard   |
| `<space>qt` | Set random theme           |
| `<space>wh` | Go to left window          |
| `<space>wl` | Go to right window         |
| `<space>wj` | Go to bottom window        |
| `<space>wk` | Go to top window           |
| `<space>th` | Go to left tab             |
| `<space>tl` | Go to right tab            |
| `<space>qs` | Enable spell check         |
| `<space>qS` | Disable spell check        |
| `<space>qc` | Open ChatGPT prompt        |
| `<C-space>` | Open LSP completion        |
| `<space>ld` | See LSP diagnostics        |
| `<space>lD` | Goto LSP definition        |
| `<space>lk` | See Documentation          |
| `<space>la` | LSP code actions           |
| `<space>ln` | Auto format                |
| `<space>tt` | Open file tree             |
| `<space>pf` | Search files               |
| `<space>pb` | Search buffers             |
| `<space>ps` | Search for text            |
| `<space>lr` | List LSP references        |
| `<space>ls` | List LSP document symbols  |
| `<space>lw` | List LSP workspace symbols |
| `<space>ll` | List LSP diagnostics       |
