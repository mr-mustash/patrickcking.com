#!/bin/bash

if [[ ! -d ./public_temp ]]
then
    echo "Run "make -C hugo build_interum" first."
    exit 1
fi

for file in $(find ./public_temp -iname "*.html*" | egrep -v '^./public_temp/404.html|^./public_temp/blog/page/[0-9]+/index.html|^./public_temp/blog/index.html|^./public_temp/index.html|.sig$')
do
    relative_name=$(echo $file | cut -d'/' -f3-)
    echo $relative_name

    if [[ -f hugo/static/signatures/html/${relative_name}.sig ]]
    then
        echo "A a signature for $relative_name already exists. Comparing"
        if gpg --verify hugo/static/signatures/html/${relative_name}.sig ${file}
        then
            echo -e "Signature for ${relative_name} matches.\n"
        else
            echo -e "WARNING: Signature for ${relative_name} has changed. Please verify changes and generate a signature by hand.\n"
        fi
        continue
    fi

    # Makde directory if it doesn't exist yet.
    if [[ ! -d $(dirname "hugo/static/signatures/html/${relative_name}.sig") ]]
    then
        mkdir -p $(dirname "hugo/static/signatures/html/${relative_name}.sig")
    fi

    gpg --output hugo/static/signatures/html/${relative_name}.sig --detach-sig ${file}

    echo -e
done
