#!/bin/bash

file_to_write=README.md

echo pixel-art > $file_to_write
echo ========= >> $file_to_write
echo >> $file_to_write

for F in $(find . -type f -not -path "./common/*"|grep -E 'png|gif')
do
    img_name=$(echo "$F" | cut -d '.' -f 2 | cut -d '/' -f 3)
    file_path=${F/.\//}
    echo "![$img_name]($file_path)" >> $file_to_write
done

exit 0

