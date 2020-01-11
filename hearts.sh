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

# Color definitions
BLK='\\033[0;30m'
BRN='\\033[0;90m' # This is color code for light black. Set to brown in terminal settings.
RED='\\033[0;31m'
ORA='\\033[38;5;208m'
YEL='\\033[38;5;226m'
GRN='\\033[0;32m'
BLU='\\033[0;34m'
PUR='\\033[0;35m'
LBL='\\033[38;5;32m'
PNK='\\033[38;5;13m'
WHT='\\033[1;37m'
NC='\\033[0m'

# Flag definitions. All must be 16 lines.
FLAG_RAINBOW=("${BLK}" "${BLK}" "${BRN}" "${BRN}" "${RED}" "${RED}" "${ORA}" "${ORA}" "${YEL}" "${YEL}" "${GRN}" "${GRN}" "${BLU}" "${BLU}" "${PUR}" "${PUR}")
FLAG_TRANS=("${LBL}" "${LBL}" "${LBL}" "${PNK}" "${PNK}" "${PNK}" "${WHT}" "${WHT}" "${WHT}" "${WHT}" "${PNK}" "${PNK}" "${PNK}" "${LBL}" "${LBL}" "${LBL}")
FLAG_ENBY=("${YEL}" "${YEL}" "${YEL}" "${YEL}" "${WHT}" "${WHT}" "${WHT}" "${WHT}" "${PUR}" "${PUR}" "${PUR}" "${PUR}" "${BLK}" "${BLK}" "${BLK}" "${BLK}")


print_heart_line() {
	TMP=$(printf "${1}" | sed "s/\(__*\)/$3\1/g" | sed "s/\([░▒▓█][░▒▓█]*\)/$2\1/g")
	echo -e "$TMP"
	echo -n "$(tput sgr0)"
}
print_heart() {
	params=("$@")
	for index in {0..15}; do
		background_index=$((index+16))
		print_heart_line "${HEART[$index]}" "${params[$index]}" "${params[$background_index]}"
	done
}
print_heart "${FLAG_ENBY[@]}" "${FLAG_RAINBOW[@]}"
