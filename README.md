# atopile.vim

Vim syntax highlighting plugin for the [atopile](https://atopile.io/) hardware
description language.

## Installation

### Using Vim 8+ native package manager

```bash
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/markovejnovic/atopile.vim
```

### Using Packer.nvim (Neovim)

Add to your Packer configuration:

```lua
use 'markovejnovic/atopile.vim'
```

Then run `:PackerSync`

### Using Pathogen

```bash
cd ~/.vim/bundle
git clone https://github.com/markovejnovic/atopile.vim
```

### Using Vundle

Add to your `.vimrc`:

```vim
Plugin 'markovejnovic/atopile.vim'
```

Then run `:PluginInstall`

### Using vim-plug

Add to your `.vimrc`:

```vim
Plug 'markovejnovic/atopile.vim'
```

Then run `:PlugInstall`

## Usage

The plugin automatically activates when you open any file with the `.ato`
extension.

## Configuration

The plugin works out of the box with no configuration required. Colors will
follow your current Vim color scheme.

To customize highlighting groups, add to your `.vimrc`:

```vim
" Example: Make comments italic
highlight atoComment gui=italic

" Example: Change keyword color
highlight link atoKeyword Statement
```

## License

MIT License - see LICENSE file for details.

## Contributing

Contributions are welcome! Please feel free to submit issues and pull requests.
