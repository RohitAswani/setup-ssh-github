#!/bin/bash

# --- CHANGE THESE ---
GITHUB_EMAIL="your.email@example.com"
GITHUB_USERNAME="yourgithubusername"
# --------------------

# Generate a unique file name using timestamp (no seconds)
TIMESTAMP=$(date +%Y%m%d%H%M)
SSH_KEY_FILE="$HOME/.ssh/id_ed25519_github_$TIMESTAMP"

# Generate SSH key
echo "🔐 Generating SSH key for $GITHUB_EMAIL with timestamp $TIMESTAMP"
ssh-keygen -t ed25519 -C "$GITHUB_EMAIL" -f "$SSH_KEY_FILE" -N ""

# Configure SSH config
echo "🔧 Updating ~/.ssh/config"
cat <<EOF >> ~/.ssh/config

# GitHub Account
Host github.com
  HostName github.com
  User git
  IdentityFile $SSH_KEY_FILE
  IdentitiesOnly yes
EOF

chmod 600 ~/.ssh/config

# Show public key and instructions
echo ""
echo "✅ SSH key generated and configured."
echo "📋 Copy this key and add it to your GitHub SSH keys:"
echo "https://github.com/settings/keys"
echo ""
cat "$SSH_KEY_FILE.pub"

# Ask user to proceed with adding the SSH key to GitHub
read -p "Have you added the SSH key to GitHub? (yes/no): " user_input
if [ "$user_input" != "yes" ]; then
  echo "Please add the SSH key to GitHub and run the script again."
  exit 1
fi

# Test SSH connection
echo ""
echo "🔁 Testing SSH connection..."
ssh -T git@github.com
