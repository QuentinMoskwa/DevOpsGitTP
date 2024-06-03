#!/bin/bash

# Define the crontab entry
CRON_ENTRY="*/5 * * * * /bin/bash /fileManagement.sh /root/folder/\$(date +\%Y-\%m-\%d)"

# Add the entry to crontab
(crontab -l; echo "$CRON_ENTRY" ) | crontab -