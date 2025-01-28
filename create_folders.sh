#!/bin/bash


# Loop to create folders Day01 to Day90

for i in $(seq -w 1 90); do
  folder_name="Day$i"
  readme_file="$folder_name/README.md"
  
  # Create the folder if it doesn't exist
  if [ -d "$folder_name" ]; then
    echo "Folder $folder_name already exists, skipping."
  else
    mkdir "$folder_name"
    echo "Created folder: $folder_name"
  fi

  # Create README.md if it doesn't exist
  if [ -f "$readme_file" ]; then
    echo "README.md already exists in $folder_name, skipping."
  else
    echo "# Day $i" > "$readme_file"
    echo "README.md created in $folder_name"
  fi
done

echo "Folder and README creation process completed."

