#!/bin/bash
# fileinfo.sh
# a script of operating on a file list contained in a variable


FILES="/usr/sbin/accept
/usr/sbin/pwck
/usr/sbin/chroot
/usr/bin/fakefile
/sbin/badblocks
/sbin/ypbind"		#List of files you are curious about.
			# Threw in a dummy file, /usr/bin/fakefile.

echo

for file in $FILES
do
  
  if [ ! -e "$file" ]	# Check if file exists.
  then
    echo "$file does not exit."; echo
    continue		# On to next
   fi
  ls -l $file | awk '{ print $8 "	file size : " $5}'  # Print 2 fileds.
  whatis 'basename $file'  # File info.
  # Note that whatis database needs to have been set up for this to wrok.
  # To do this, ad root run /usr/bin/makewhatis.
  echo
done

exit 0

