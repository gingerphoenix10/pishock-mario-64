#!/bin/bash

#
# This code is mostly written by GitHub Copilot (and Pancake),
# so don't blame me if it doesn't work as expected.
#

# Configure shock (can only be the same as on the web interface)
MIN_INTENSITY=1
MAX_INTENSITY=20
DURATION=0.3
TIMEOUT=15 # in seconds
USERNAME="gingerphoenix10"

# Setup the environment:
# ```bash
# #!/bin/bash
# export PISHOCK_USER="Username"
# export PISHOCK_API_KEY="xxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx"
# export PISHOCK_CODE="FFFFFFFFFFF"
# ```
. shockenv.sh

# Check if mods folder exists
if [ ! -d "mods" ]; then
    echo "mods folder not found. Please make sure you have your copy of Super Mario 64 Coop DX installed to this directory."
    exit 1
fi
if [ ! -f "./mods/pishock.lua" ]; then
    echo "Installing the PiShock mod."
    printf -- "-- name: PiShock\n-- description: Shocks a PiShock shock collar any time you take damage.\n-- pausable: true\nprint(\"Local Player Damaged\")" >> ./mods/PiShock.lua
fi

# Launch the game
echo "Launching sm64coopdx..."
stdbuf -oL "./sm64coopdx" | while IFS= read -r line
do
    echo $line

    # Check stdout for 'Local Player Damaged'
    if [[ "$line" == *"Local Player Damaged"* ]]; then
        echo "goomba'd or smth"
        ./shockms.sh $(shuf -i $MIN_INTENSITY-$MAX_INTENSITY -n 1) $DURATION
    fi

done
