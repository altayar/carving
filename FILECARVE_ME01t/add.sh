#!/bin/bash
#sed '/6576/a cat h2txt/6576.txt >> h2txt/$header.txt' catchfooter.sh
sed -i "/cat h2txt\/\$d/i cat h2txt/$1.txt >> h2txt/\$header.txt" ${PWD}/catchfooter.sh

