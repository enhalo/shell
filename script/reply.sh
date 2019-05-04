#!/bin/bash

# The default value when a variable is not supplied to read. 
# Alse applicable to select menus, but only supplies the item number
# of the variable chosen, not the value of the variable itself.

# REPLY is the default value for a 'read' command.

echo
echo -n "What is your favorite vegetable? "
read

echo "Your favorite vegetable is $REPLY."
#  REPLY holds the value of last "read" if and only if
#+ no variable supplied

echo
echo -n "What is your favortie fruit?"
read fruit
echo "Your favorite fruit is $fruit."
echo "but..."
echo "Value of \$REPLY is still $REPLY."
#  $REPLY is still set to its previous value because
#+ the varibale $fruit absorbed the new "read" value.

echo

exit 0
