#! /bin/bash
. ./conf.txt
sed -i -e "s/\[TSIG Key\]/$TSIGKEY/" /etc/threatstop.rpz.conf 
sed -i -e "s|\[TSIG Key secret\]|$TSIGSECRET|" /etc/threatstop.rpz.conf 
sed -i -e "s/\[ZONE\]/$ZONE/" /etc/threatstop.rpz.conf 
sed -i -e "s/\[ZONE\]/$ZONE/" /etc/threatstop.options.conf  
/bin/systemctl restart named
