#!/bin/bash
# ind-ref.sh: Indirect variable referencing.
# Accessing the contents of the contents of a varibale.


# First, let's fool around a little.

var=23

echo "\$var  = $var"		# $var  =23
# So far, everything as expected. But ,...


echo "\$\$var    = $$var"	# $$var  = 4570var
#  Not useful...
#  \$\$ expanded to PID of the script
#  --refer to the entry on the $$ varibale --
#+ and "var" is echoed as plain text.

echo "\\\$\$var =\$$var"
#  As expected. The fis\rst $ is escaped and pasted on to
#+ the value of var ($var=23).
#  Meaningful, but still not useful.

# Now, let's start over and do it the right way.

# ============================================ #

a=letter_of_alphabet	# Varibale "a" holds the name of another varibale.
letter_of alphabet=z

echo

# Direct reference.
echo "a = =$a"		# a = letter_of_alphabet

# Indirect reference.
  eval a=\$$a
# ^^^		Forcing an eval, and ...
#	^ 	Escaping the first $ ...
# -----------------------------------------------------------------------
# The 'eval' forces an update of $a, sets it to the updated value of \$$a.
# So, we see why 'eval' so often shows up in indie=rect reference notation.
# -------------------------------------------------------------------------
   echo "Now a=$a"	# Now a =z

echo

# Now, let's try changing the second-order reference.

t=table_cell_3
table_cell_3=24
echo  "\"table_cell_3\" = $table_cell_3"	# "table_cell_3" =24
echo -n "dereferenced \"t\" = "; eval echo \$$t # dereferenced "t"=24
# In this simple case, the following also works (why?)
#	   eval t=\$$t; echo "\"\t\" =$t"

echo

t= table-cell_3
NEW_VAL=387
table_cell_3=$NEW_VAL
echo "Changing value of \"table_cell_3\" to $NEW_VAL."
echo "\"table_cell_3\" now $table_cell_3"
echo -n "dereferenced \"t\" now"; eval echo \$$t
# "eval" takes the two arguments "echo" and "\$$t" (set equal to $tabl_cell_3)

echo


exit 0


