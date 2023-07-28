#!/bin/bash

# Function to print a separator line for better readability
print_separator() {
    echo "==========================================="
}

# Show "Developed by thoth2357" using Figlet and Lolcat
echo "Developed by thoth2357" | figlet -t -c | lolcat
# Show GitHub handle
echo "github.com/thoth2357" | figlet -t -c -k -f small | lolcat

# Ask for user information
read -p "Enter the new username: " USERNAME
read -p "Do you want to add $USERNAME to the sudo group? (y/n): " ADD_TO_SUDO
read -p "Enter the password for $USERNAME: " PASSWORD
read -p "Enter the preferred shell (e.g., /bin/bash): " PREFERRED_SHELL

# Create the user with the provided information
echo "Creating the user $USERNAME..."
useradd -m -s $PREFERRED_SHELL $USERNAME

# Set the password for the user
echo "$USERNAME:$PASSWORD" | chpasswd

# Add the user to the sudo group if requested
if [[ "$ADD_TO_SUDO" == "y" ]]; then
    echo "Adding $USERNAME to the sudo group..."
    usermod -aG sudo $USERNAME
fi

# Ask if the user wants to install Wakatime
read -p "Do you want to install Wakatime? (y/n): " INSTALL_WAKATIME

if [[ "$INSTALL_WAKATIME" == "y" ]]; then
    echo "Installing Wakatime..."
    # Install Wakatime (you may need to adjust the installation command based on your distribution)
    # For example, on Ubuntu/Debian:
    # apt-get update
    # apt-get install python3-pip
    # pip3 install wakatime
fi

# Change the shell for the new user
echo "Changing the shell for $USERNAME to $PREFERRED_SHELL..."
chsh -s $PREFERRED_SHELL $USERNAME

# Output necessary information
print_separator
echo "User $USERNAME has been created with the following details:"
echo "Username: $USERNAME"
echo "Home directory: /home/$USERNAME"
echo "Preferred shell: $PREFERRED_SHELL"
echo "Added to sudo group: $(if [[ "$ADD_TO_SUDO" == "y" ]]; then echo "Yes"; else echo "No"; fi)"
print_separator


# Instructions for setting up SSH access
echo "To set up SSH access for $USERNAME:"
echo "1. Generate an SSH key pair on your local machine (if you haven't already):"
echo "   ssh-keygen -t rsa -b 4096"
echo ""
echo "2. Copy the public key to the server using ssh-copy-id:"
echo "   ssh-copy-id -i /path/to/public_key.pub $USERNAME@server-ip"
echo ""
echo "Now you should be able to SSH into the server using the new user account:"
echo "   ssh $USERNAME@server-ip"
