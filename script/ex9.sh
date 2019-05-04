#!/bin/bash
# ex9.sh

# Variables: assignment and substiution

a=375
hello=$a
# ^ ^

#-------------------------------------------------------------------------
# No space permitted on either side of = sign when initializing variables.
# what happens if there is a space?

# "VARIABlE =vale"
#
#% Script tries to run "value" command with
#+ the enviromental variable "VARIABLE" set to "".
#-------------------------------------------------------------------------


echo hello # hello
# Not a  variable reference, just the string "hello" ...

echo $hello # 375
#	^	This *is* a variable reference.
echo ${hello} # 375
#		Likewise a variable reference, as above.

# Quoting . . .
echo "$hello"	# 375
echo "${hello}" # 375

echo

hello="A B  C  D"
echo $hello   # A B C D
echo "$hello" # A B  C  D
# As we see, echo $hello  and  echo "$hello" give different results.
#======================================
# Qutoing a variable preserves whitespace
#======================================

echo

echo '$hello' # hello
#	^	^
# Varibale referencing disabled (escaped) by single quotes,
#+ unsetting it, although the end result is the same (see below).

# --------------------------------------------------------------

# It is permissible to set multiple variables on the same line,
#+ if separated by white space.
#  Caution, this may reduce legibaility, and may not be portable.

var1=21 var2=22 var3=23
echo
echo "var1=$var1  var2=$vae2  var3=$var3"

# May cause problems with legacy versions of "sh" . . .

# --------------------------------------------------------------

echo; echo

numbers="one two three"
#	    ^   ^
other_numbers="1 2 3"
#		^ ^
#  If there is whitespace embeded within a variable,
#+ then quotes are necessary.
#  other_numbers=1 2 3			# Gives an error message.
echo "numbers = $numbers"
echo "other_numbers = $other_numbers"   # other_numbers = 1 2 3
#  Escaping the whitespace alse works.
mixed_bag=2\ ---\ Whatever
#	    ^    ^ Space after escape (\)

echo "$mixed_bag"	  # 2 --- Whatever

echo; echo

echo "uninitialized_variable = $uninitialized_variable"
# Uninitialized variable has null value (no value at all!).
uninitialized_variable=   #  Declaring, but not initializing it --
			  #+ same as setting it to a null value, as above.
echo "uninitialized_variable = $uninitialized_variable"
			  # It still has a null value.

uninitialized_variable=23	#set it.
unset uninitialized_variable	# Unset it.
echo "uninitialized_varibale = $uninitialized_variable"
				# uninitialized_variable=
				# It still has a null value.
echo

exit 0
  
