#!/bin/bash

# command dd is used to read, convert and output data. Read file in.txt and convert to upper case and output to out.txt
dd if=in.txt of=out.txt conv=ucase

# command find is used to find files in a specified directory with some conditions. Find any files that changed in 1 day.
find . -ctime -1

# command file is used to identify file types. Find out what type of file is in.txt wiithout print filename
file -b in.txt

# command fuser is used to find out which process is using some files. Find out which process is using /etc/passwd file
fuser /etc/passwd

# command grep is used to find a qualified string in a file. Search on any filename contains in and print the line does not contain key word hello
grep -v hello *in*

# command host is used to find out the domain server's ip address. Find out www.google.com ip address
host www.google.com

# command ldd is used to find out the command used libraries. Find out the detailed information of command ls used libraries.
ldd -v /bin/ls

# command lsof is used to list the current opened files. List all files that opened by user zlian030
lsof -u zlian030

# command mount is used to hook a partition to a folder to associate it with that directory. Hook temp.iso file to directory /test to read it without burning on CD.
mount -o loop temp.iso /test

# command ps is used to display the status of the current process. Display all users' process infomation
ps -aux

# command pkill will send the specified signal to each process instead of listing them on stdout. Kill any process running by user zlian030 and force to log off user zlian030
pkill -kill -U zlian030

# command netstat is used to display network status. Displays all sockets in the network connection
netstat -a

# command renice is used to re-specify the priority of process. Re-specify the process with PID 971 priority to 1
renice 1 -p 971

# command rsync is used to synchronization tool that can quickly synchronize files between local and remote hosts. Backup local /etc/passwd to ip address 10.0.2.4 and rename to passwdBackup
rsync -av /etc/passwd 10.0.2.4:/passwdBackup

# command time is used to measure command running time. Find out time cost for running command ps -aux
time ps -aux

# command ssh is used to login remote machine and executing commands on the remote machine. Login the remote server sledge.cs.ucr.edu as user zlian030
ssh zlian030@sledge.cs.ucr.edu

# command stat is used to display inode details. Display full detail of inode details of all the files and directories at /etc/ directory
stat -f /etc/*

# command strace is used to trace the result of system call and signal transfer to analyze the application. Trace all the system call and signal transfer while running command cat in.txt
strace cat in.txt

# command uname is used to display machine infomation and OS infomation. Display all the machine infomation and OS infomation.
uname -a

# command wget is a download tool. Download this file and rename as test.c
wget -O test.c http://www.cs.ucr.edu/~vhill/cs183/proc.c


