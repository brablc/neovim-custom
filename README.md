# Install

To install this for your neovim configuration

```bash
apt-get install -y build-essential neovim
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
git clone git@github.com:brablc/neovim-custom.git ~/.config/nvim/lua/custom
```

Then open up neovim and let everything install.

Restart Neovim and install the treesitter syntax

```
nvim -c ':TSInstall python dockerfile yaml strace' -c 'qa!'
```

Your recent backups are in: `~/.local/share/neovim/ncbackups`.

# FAQ

## Enable editing over scp:

```sh
# variant A
nvim -u NORC scp://hostname//root/.bashrc

# variant B
sed -E 's/^(\s+)("netrw)/\1-- \2/' .config/nvim/lua/plugins/configs/lazy_nvim.lua
nvim scp://hostname//root/.bashrc
```

## Diff

```sh
nvim -d FILE1 FILE2
```
