#
#ls /man.yunwei.edu/*html|awk -F'/' '{print "<a href=\"http://"$2"/"$3"\">"$3" </a> </br>"}' >/man.yunwei.edu/index.html
#
set +x
COL=10
j=1
k=1
echo "<table  BORDER=1 WIDTH='100%'>  "  
for  i in `cd /usr/share/nginx/html/man.linuxde.net/;ls *html|sed 's#.html##g'`
do 
      [[ $j -eq 1 ]] && echo "<tr>" 
      echo "<td><a href=\"$i.html\">$k-$i</a></td>"
      [[ $j -eq $COL ]] && echo "</tr>" && j=0
      ((j++)) 
      ((k++))
done
echo "</table>"  
