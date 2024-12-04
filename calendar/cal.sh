#!/bin/sh

calendar=$(cal -vm |sed '1d; s/^....//; s/^[[:space:]]*//; s/[[:space:]]*$//; s/[[:space:]]\+/ /g')

weekdays=("Mo" "Tu" "We" "Th" "Fr" "Sa" "Su")

# Loop through each line of the calendar
line_number=0
while IFS= read -r line; do
    # Split the line into individual days
    for day in $line; do
        # Assign the day to the corresponding weekday
        echo "$day ${weekdays[$line_number]}"
    done
    ((line_number++))
done <<< "$calendar"

echo "$calender"
