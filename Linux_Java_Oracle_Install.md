# linux-tips

## Install JAVA 9, 10
This file "Installer_jkd10",  a script for installing java 9 or 10.

for example :: $ sudo ./install_jdk10.sh jdk-10_linux-x64_bin.tar.gz

```bash
$ sudo ./install_jdk10.sh  <file_name.tar.gz>
```

## Bash file for a custom status git repository
File bashrc contains needed configs to change PS1. Add its content to the end of your ~/.bashrc

## Terminal case sensitive
This code needed code for case insensitive autocomplete. Create file whit this content to ~/.inputrc (you may need to create the file)

```bash
$ echo 'set completion-ignore-case on' > ~/.inputrc
```
