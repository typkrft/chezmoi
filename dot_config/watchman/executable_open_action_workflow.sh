#!/usr/bin/env bash

OPEN=(alfredworkflow)
DELETE=(alfredworkflow)

# First argument is the name of the script
for FILE in "${@:1}"; do
  # Tell Us which File
  echo $FILE
 
  # Check if file extension is in OPEN array
  # Get extension with ${file##*.} everything after the first dot
  if [[ " ${OPEN[*]} " =~ " ${FILE##*.} " ]]; then
    echo Opening ${FILE}
    # Specific Opening Logic here
    open "$HOME/Downloads/$FILE"
  else
    echo Not Found
  fi

  # Delete File if in DELETE Array
  if [[ " ${DELETE[*]} " =~ " ${FILE##*.} " ]]; then
    echo Moving $FILE to trash
    trash "$HOME/Downloads/$FILE"
  fi

done

echo "Open Action(s) Completed"
