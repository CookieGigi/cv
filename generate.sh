# en
rendercv render --output-folder-name ./en  CreusotGuillaume_CV_ENG.yaml

# fr
rendercv render --output-folder-name ./fr  CreusotGuillaume_CV.yaml

# application
#!/bin/bash

# Directory to loop through
DIRECTORY="./application/"

# Check if the directory exists
if [ -d "$DIRECTORY" ]; then
  # Loop through each file in the directory
  for FILE in "$DIRECTORY"/*; do
    # Check if it's a file (not a directory)
    if [ -f "$FILE" ]; then
      rendercv render --pdf-path ./application_output/$(echo $FILE | sed -e "s/yaml/pdf/g") $FILE 
    fi
  done
else
  echo "Directory $DIRECTORY does not exist."
fi
