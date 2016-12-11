DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if ! [ -L ~/.bash_aliases ] && ! [ -f ~/.bash_aliases ]; then 
    ln -s "$DIR/bash_aliases" ~/.bash_aliases

    {
        if ! [ -f ~/.bash_profile ]; then
            sudo touch ~/.bash_profile
        else
            echo -e "\n\n" | sudo tee -a ~/.bash_profile
        fi;

        if ! grep -q ". ~/.bash_aliases" ~/.bash_profile; then
            echo -e "if [ -L ~/.bash_aliases ]; then\n    . ~/.bash_aliases\nfi;" | sudo tee -a ~/.bash_profile
        fi;
    } &> /dev/null
 fi;

     if ! [ -L ~/.bash_aliases_extras ] && ! [ -f ~/.bash_aliases_extras ]; then
        echo "Do you want to install the 'third party' aliases? (y/n, default is no)";
        read thirdPty;

        if [ "$thirdPty" = "y" ] || [ "$thirdPty" = "Y" ]; then
            echo "Installing 'third party' aliases."
            ln -s "$DIR/bash_aliases_extras" ~/.bash_aliases_extras

            {
                if ! [ -f ~/.bash_profile ]; then
                    sudo touch ~/.bash_profile
                else
                    echo -e "\n\n" | sudo tee -a ~/.bash_profile
                fi;

                if ! grep -q ". ~/.bash_aliases_extras" ~/.bash_profile; then
                    echo -e "if [ -L ~/.bash_aliases_extras ]; then\n    . ~/.bash_aliases_extras\nfi;" | sudo tee -a ~/.bash_profile
                fi;
            } &> /dev/null
        else
            echo "Skipping 'third party' aliases."
        fi;
     fi;

    # Make it take effect immediately!
    . ~/.bash_profile

# Just so I know it actual ran
echo "- Done!"