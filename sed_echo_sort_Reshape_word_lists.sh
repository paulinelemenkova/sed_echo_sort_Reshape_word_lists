#!/bin/sh
# Purpose: 1. Reshape text written in a row with commas (like this: "word1, word2, word3,...") to single column with each word in a row. 2. Sort words alphabetically.
# Initial file: my_utilites0.txt. Output file: my_utilites4.txt
#
# Unix prog: cat, sed, echo, sort
# look at file
cat my_utilites0.txt
#
# Step-1. replace commas after each word with empty spaces
sed 's/\,//g' my_utilites0.txt > my_utilites1.txt
# now look at file
cat my_utilites1.txt
#
# Step-2. replace space with \n (new line) to replace them vertically (in a column)
#
sed 's/ /\\n/g' my_utilites1.txt > my_utilites2.txt
# now look at file
cat my_utilites2.txt
#
# Step-3. use echo {\n} to reshape text from row: Ctr^A text from file my_utilites2.txt
echo -e "wc\nwhoami\nat\nbanner\ncat\nexit\ngrep\nhead\nhostname\njobs\nwhich\nwho\nkill\nless\nls\nman\nmkdir\nmktemp\nmv\npaste\npg\nps\npwd\nrm\nseq\nsort\nsudo\ntail\ntee\ntest\ntouch\nw\nchmod\ncd\ncp\ndate\ndiff\necho" > my_utilites3.txt
# now look at file
cat my_utilites3.txt
#
# Step-4. now sort words alphabetically
sort my_utilites3.txt > my_utilites4.txt
# look at file
cat my_utilites4.txt
