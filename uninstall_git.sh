#!/bin/bash

# Remove Git Packages
sudo apt-get remove --purge git -y

# Remove Git User and Group (if created)
# Note: By default, Git does not create specific users/groups on Ubuntu.
# If you've created specific users/groups related to Git, you can remove them manually.

# Delete Git Configuration Files
# Note: This will remove global configuration. Individual repository configurations won't be removed.
rm -rf ~/.gitconfig

# Clean Up Dependencies
sudo apt-get autoremove -y

echo "Git has been successfully uninstalled from your Ubuntu machine."
