#!/bin/bash

set -xe


# Set the repository URL
REPO_URL="https://$1@dev.azure.com/soumosarkar297/voting-app/_git/voting-app"

# Define the temp repo path
TEMP_REPO="/tmp/temp_repo"

# Check if the directory already exists
if [ -d "$TEMP_REPO" ]; then
    echo "⚠️ Temp directory already exists. Removing it..."
    rm -rf "$TEMP_REPO"
fi


# Clone the git repository in the /tmp directory
if ! git clone "$REPO_URL" "$TEMP_REPO"; then
    echo "❌ Git clone failed. Check credentials or repository URL."
    exit 1
fi

# Navigate into the cloned respository directory
cd "$TEMP_REPO"


# Make changes to the Kubernetes Manifest file(s)
# For example, you want to change the image tag in a deployment.yml file
sed -i "s|image:.*|image: soumoazurecicd.azurecr.io/$3:$4|g" k8s-specifications/$2-deployment.yaml


# Check if there are changes to commit
if git diff --quiet; then
    echo "✅ No changes to commit."
else
    # Add the modified files
    git add .

    # Commit the changes
    git commit -m "Update Kubernetes manifest"

    # Push the changes back to the repository
    git push
fi


# Cleanup: remove the temporary cloned directory
rm -rf "$TEMP_REPO"

echo "✅ Changes pushed successfully!"
