# Kali-Mods

This repository is used to customize Kali Linux to my preferred configuration and standards.

## General Packages:

|Package: |Script:|Description:|Install:|Links:|
|:------- |:-----:|:---------- |:--------|:------- |
|gdb      | v0.6  |GNU Debugger                 |`apt install gdb gdb-doc gdbserver libc-dbg`||
|ghidra   | v0.6  |Reverse Engineering Framework|`apt install ghidra`                        ||
|pwntools | v0.6  |Python Exploit Dev Toolkit   |`apt install python3-pwntools`              |[Docs](https://docs.pwntools.com/en/stable/)|
|pyftpdlib| v0.6  |Python FTP server library    |`apt install python3-pyftpdlib`             |[Docs](https://pypi.org/project/pyftpdlib/)|
|jq       | v0.6  |Carving JSON at the terminal |`apt install jq`                            |[Project](https://github.com/jqlang/jq)|
|ncat     | v0.6  |Enhanced `nc`                |`apt install ncat`                          ||
|rlwrap   | v0.6  |readline wrapper             |`apt install rlwrap`                        ||
|seclists | v0.6  |Collection of Wordlists      |`apt install seclists`                      |[Project](https://github.com/danielmiessler/SecLists)|

## Tweaks:
```
sudo -u kali rm -f /home/kali/.vimrc
sudo -u kali echo "filetype plugin on" >> /home/kali/.vimrc
sudo -u kali echo "syntax on" >> /home/kali/.vimrc
sudo -u kali echo "set number" >> /home/kali/.vimrc
sudo -u kali echo "set list" >> /home/kali/.vimrc
```
