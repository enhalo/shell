#!/bin/bash
# agram2.sh
# Example of nested command substitution

#  Uses "anagram" utility
#+ that is part of the author's "yawl" word list package.

E_NOAGS=86
E_BADARG=87
MINLEN=7

if [ -z "$1" ]
then
  echo "Usage $0 LETTERSET"
  exit $E_NOARGS		# Script needs a command-line argument
elif [ ${#1} -lt $MINLEN ]
then
  echo "Argument must have at least $MINLEN letters."
  exit $E_BADARG
fi


FILTER='.......'		# Must have at least 7 letters.
#	1234567
Anagrams=( $(echo ($anagram $1 | grep $FILTER)))
#	   $(	   $(  nested command sub.))
#	  (		array assigment		)

echo
echo "${#Anagrams[*]} &+ letter anagrams found"
echo
echo ${Anagrams[0]}	# First anagram.
echo ${Anagrams[1]}	# Second anagram.
			# Etc

#echo "${Anagrams[*}" # To lsit all the anagrams in single line ...

#  Look ahead to the Arrays chapter for enlightenment on
#+ what's going on here.

# See alse the agram.sh script fo an exercise in anagram finding.

exit $?
