# 🔑 SSH Key Generator for GitHub

This is a simple **Bash script** that generates an **SSH key** for your GitHub account, configures your SSH setup, and tests the connection. You can use this script to easily set up SSH keys for secure GitHub access without needing to manually configure the keys.

## 🚀 Features

- **Generates a unique SSH key** for your GitHub account with a timestamp
- **Automatically updates the SSH config** to use the new key
- Provides easy-to-follow instructions for adding the key to GitHub
- **Tests the SSH connection** with GitHub to confirm the setup

## 📝 Prerequisites

Before running the script, ensure you have:

- A **GitHub account** (obviously! 😉)
- **SSH client** installed on your machine
- Basic knowledge of running bash scripts

## ⚙️ How to Use

1. **Download the script**:
   - Copy the script into a `.sh` file, e.g., `github-ssh-setup.sh`.

2. **Edit the script**:
   - Replace the following placeholder values with your own information:

     ```bash
     GITHUB_EMAIL="your.email@example.com"
     GITHUB_USERNAME="yourgithubusername"
     ```

3. **Run the script**:
   - Open your terminal, navigate to the folder containing the script, and run:

     ```bash
     bash github-ssh-setup.sh
     ```

4. **Follow the instructions**:
   - The script will guide you through generating the SSH key and adding it to your GitHub account.

5. **Test the connection**:
   - The script will attempt to connect to GitHub to verify your setup.

## 💡 Instructions after Running the Script

- After generating the SSH key, **copy** the public key (`id_ed25519_github_YYYYMMDDHHMM.pub`) and **add it to GitHub**:
  - Go to [GitHub SSH Keys](https://github.com/settings/keys).
  - Click on **New SSH Key**, paste your key, and save.

- Once added, the script will prompt you to confirm that you've added the key. If you haven't, it will remind you to do so.

## 🧑‍💻 Sample Output

🔐 Generating SSH key for your.email@example.com with timestamp 202504121234 🔧 Updating ~/.ssh/config

✅ SSH key generated and configured. 📋 Copy this key and add it to your GitHub SSH keys: https://github.com/settings/keys

-----BEGIN OPENSSH PRIVATE KEY----- <Your SSH key here> -----END OPENSSH PRIVATE KEY-----

Have you added the SSH key to GitHub? (yes/no):
.
.
.
🔁 Testing SSH connection...
Hi RohitAswani! You've successfully authenticated, but GitHub does not provide shell access.


=======================
## 🛠️ Troubleshooting
=======================

- If you receive a `Permission denied` error when testing the SSH connection, double-check that the SSH key has been added to GitHub and is correctly configured in your `~/.ssh/config`.

## 🥳 Enjoy Your New SSH Key for GitHub!

If you have any questions, feel free to raise an issue or contribute to the repo! 🚀

Happy coding! 💻✨
