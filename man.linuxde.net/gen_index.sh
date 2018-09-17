ls *html|awk '{print "<a href=\"http://man.yunwei.edu/"$1"\">"$1" </a> </br>"}' >index.html
