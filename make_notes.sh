#!/bin/bash
#

date_to_use=$1

if [[ -z "$date_to_use" ]]; then
	echo 'using todays date as date'
	date_to_use=$(date +'%Y-%m-%d')
else 
 	echo 'date given'
fi

echo 'date of meeting set to'
echo $date_to_use

new_dir=meetings/$date_to_use

mkdir $new_dir

cp notes_template.md $new_dir/notes.md

subl $new_dir/notes.md