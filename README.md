# Kali-Mods

This repository is used to customize Kali Linux to my preferred configuration and standards.

## General Packages:

|Package: |Script:  |Description:|Install:|Links:|
|:------- |:-------:|:---------- |:--------|:------- |
|gdb      | 2025.4 |GNU Debugger                 |`apt install gdb gdb-doc gdbserver libc-dbg`||
|ghidra   | 2025.4 |Reverse Engineering Framework|`apt install ghidra`                        ||
|CyberChef| 2025.4 |The Cyber Swiss Army Knife   |`apt install cyberchef`                     |[Project](https://github.com/gchq/CyberChef)|
|pwntools | 2025.4 |Python Exploit Dev Toolkit   |`apt install python3-pwntools`              |[Docs](https://docs.pwntools.com/en/stable/)|
|pyftpdlib| 2025.4 |Python FTP server library    |`apt install python3-pyftpdlib`             |[Docs](https://pypi.org/project/pyftpdlib/)|
|jq       | 2025.4 |Carving JSON at the terminal |`apt install jq`                            |[Project](https://github.com/jqlang/jq)|
|ncat     | 2025.4 |Enhanced `nc`                |`apt install ncat`                          ||
|rlwrap   | 2025.4 |readline wrapper             |`apt install rlwrap`                        ||
|seclists | 2025.4 |Collection of Wordlists      |`apt install seclists`                      |[Project](https://github.com/danielmiessler/SecLists)|

## Local Copies of Common Tools/Utilities:

### Privilege Escalation Awesome Scripts SUITE new generation (PEASS-ng)
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
