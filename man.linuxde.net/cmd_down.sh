for i in `cat cmd.txt`; do echo "wget man.linuxde.net/$i;mv $i $i.html"; done|sh
sed -i 's/man.linuxde.net/Thomas-YangHT.github.io/man.linuxde.net/g' *html
