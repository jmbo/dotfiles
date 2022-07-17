# dotfiles
Hi there! Here's a quick rundown of my usual personal configurations.

### Using Windows Subsystem for Linux (WSL)
For quite some time upon the genesis of WSL, files created in the Linux subsystem were not accesible from Windows Explorer. My workaround at the time was to create a symbolic link to a main directory in my C: mount that effectively acted as my WORKSPACE directory.
```console
user@host:~$ ln -s /mnt/c/Users/<user_name>/Documents/PROJECTS
```

For posterity, navigating your Linux subsystem files on explorer is quite simple after the Windows 10's April 2019 Update. All it take is running the explorer.exe command from your current directory to open a Windows Explorer window.
```console
user@host:~$ explorer.exe .
```

Alternatively, one can also navigate to the path: ```\\wsl$\<running_distro_name>\```

Example : ```\\wsl$\Ubuntu-18.04\```

### Configuration Files to place on $HOME
#### .bashrc
This is the standard .bashrc file with some customization at the bottom of the file. 

Notable changes:
* changes PS1 environment variable to that which is found in ~/scripts/PS1Setup.sh
  * Note: this PS1 is best used with a Solarized Dark color scheme
* configures SSH agent
* configures some custom shell colors

#### Other configuration files:
* .tmux.conf
* .vimrc
* .gdbinit

### VSCode Configuration/Settings
* keybindings.json settings.json
  * these files go on %APPDATA%\Code\User
* extensions_list.txt

### Windows Terminal
* settings.json
  * this file goes on echo ***\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState\
