#!/bin/bash
# Print a simple banner

source colors.sh

FLAG_RAINBOW=("${BLK}" "${BRN}" "${RED}" "${ORA}" "${YEL}" "${GRN}" "${BLU}" "${PUR}")
FLAG_TRANS=("${LBL}" "${PNK}" "${WHT}" "${PNK}" "${LBL}")
FLAG_ENBY=("${YEL}" "${WHT}" "${PUR}" "${BLK}")

print_heart() {
	for color ; do
		LINE=$(printf $color)
		echo -en $LINE
		echo -n "########"
		echo -n "$(tput sgr0)"
		echo
	done
}

print_heart "${FLAG_RAINBOW[@]}"
