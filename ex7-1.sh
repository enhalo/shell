#!/bin/bash
(( 0 && 1 ))		#Logical And
echo $?     # 1	  ***
# And so ...
let "num = (( 0 && 1))"
echo $num   #0
# But ...
let "num = (( 0 && 1 ))"
echo $?     # 1   ***


(( 200 || 11))		#Logical OR
echo $?    #0	***
# ...
let "num = (( 200 || 11))"
echo $num  # 0	  ***


(( 200 | 11))		#Bitwise OR
echo $?			# 0     ***
# ...
let "num = (( 200 | 11))"
echo $num		# 203
let "num = (( 200 | 11))"
echo $?			# 0     ***

# The "let" construct returns the same exit status
#+ as the double-parentheses arithmetic expansion

#------------------------------------------------------------------------
# An if can test any comand. not just conditions enclosed within brackets.
#------------------------------------------------------------------------

# The very useful "if-grep" construct:
#------------------------------------
if grep -q Bash file
  then echo "File contaions at least one occurrence of bash."
fi

word=Linux
letter_sequence=inu
if echo "$word" | grep -q "$letter_sequence"
# The "-q" option to grep supresses output.
then
  echo "$letter_sequence found in $word"
else 
  echo "$letter_sequnece not found in $word"
fi


