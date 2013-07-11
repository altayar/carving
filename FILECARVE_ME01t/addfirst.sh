#!/bin/bash
#sed '/6576/a cat h2txt/6576.txt >> h2txt/$header.txt' catchfooter.sh
#cp  oheader/$header.txt h2txt/$header.txt
sed -i "/cp  oheader\/$header/a cat h2txt/$1.txt >> h2txt/\$header.txt" ${PWD}/catchfooter.sh
