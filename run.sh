#!/bin/bash

SHELL_PATH=$SHELL
SHE=$(basename $SHELL_PATH)
SHE+="rc"

PATH_TO_PALESTINE=$PWD
PATH_TO_PALESTINE+="/palestine"

merge(){

	#cp palestine /usr/share/palestine
	#echo "/etc/palestine created."
	
	echo "Shell: $SHE"
	echo "alias Spalestine='cat $PATH_TO_PALESTINE'" >> "$HOME/.$SHE"
	echo "you can now use palestine to show the flag"
	echo -e "you have to restart your shell or run \e[34msource ~/.$SHE rc"

}

cat palestine
printf "\nwant to add this to $SHELL? (y,n): "
read -n1 ans
echo ""
if [ $ans == "y" ]
then 
	merge
	echo -e "\e[32mdone :)"
else 
	echo -e "\e[31mgoodbye  :)"
fi
