# nvim

Personal Neovim configuration. Plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim) and install automatically on first launch.

## Clone

```sh
git clone git@github.com:is386/nvim.git ~/.config/nvim
```

## Font

This config requires a **Nerd Font** for icons. The recommended font is **InconsolataGo Nerd Font** (the standard Inconsolata variant has known spacing issues).

### Ubuntu / Debian

```sh
# Download and install InconsolataGo Nerd Font
curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/InconsolataGo.tar.xz
mkdir -p ~/.local/share/fonts
tar -xf InconsolataGo.tar.xz -C ~/.local/share/fonts
fc-cache -fv
rm InconsolataGo.tar.xz
```

Then configure your terminal (e.g. Ghostty: `font-family = InconsolataGo Nerd Font` in `~/.config/ghostty/config`).

### macOS (Homebrew)

```sh
brew install --cask font-inconsolata-go-nerd-font
```

Then configure your terminal the same way.

### Windows (WSL2)

Download `InconsolataGo.zip` from the [Nerd Fonts releases](https://github.com/ryanoasis/nerd-fonts/releases), extract the `.ttf` files, right-click and **Install for all users** on the Windows side, then set the font in Windows Terminal settings (Appearance > Font face > `InconsolataGo Nerd Font`).

## Dependencies

| Package                       | Purpose                          |
| :---------------------------- | :------------------------------- |
| `neovim` (stable)             | editor                           |
| `InconsolataGo Nerd Font`     | icons throughout the UI          |
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
