#!/bin/bash

for file in $(find hugo/content -type f)
do
    relative_name=$(echo $file | cut -d'/' -f3-)

    if [[ -f hugo/static/signatures/markdown/${relative_name}.sig ]]
    then
        echo "A a signature for $relative_name already exists. Comparing"
        if gpg --verify hugo/static/signatures/markdown/${relative_name}.sig ${file}
        then
            echo -e "Signature for ${relative_name} matches.\n"
        else
            echo -e "WARNING: Signature for ${relative_name} has changed. Please verify changes and generate a signature by hand.\n"
        fi
        echo -e
        continue
    fi

    if grep -Fxq "draft: true" $file
    then
        echo "${relative_name} is a draft. Skipping."
        echo -e
        continue
    fi

    echo "Modifing ${relative_name} with the following text:"
    sign_string="\n---\nThis page's [markdown](https://raw.githubusercontent.com/mr-mustash/patrickcking.com/master/${file}}) can be verified with [this signature](/signatures/markdown/${relative_name}.sig) and it's HTML can be verified with [this signature](/signatures/html/{{< relref \"${relative_name}\" >}}/index.html.sig)."
    echo "${sign_string}"

    echo -e "\n${sign_string}" >> ${file}

    # Makde directory if it doesn't exist yet.
    if [[ ! -d $(dirname "hugo/static/signatures/markdown/${relative_name}.sig") ]]
    then
        mkdir -p $(dirname "hugo/static/signatures/markdown/${relative_name}.sig")
    fi

    gpg --output hugo/static/signatures/markdown/${relative_name}.sig --detach-sig ${file}

    echo -e
done
