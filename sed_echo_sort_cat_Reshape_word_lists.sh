#!/bin/sh
# Purpose: 1. Reshape text written in a row with commas (like this: "word1, word2, word3,...") to single column with each word in a row. 2. Sort words alphabetically.
# Initial file: my_utilites0.txt. Output file: my_utilites4.txt
# Unix prog: sed, echo, sort, cat
#
# Step-1. replace comma+space after each word with \n
sed -e 's/\, /\\n/g' my_utilites0.txt > my_utilites1.txt
#
# Step-2. reshape wordlist vertically as a column in console: Ctr^A text from my_utilites1.txt
echo -e "chmod\ncd\ndate\ntest\ndiff\nat\nbanner\ncat\necho\nexit\nsort\nsudo\ngrep\nhostname\njobs\nkill\nless\nmkdir\nmktemp\npwd\nrm\nseq\ntail\nls\nman\ntee\ntouch\nw\nwc\nwhich\nwho\nwhoami\nmv\ncp\npaste\npg\nps\nhead"  > my_utilites2.txt
#
# Step-3. Sort words alphabetically
sort my_utilites2.txt > my_utilites3.txt
#
# Step-4. Look at file
cat my_utilites3.txt
