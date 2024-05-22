# How to use

To install this for your neovim configuration

```bash
apt-get install -y build-essential neovim
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
git clone git@github.com:brablc/neovim-custom.git ~/.config/nvim/lua/custom
```

Then open up neovim and let everything install.

Restart Neovim and install the treesitter syntax

```
:TSInstall python
:TSInstall yaml
```

Your recent backups are in: `~/.local/share/neovim/ncbackups`.
