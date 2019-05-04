#!/bin/bash
# casuloop.sh: Setting a varibale to the output of aloop.

variablel=`for i in 1 2 3 4 5
do 
  echo -n "$i"			#  The 'echo' command is critical
done`				#+ to command substitution here.

echo "varibalel = $variablel"   # variable = 12345


i=0
variable2=`while [ "$i" -lt 10 ]
do
  echo -n "$i"			# Again, the necessary 'echo'.
  let "i += 1"			# Incerment.
done`

echo "variable2 = $variable2"   # varibale2 = 0123456789

#  Demonstrates that it's possiable to embed a loop
#+ inside a variable declaration.

exit 0
