#!/data/data/com.termux/files/usr/bin/bash
termux-setup-storage

apt update
apt install -y git zsh
git clone https://github.com/zyw271828/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1

mv "$HOME/.termux" "$HOME/.termux.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" --depth 1
mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="agnoster"' "$HOME/.zshrc"
echo "alias chcolor='$HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='$HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.zsh-autosuggestions" --depth 1
echo "source $HOME/.zsh-autosuggestions/zsh-autosuggestions.zsh" >> "$HOME/.zshrc"
echo "ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'" >> "$HOME/.zshrc"

chsh -s zsh

echo "oh-my-zsh install complete!\nChoose your color scheme now~"
$HOME/.termux/colors.sh

echo "Choose your font now~"
$HOME/.termux/fonts.sh

echo "Please restart Termux app..."

exit
