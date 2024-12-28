#! /bin/bash

lightBlue='\033[1;34m'
lightPurple='\033[1;35m'
animal="small"

clear; tput cup $(($(tput lines)/3)); 
echo -e "${lightPurple}"
for file in "$@"
do
	fileName=$(basename "$file")

	if [ -d "$file" ]
	then
		echo -e " $fileName $(du -sh "$file" | awk '{print $1}')"
		continue
	fi

	case "${fileName##*.}" in
		sh) echo -e " $fileName $(du -sh "$file" | awk '{print $1}')" ;;
		svg|png|jpg|JPG) echo -e " $fileName $(du -sh "$file" | awk '{print $1}')" ;;
		*) echo -e "󰦨 $fileName $(du -sh "$file" | awk '{print $1}')";;
	esac
#done | cowsay -f "$animal" -n
done | cowsay -r -n
echo -e "${lightBlue}"
read -p "$(tput bold)Do you want to delete them?[Y/n]: " ans
[ "$ans" = "Y" ] &&
	for file in "$@"
	do
		rm -rf "$file"
	done
