# Custom User Setup Script
The Custom User Setup Script is a Bash script designed to automate the process of creating a new user on a server with various customizations. It prompts the user for information such as the username, password, preferred shell, and whether to add the user to the sudo group. Additionally, it provides an option to install Wakatime, a time tracking tool, during the user setup.

The script is intended to simplify the user creation process, especially when setting up a new server or adding new users to an existing system. It can save time and reduce human errors that may occur during manual user creation and customization.


## Features
- Automated user creation with customizable options.
- Ability to set the user's preferred shell.
- Option to add the user to the sudo group for administrative privileges.
- Optional installation of Wakatime for time tracking and productivity monitoring.
- Automatic setup of SSH access for the new user, enabling passwordless login.

## Prerequsites

Before running the script, make sure you have the following prerequisites:

1. Bash: The script is written in Bash, so ensure that Bash is installed on your system.

2. figlet and lolcat: The script uses these tools to display custom ASCII art messages. You can install them using package managers like apt-get (Ubuntu/Debian) or yum (CentOS/RHEL).

## Usage
1. Clone the repository or download the custom_user_setup.sh script to your local machine.
```bash
git clone https://github.com/thoth2357/Custom_User_Setup_Script.git
```

2. Ensure the script has execute permissions:
```bash
chmod +x custom_user_setup.sh
```

3. Run the script
```bash
./user_setup.sh
```

4. The script will prompt you for the necessary information to create the new user. Follow the instructions and provide the requested details.

5. After running the script, the new user will be created, and the user's preferred shell and Wakatime (if installed) will be set up accordingly. Additionally, the script will automatically set up SSH access for the new user, enabling passwordless login.


## Notes
Please be cautious while providing sensitive information, such as passwords, during the script execution.

The Wakatime installation part of the script is commented out with placeholder instructions. You may need to modify it based on your distribution's package manager and Python package manager.

## License
This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).

## Author
[@thoth2357](https://www.github.com/thoth2357)