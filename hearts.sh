#!/bin/bash
source colors.sh

# Print cute heart
HEART=(
'_░▒███████_______________' \
'░██▓▒_░▒▓██______________' \
'██▓▒░__░▒▓██___██████____' \
'██▓▒░____░▓███▓__░▒▓██___' \
'██▓▒░___░▓██▓_____░▒▓██__' \
'██▓▒░_______________░▒▓██' \
'_██▓▒░______________░▒▓██' \
'__██▓▒░____________░▒▓██_' \
'___██▓▒░__________░▒▓██__' \
'____██▓▒░________░▒▓██___' \
'_____██▓▒░_____░▒▓██_____' \
'______██▓▒░__░▒▓██_______' \
'_______█▓▒░░▒▓██_________' \
'_________░▒▓██___________' \
'_______░▒▓██_____________' \
'_____░▒▓██_______________' \
)

# Flag definitions. All must be 16 lines.
FLAG_RAINBOW=("${BLK}" "${BLK}" "${BRN}" "${BRN}" "${RED}" "${RED}" "${ORA}" "${ORA}" "${YEL}" "${YEL}" "${GRN}" "${GRN}" "${BLU}" "${BLU}" "${PUR}" "${PUR}")
FLAG_TRANS=("${LBL}" "${LBL}" "${LBL}" "${PNK}" "${PNK}" "${PNK}" "${WHT}" "${WHT}" "${WHT}" "${WHT}" "${PNK}" "${PNK}" "${PNK}" "${LBL}" "${LBL}" "${LBL}")
FLAG_ENBY=("${YEL}" "${YEL}" "${YEL}" "${YEL}" "${WHT}" "${WHT}" "${WHT}" "${WHT}" "${PUR}" "${PUR}" "${PUR}" "${PUR}" "${BLK}" "${BLK}" "${BLK}" "${BLK}")
ALL_BLACK=("${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}" "${BLK}")
ALL_GREEN=("${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}" "${GRN}")

# Pass 32 colors codes. 16 for foregrgound, then 16 for background.
print_heart() {
	params=("$@")
	for index in {0..15}; do
		background_index=$((index+16))
		LINE=$(printf "${HEART[$index]}" | sed "s/\(__*\)/${params[$background_index]}\1/g" | sed "s/\([░▒▓█][░▒▓█]*\)/${params[$index]}\1/g")
		echo -e "$LINE"
		echo -n "$(tput sgr0)"
	done
}
print_heart "${FLAG_ENBY[@]}" "${ALL_GREEN[@]}"
