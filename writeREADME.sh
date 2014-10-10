#!/bin/bash

FILE_TO_WRITE=README.md

echo pixel-art > $FILE_TO_WRITE
echo ========= >> $FILE_TO_WRITE
echo >> $FILE_TO_WRITE

for F in `find . -type f|egrep 'png|gif'`
do
    IMG_NAME=`echo $F | cut -d'.' -f 2 | cut -d'/' -f 3`
    FILE_PATH=${F/.\//}
    echo "![$IMG_NAME]($FILE_PATH)" >> $FILE_TO_WRITE
done

exit 0

