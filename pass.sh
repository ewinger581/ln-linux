#!/bin/bash
# Are you a bum who doesn't want to do passwords manually? well here u go bum boy
awk -F: '($3>=1000){print $1}' /etc/passwd | sort > /root/userlist.txt
echo root >> /root/userlist.txt
sed '/nobody/d' /root/userlist.txt

for i in $(cat /root/userlist.txt)
do
echo $i 
echo "$i":Change to yo password stoopid | /usr/sbin/chpasswd
echo; echo "User $i's password changed!"
done
