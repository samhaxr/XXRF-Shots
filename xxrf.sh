#!/bin/bash
#!Coded by Suleman Malik
#!www.sulemanmalik.com
dt(){
rm /tmp/rs_temp
rm /tmp/_bck_
rm -r screenshots
}
function ln(){
echo -e "\033[0;31m=============================\033[0m"
}
function out(){
	echo -e "\033[0;31m==========================================================================\033[0m"
}
dt > /dev/null 2>&1
clear
echo '''
|\     /||\     /|(  ____ )(  ____ \
( \   / )( \   / )| (    )|| (    \/
 \ (_) /  \ (_) / | (____)|| (__    
  ) _ (    ) _ (  |     __)|  __)   
 / ( ) \  / ( ) \ | (\ (   | (      
( /   \ )( /   \ )| ) \ \__| )      
|/     \||/     \||/   \__/|/     

'''
echo -e '\033[0;32mby Suleman Malik\033[0m       v1.2'
ln
eval $init
echo ''
echo "Url: "
read url
echo " "
echo -e ""
len=$(wc -l < xsrfpd | sed 's/ //g')
elap=0
while read ssrf
do
echo $url$ssrf >> /tmp/_bck_
Cmd='curl --silent -I $url$ssrf --max-time 5 >> /tmp/rs_temp &'
elap=$(expr $elap + 1)
echo -ne "\033[0;31m[[+]\033[0m \033[0;33m Injecting Payload:\033[0m: $elap/$len\r"
eval $Cmd
done < xsrfpd
echo ' '
echo ' '
echo -e "\033[0;32m [+]\033[0m Loading..."
echo ' '
echo -e "\033[0;32m [+]\033[0m Taking screenshots"
scr=$(python WS -i /tmp/_bck_ -t5 )
echo ''
echo -e "\033[0;32m [+]\033[0m Screenshots saved successfully."
out
echo -e "\033[0;32mLoading Response\033[0m"
echo " "
sleep 1
disp6='cat /tmp/rs_temp | egrep -w --color -E "HTTP/1.1|200|302|301"'
eval $disp6
echo "Process Done! Hit return key to exit..."
read ext
dt > /dev/null 2>&1
out
