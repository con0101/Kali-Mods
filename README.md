# Kali-Mods

This repository is used to customize Kali Linux to my preferred configuration and standards.

## General Packages:

|Package: |Script:|Description:|
|:------- |:-----:|:---------- |
|gdb      | v0.6  |GNU Debugger|
|ghidra   | v0.6  |Reverse Engineering Framework|
|pwntools | v0.6  |Python Exploit Dev Toolkit|
|pyftpdlib| v0.6  |Python FTP server library|
|jq       | v0.6  |Carving JSON Data from the terminal|
|ncat     | v0.6  |Enhanced `nc`|
|rlwrap   | v0.6  |readline wrapper|
|seclists | v0.6  |Collection of Wordlists|

## Tweaks:



### gdb:
> The GNU Debugger (GDB) is a portable debugger that runs on many Unix-like systems and works for many programming languages, including Ada, Assembly, C, C++, D, Fortran, Haskell, Go, Objective-C, OpenCL C, Modula-2, Pascal, Rust,[2] and partially others.

Install: `apt install gdb gdb-doc gdbserver libc-dbg`  

### ghidra
> Ghidra is a software reverse engineering (SRE) framework created and maintained by the National Security Agency Research Directorate. This framework includes a suite of full-featured, high-end software analysis tools that enable users to analyze compiled code on a variety of platforms including Windows, macOS, and Linux. Capabilities include disassembly, assembly, decompilation, graphing, and scripting, along with hundreds of other features. Ghidra supports a wide variety of processor instruction sets and executable formats and can be run in both user-interactive and automated modes. Users may also develop their own Ghidra extension components and/or scripts using Java or Python.

Install: `apt install ghidra`

### pwntools:
> pwntools is a CTF framework and exploit development library. Written in Python, it is designed for rapid prototyping and development, and intended to make exploit writing as simple as possible.  

Documentation: [https://docs.pwntools.com/en/stable/](https://docs.pwntools.com/en/stable/)  
Install: `apt install python3-pwntools`  

### pyftpdlib
> Python FTP server library provides a high-level portable interface to easily write very efficient, scalable and asynchronous FTP servers with Python. It is the most complete RFC-959 FTP server implementation available for the Python programming language.

Documentation: [https://pypi.org/project/pyftpdlib/](https://pypi.org/project/pyftpdlib/)  
Install: `apt install python3-pyftpdlib`  

### jq
> jq is a lightweight and flexible command-line processor for JSON data in Linux, often described as "sed for JSON".

Project: [https://github.com/jqlang/jq](https://github.com/jqlang/jq)  
Install: `apt install jq`  

### ncat
> Has additional features over `nc` such as SSL and proxy.

Install: `apt install ncat`


### rlwrap
> rlwrap is a small utility that runs any command, wrapping it with the GNU Readline library to provide persistent command history, file/command name completion, and line editing.

Install: `apt install rlwrap`  

### seclists
> SecLists is the security tester's companion. It's a collection of multiple types of lists used during security assessments, collected in one place. List types include usernames, passwords, URLs, sensitive data patterns, fuzzing payloads, web shells, and many more.

Project: [https://github.com/danielmiessler/SecLists](https://github.com/danielmiessler/SecLists)  
Install: `apt install seclists`



## Tweaks:
```
sudo -u kali rm -f /home/kali/.vimrc
sudo -u kali echo "filetype plugin on" >> /home/kali/.vimrc
sudo -u kali echo "syntax on" >> /home/kali/.vimrc
sudo -u kali echo "set number" >> /home/kali/.vimrc
sudo -u kali echo "set list" >> /home/kali/.vimrc
```
