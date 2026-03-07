# nvim

Personal Neovim configuration. Plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim) and install automatically on first launch.

## Clone

```sh
git clone git@github.com:is386/nvim.git ~/.config/nvim
```

## Dependencies

| Package                       | Purpose                          |
| :---------------------------- | :------------------------------- |
| `neovim` (stable)             | editor                           |
| `git`, `make`, `gcc`, `unzip` | core build tools                 |
| `ripgrep`                     | Telescope live grep              |
| `fd-find`                     | Telescope file finder            |
| `tree-sitter-cli`             | Treesitter parser compilation    |
| `nodejs`, `npm`               | TypeScript LSP, eslint, prettier |
| `xclip`                       | clipboard support (Linux)        |
| `bat`                         | better previews                  |

### Ubuntu / Debian

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install -y neovim git make gcc unzip ripgrep fd-find tree-sitter-cli nodejs npm xclip bat
```

### macOS (Homebrew)

```sh
brew install neovim git make gcc unzip ripgrep fd tree-sitter node bat
```

## Post-install

Open `nvim`. Lazy will automatically install all plugins and LSP servers. Run `:Lazy` to check status.
