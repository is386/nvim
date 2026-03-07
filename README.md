# nvim

Personal Neovim configuration. Plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim) and install automatically on first launch.

## Clone

```sh
git clone git@github.com:is386/nvim.git ~/.config/nvim
```

## Install Package Managers

Install Cargo via [rustup](https://www.rust-lang.org/tools/install) and NPM via [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)

## Install Dependencies

| Package                       | Purpose                       |
| :---------------------------- | :---------------------------- |
| `neovim` (stable)             | editor                        |
| `git`, `make`, `gcc`, `unzip` | core build tools              |
| `ripgrep`                     | Telescope live grep           |
| `fd-find`                     | Telescope file finder         |
| `tree-sitter-cli`             | Treesitter parser compilation |
| `luarocks`                    | luarocks package manager      |
| `xclip`                       | clipboard support (Linux)     |
| `bat`                         | better previews               |

### Ubuntu / Debian

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install -y neovim git make gcc unzip ripgrep fd-find xclip bat luarocks

# Build blink.cmp (after first Neovim launch installs plugins)
cd ~/.local/share/nvim/lazy/blink.cmp && cargo build --release

# Install tree-sitter-cli via npm (apt version is too old)
npm install -g tree-sitter-cli
```

### macOS

```sh
brew install neovim git make gcc unzip ripgrep fd tree-sitter node bat
```

## Font

This config requires a **Nerd Font** for icons. The recommended font is **InconsolataGo Nerd Font**. [Download here](https://github.com/ryanoasis/nerd-fonts/releases)
