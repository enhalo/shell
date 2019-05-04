#!/bin/bash
# arglist.sh
# Invoke this script with several arguments, such as "one two three" ...

E_BADARGS=85

if [ !-n "$1" ]
then
  echo "Usage: 'baseName $0' argument1 argument2 ect."
  exit $E_BADARGS
fi

echo

index=1		# Initialze count

echo "Listing args with \"\$*\":"
for arg in "$*"  # Doesn't work properly if "$*" isn't quoted.
do
  echo "Arg #$index = $arg"
  let "index+=1"
done		 # $* sees all arguments as single word.
echo "Entire arg lsit seen as single word."

echo

index=1		 # Reset count.
		 # what happens if you forget to do this?
echo "Listing args with \"\$@\":"
for arg in "$@"
do
  echo "Arg #$index = $arg"
  let "index+=1"
done		 # $@ sees arguments as separate words.
echo "Arg list seen as separate words."

echo

index=1		 # Reset count.
echo "Listing args with \$* (unquoted):"
for arg in $*
do
  echo "Arg #$index = $arg"
  let "index+=1"
done		 # Unqutoed $* sees arguments as separte words.
echo "Arg list seen as separte words."

exit 0


