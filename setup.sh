cwd=$(pwd)
rm -f ~/.cli_aliases
ln -s $cwd/cli_aliases ~/.cli_aliases

if ! [ -f ~/.zshrc ]; then
    sudo touch ~/.zshrc
fi;

if ! grep -q ". ~/.cli_aliases" ~/.zshrc; then
    # echo -e "\n\n. ~/.cli_aliases" | sudo tee -a ~/.zshrc
    echo -e "\n\n. ~/.cli_aliases" >> ~/.zshrc
fi;

# Make it take effect immediately!
. ~/.zshrc

# Just so I know it actual ran
echo "- Done!"
