#!/bin/bash
#Script to generate SSH key for GitHub
#In terminal run the following commands:
#chmod +x ssh.bash
#./ssh.bash

EMAIL="email" #Add email associated with GitHub account

# Generate SSH key
ssh-keygen -t ed25519 -C "$EMAIL" -f ~/.ssh/id_ed25519 -N ""

# Start the SSH agent
eval "$(ssh-agent -s)"

# Add the SSH key to the agent
ssh-add ~/.ssh/id_ed25519

echo "SSH key generated and added to the SSH agent."
echo "Public key:"
cat ~/.ssh/id_ed25519.pub

