#!/bin/sh

# Function to display usage information
usage() {
    echo "Usage: $0 [BRANCH]"
    echo "Downloads a setup file from the specified branch"
    echo "Default branch is 'main' if none provided"
}

# Get the branch parameter (defaults to main if empty)
BRANCH=${1:-main}

# URL for the setup file - modify this to match your actual URL pattern
SETUP_URL="https://raw.githubusercontent.com/chesspro13/Raspi-Status-Display/${BRANCH}/script/setup.sh"

# Download the setup file
echo "Downloading setup file from branch: ${BRANCH}"
echo "${SETUP_URL}"
curl -sSL "${SETUP_URL}" | bash

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Successfully downloaded setup file for branch ${BRANCH}"
else
    echo "Failed to download setup file for branch ${BRANCH}" >&2
    exit 1
fi

