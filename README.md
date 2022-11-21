# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc_custom
This is my custom .bashrc configuration for Bash.

## Homework 3 Explanation
### Files in /.dotfiles directory
The make file has two targets: linux and clean. The linux target takes the clean target as a prerequisite. The linux target runs ./bin/linux.sh script and the clean target runs ./bin/cleanup.sh script.

### Files in /bin directory
The cleanup.sh script removes all of the changes that were made by the linux.sh script. This includes removing the .vimrc file in the home directory, removing a specific line from the .bashrc file in the home directory, and removing the .TRASH file created in the home directory.

The linux.sh script checks if the OS is Linux. If the OS is not Linux, then it outputs an error to the linuxsetup.log file and exits. The script creates the .TRASH directory in the home directory. It also overwrites and appends some contents to different files such as .vimrc and .bashrc.

The linuxsetup.log is a simple log file which contains messages.

### Files in /etc directory
The .bashrc_custom file contains a custom configuration for Bash. This changes alias and adds functionality for tar balling directories.

The .vimrc file contains a custom configurationf or Vim. This adds syntax, numbering of lines, autoindentation, a ruler, color, and some other features.
