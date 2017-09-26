#!/bin/bash
export PATH=/usr/bin:$PATH

# uncomment the line below to setup color tty
cd "$(dirname "$0")"; ./ttycolor.sh

# Create link to use sulb & npp in cygwin
if [ -d "/cygdrive/c/Program Files (x86)/Sublime Text 3" ]; 
then
    ln -s /cygdrive/c/Program\ Files\ \(x86\)/Sublime\ Text\ 3/sublime_text.exe /usr/local/bin/subl
else
    ln -s /cygdrive/c/Program\ Files/Sublime\ Text\ 3/sublime_text.exe /usr/local/bin/subl
fi

if [ -d "/cygdrive/c/Program Files (x86)/Notepad++" ]; 
then
    ln -s /cygdrive/c/Program\ Files\ \(x86\)/Notepad++/notepad++.exe /usr/local/bin/npp
else
    ln -s /cygdrive/c/Program\ Files/Notepad++/notepad++.exe /usr/local/bin/npp
fi

# install sage
install sage /bin
chmod +x /bin/sage

# update repo
sage update
sage install tree
sage install nano # add nano text editor for command line interface
# install python3 to use python3 cygwin
sage install python3
sage install ruby

python3 get-pip.py

# External Python3.5
# rm -f /usr/local/bin/pythonw
# ln -s /cygdrive/c/Python34/pythonw /usr/local/bin/python


# this script slows down mintty .. so disable it
if [ -d "/etc/profile.d/bash_completion.sh" ]; 
then
    mv -f /etc/profile.d/bash_completion.sh /etc/profile.d/bash_completion.sh.DISABLED 2> /dev/null
fi

# idle config for external python
# WHOAMI=`whoami`
# echo "alias idle='/cygdrive/c/Python34/python.exe C:\\\Python34\\\Lib\\\idlelib\\\idle.pyw -e'" >> /home/"$WHOAMI"/.bashrc
# echo "alias pythonw='pythonw -i'" >> /home/"$WHOAMI"/.bashrc

echo "Cygwin init done"
read -n1 -r -p "Press any key to continue..." key
