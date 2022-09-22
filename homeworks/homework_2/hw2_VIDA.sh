#! bin/bash
#comando para sacar media de longitud de palabras en renglones impares y largo de renglones pares

shopt -s xpg_echo

echo "this is odd\nthis one is even \n 2222\nthis is also even\nthis one odd\n\n" | awk '{if ($0 ~ /^[0-9 ]+$/) {word_length=0; for(i=1; i <= NF; i++) word_length+=int($i); printf("Mean of numbers: %.2f\n", word_length/NF)} else if ($0 ~ /.*[a-zA-Z].*/) { if (! (NF%2)) {word_length=0; for(i=1; i <= NF; i++) word_length+=length($i); printf("Mean word length: %.2f\n", word_length/NF)} else {print length($((int(NF)/2)+1))}} else {print "ERROR"}}'
