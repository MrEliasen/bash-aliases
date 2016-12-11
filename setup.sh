DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

{
    if ! [ -L ~/.bash_aliases ] && ! [ -f ~/.bash_aliases ]; then 
        ln -s "$DIR/bash_aliases" ~/.bash_aliases

        if ! [ -f ~/.bash_profile ]; then
            sudo touch ~/.bash_profile
        else
            echo -e "\n\n" | sudo tee -a ~/.bash_profile
        fi;

        if ! grep -q ". ~/.bash_aliases" ~/.bash_profile; then
            echo -e "if [ -L ~/.bash_aliases ]; then\n    . ~/.bash_aliases\nfi;" | sudo tee -a ~/.bash_profile
        fi;

        # Make it take effect immediately!
        . ~/.bash_aliases
     fi;
} &> /dev/null

# Just so I know it actual ran
echo "- Done!"