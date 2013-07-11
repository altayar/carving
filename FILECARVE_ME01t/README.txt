MADE BY Mohamed altayar 
defsec.ltd
irc.freenode.net ##Defsec

Just to speed up the combining procsess ,, its a "Pain in the ass" trying to without any tool

*jpeginfo must be installed
*Put the data files in the Data files

-apt-get install jpeginfo
-use catchfooter.sh to generate the images "./catchfooter.sh"
-check pics for the correct next part inside the pics folder "ex. image name is 1800"
-use add.sh to add next part "./add.sh 1800"
-catchfooter.sh to generate the images, and check the next part
-check ,add and repeat

#in case you added the wrong part use remn.sh to remove the part as "remn.sh Wrongpart"


7/11/2013 - functions add

*removed addfirst.sh , use add.sh instead
*${PWD} so no manually directry modofiding now
*auto mkdir for the folders when the script start