#!/bin/bash
#
# For obvious reasons this script should be executed as a root user.

# Use tar to make .tar file of /var/www/ directory and name it "current-date.tar"
cd /var/www/ && tar -czf /var/www/$(date).tar

# Use scp to copy the .tar file to your local machine
scp user@remotehost.com:$(date).tar /home/backup

# Use rm to delete the .tar file from the remote machine
rm -f /var/www/$(date).tar

# Print what just happened if it happened. If an error occured print a big scary error message.

# That's all folks.
