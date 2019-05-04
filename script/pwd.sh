#!/bin/bash

# Working directory(directory you are in at the time)
# This is the analog to the pwd builtin command.

E_WRONG_DIRECTORY=85

clear # Clear the screen

TargetDirectory=~/Archive/run

cd $TargetDirectory
echo "Deleting stale files in $TargetDirectory."

if [ "$PWD" != "$TargetDirectory" ]
then	# Keep from wiping out wrong directory by accident.
  echo "Wrong directory!"
  echo "In $PWD, rather than $TargetDirectory!"
  echo "Bailing out!"
  exit $E_WRONG_DIRECTORY
fi

rm -rf *
rm .[A-za-z0-9]*	# Delete dotfiles.
# rm -f .[^.]* ..?* to remove filenames beginning with multiple dots.
# (shopt -s dotglob; rm -f *)  will also work.
# Thanks, S>C for pointing this out.

#  A filename ('basename') may contain all characters in the 0-255 range,
#+ except "/"
#  Deleting files begining with werid characters, such as-
#+ is left as an exercise.(Hint: rm ./-weirdname or rm -- -weirdname)
result=$?    # Result of delete operation. If successful= 0.

echo 
ls -al		#Any file left?
echo "Done."
echo "Old files deleted in $TargetDirectory."
echo

#Various other operations here, as necessary.

exit $result
