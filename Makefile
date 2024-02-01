vim_config:
    ln -s "$(realpath ".vimrc")" ~/.vimrc
git_config:
    ln -s "$(realpath ".gitconfig")" ~/.gitconfig
shell_aliases:
# Check what shell is being used
SH="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"
if [ -f "$ZSHRC" ]; then
	SH="$ZSHRC"
fi

echo '# -------------- dotfiles install ---------------' >> $SH
echo "source $(realpath ".shell_aliases")" >> "$SH"
