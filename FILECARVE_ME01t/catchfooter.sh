#!/bin/bash
header=""
footer=""
dird="data"
dirh="h2txt"
dirp="pic"
next=""

filelist=$(file $dird/*)
echo $filelist
filename=$(file $dird/* | cut -d : -f 1| cut -d / -f 2)
echo $filename

for x in $filename; do

        xxd -p $dird/$x > h2txt/$x.txt
done

for f in $filename; do

	res=$(xxd $dird/$f | grep ffd9)
		if [[ -n $res ]]
		then
			echo "footer file is $f"
			footer=$f

		fi
done

for h in $filename; do

        res1=$(xxd $dird/$h | grep ffd8) 
                if [[ -n $res1 ]]
                then
                        echo "header file is $h"
			header=$h
			cp h2txt/$header.txt oheader/$header.txt
                fi
done

data=$(file h2txt/* | cut -d : -f 1| cut -d / -f 2 |grep -v $header |grep -v $footer)
echo $data
echo $footer
echo $header
for d in $data; do
	cp  oheader/$header.txt h2txt/$header.txt
      	cat h2txt/$d >> h2txt/$header.txt
	cat h2txt/$footer.txt >> h2txt/$header.txt
	xxd -r -p h2txt/$header.txt > pics/$d.jpeg
	huffman=$(jpeginfo -c pics/$d.jpeg | grep "bad Huffman code")
		if [[ -n $huffman ]]
		then
                	next=$d
		fi
	rm h2txt/$header.txt
#	rm pics/*
done
#for d in $data; do

#	cp  oheader/$header.txt h2txt/$header.txt
#        cat h2txt/$next >> h2txt/$header.txt
#	cat h2txt/$d >> h2txt/$header.txt
#        cat h2txt/$footer.txt >> h2txt/$header.txt
#        xxd -r -p h2txt/$header.txt > pics/$d.jpeg
#        jpeginfo -c pics/$d.jpeg | grep "bad Huffman code"
#done

