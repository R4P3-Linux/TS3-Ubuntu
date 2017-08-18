#!/bin/bash
#Auto install TeamSpeak 3 on Ubuntu or Debian

echo "Detecting system architecture."

arch=$(arch)

if [ "${arch}" = "x86_64" ]; then
        sudo wget http://dl.4players.de/ts/releases/3.1.6/TeamSpeak3-Client-linux_amd64-3.1.6.run
        sudo chmod +x TeamSpeak3-Client-linux_amd64-3.1.6.run
        sudo ./TeamSpeak3-Client-linux_amd64-3.1.6.run
        cd TeamSpeak3-Client-linux_amd64
        sudo ln -s $PWD/ts3client_runscript.sh /usr/local/bin/teamspeak
        sudo rm -f ../TeamSpeak3-Client-linux_amd64-3.1.6.run
        rm -f $0
        
else
        sudo wget http://dl.4players.de/ts/releases/3.1.6/TeamSpeak3-Client-linux_x86-3.1.6.run
        sudo chmod +x TeamSpeak3-Client-linux_x86-3.1.6.run
        sudo ./TeamSpeak3-Client-linux_x86-3.1.6.run
        cd TeamSpeak3-Client-linux_x86
        sudo ln -s $PWD/ts3client_runscript.sh /usr/local/bin/teamspeak
        sudo rm -f ../TeamSpeak3-Client-linux_x86-3.1.6.run
        rm -f $0
fi

clear
echo "__________________________"
echo
echo
echo "!!! TeamSpeak 3 has been installed, thanks for visiting the R4P3.NET security forum. Usage: teamspeak"
echo
echo "__________________________"
