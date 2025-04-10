if [[ "$1" == "down" ]]; then
    pamixer "$2" -d 1
else
    pamixer "$2" -i 1
fi
