#!/bin/bash
#WHOAMI=$(echo `whoami` | sed 's/ /\\ /g')
WHOAMI="`whoami`"
mkdir /home/"$WHOAMI"

cp /etc/skel/.??* /home/"$WHOAMI"
cp ./.minttyrc /home/"$WHOAMI"
cp ./.dircolors /home/"$WHOAMI"
chmod u+rwx /home/"$WHOAMI"/.minttyrc
chmod u+rwx /home/"$WHOAMI"/.dircolors
echo "alias ls='ls --color=auto'" >> /home/"$WHOAMI"/.bashrc
echo "eval \`dircolors /home/\"$WHOAMI\"/.dircolors\`" >> /home/"$WHOAMI"/.bashrc
#for idle
# mkdir /home/"$WHOAMI"/.idlerc
# cp -r ./.idlerc/* /home/"$WHOAMI"/.idlerc/