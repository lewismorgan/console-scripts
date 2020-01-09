#!/bin/bash
PATH=/usr/local/bin:${PATH}

DATE=$(date +%d-%m-%Y" "%H:%M:%S )
echo ""
echo "🕥 $DATE | Performing weekly tasks 🍺."

# Clean the system
clean

# Update the system
update

# Remove daily log file
rm -f ~/daily.log

echo 'Finished weekly update tasks' | terminal-notifier -title 'Updated' -subtitle 'Weekly' -execute 'code ~/.launchd' -sound default