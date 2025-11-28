#!/bin/sh

cp ./*/*.pdf ./

pandoc -s ./CV/*.tex -o ./cv.md --wrap=auto

sed -i'' -e 's/&//g' ./cv.md 

sed -i '' -e 's/\*\*Policy/\# Sreehari Pulickamadhom Sreedhar\n\*\*Policy/g' ./cv.md

sed -i'' -e 's/-\{2,\}//g' ./cv.md

sed -i'' -e 's/::: center//g' ./cv.md 

sed -i'' -e 's/::://g' ./cv.md 

sed -i'' -e 's/\\//' ./cv.md

sed -i'' -E 's/\*\*\(.*,\)\*\*/\#\# \1/g' ./cv.md 

rm ./cv.md-e