# Kali-Mods

This repository is used to customize Kali Linux to my preferred configuration and standards.

## General Packages:

|Package: |Script: |Description:                                   |Install/Upgrade:                            |Links:                                                     |
|:------- |:------:|:--------------------------------------------- |:------------------------------------------ |:--------------------------------------------------------- |
|gdb      | 2025.4 |GNU Debugger                                   |`apt install gdb gdb-doc gdbserver libc-dbg`|[Project](https://sourceware.org/gdb/)                     |
|ghidra   | 2025.4 |Reverse Engineering Framework                  |`apt install ghidra`                        |[Project](https://github.com/NationalSecurityAgency/ghidra)|
|CyberChef| 2025.4 |The Cyber Swiss Army Knife                     |`apt install cyberchef`                     |[Project](https://github.com/gchq/CyberChef)               |
|pwntools | 2025.4 |Python Exploit Dev Toolkit                     |`apt install python3-pwntools`              |[Docs](https://docs.pwntools.com/en/stable/)               |
|pyftpdlib| 2025.4 |Python FTP server library                      |`apt install python3-pyftpdlib`             |[Docs](https://pypi.org/project/pyftpdlib/)                |
|jq       | 2025.4 |Carving JSON at the terminal                   |`apt install jq`                            |[Project](https://github.com/jqlang/jq)                    |
|ncat     | 2025.4 |Enhanced `nc`                                  |`apt install ncat`                          |[Project](https://nmap.org/ncat)                           |
|rlwrap   | 2025.4 |Readline wrapper at the terminal               |`apt install rlwrap`                        |[Project](https://github.com/hanslub42/rlwrap)             |
|seclists | 2025.4 |Collection of Wordlists                        |`apt install seclists`                      |[Project](https://github.com/danielmiessler/SecLists)      |
|peass-ng | 2025.4 |Privilege Escalation Awesome Scripts SUITE     |`apt install peass`                         |[Project](https://github.com/peass-ng/PEASS-ng)            |
|netexec  | 2025.4 |Network Service Exploitation Tool              |`apt install netexec`                       |[Project](https://github.com/Pennyw0rth/NetExec)           |
|exiftool | 2025.4 |Read and write meta info in files              |`apt install libimage-exiftool-perl`        |[Project](https://exiftool.org/)                           |
|pv       | 2025.4 |Monitor the progress of data through a pipe    |`apt install pv`                            |[Project](https://ivarch.com/p/pv)                         |
|xxd      | 2025.4 |Display HEX/Binary data at the terminal        |`apt install xxd`                           |[Info](https://linuxhandbook.com/xxd-command/)             |
|gobuster | 2025.4 |Brute Force Dir/File, DNS, Virtual Host, & More|`apt install gobuster`                      |[Project](https://github.com/OJ/gobuster)                  |
|ffuf     | 2025.4 |Fuzz Faster U Fool                             |`apt install ffuf`                          |[Project](https://github.com/ffuf/ffuf)                    |


## Local Copies of Common Tools/Utilities:

### PayloadAllTheThings
Documentation: [https://swisskyrepo.github.io/PayloadsAllTheThings/](https://swisskyrepo.github.io/PayloadsAllTheThings/)  
`git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git /usr/share/PayloadsAllTheThings/`

### Nishang (Offensive Powershell Framework)
Project: [https://github.com/samratashok/nishang](https://github.com/samratashok/nishang)  
`git clone https://github.com/samratashok/nishang.git /usr/share/nishang/`

## Tweaks:

### VIM Settings:
```bash
sudo -u kali rm -f /home/kali/.vimrc
sudo -u kali echo "filetype plugin on" >> /home/kali/.vimrc
sudo -u kali echo "syntax on" >> /home/kali/.vimrc
sudo -u kali echo "set number" >> /home/kali/.vimrc
sudo -u kali echo "set list" >> /home/kali/.vimrc
```

### Modify `ll` alias to show hidden files in zsh and bash:
```bash
sudo -u kali sed -i "s/^alias ll=.*/alias ll='ls -lah'/" /home/kali/.zshrc
sudo -u kali sed -i "s/^alias ll=.*/alias ll='ls -lah'/" /home/kali/.bashrc
```

## Considerations:
impacket  

