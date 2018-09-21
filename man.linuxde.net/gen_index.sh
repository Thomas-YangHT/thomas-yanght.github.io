#
#ls /man.yunwei.edu/*html|awk -F'/' '{print "<a href=\"http://"$2"/"$3"\">"$3" </a> </br>"}' >/man.yunwei.edu/index.html
#
set +x
COL=10
j=1
k=1
first=''
echo "<h1>Command Index</h1>"
echo "<table  BORDER=1 WIDTH='100%'>  "  
for  i in `ls *html|grep -v index|sed 's#.html##g'`
do 
      flag=0
      [[ $first != ${i:0:1} ]] && first=${i:0:1} && flag=1
      [[ $flag -eq 1 && $flag2 -eq 1 ]] && echo "</tr>" && flag2=0 && j=1
      [[ $flag -eq 1 ]] && echo "<tr><td><h2>$first</h2></td></tr>" 
      [[ $j -eq 1 ]] && echo "<tr>" 
      echo "<td><a href=\"$i.html\">$k-$i</a></td>" && flag2=1
      [[ $j -eq $COL ]] && echo "</tr>" && j=0
      ((j++)) 
      ((k++))
done
echo "</table>"  
