# NvChad customization in mac

### Project Description

neovim customization based on [NvChad](https://github.com/NvChad/NvChad)
framework. Specifically for python and frontend development.

### Setup

```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && git clone https://github.com/ziimiin14/nvchad-custom-mac.git --depth 1 && cp -r nvchad-custom-mac/custom ~/.config/nvim/lua/custom && nvim
```
