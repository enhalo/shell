#!/bin/bash
# stupid-script-tricks.sh: Don't try this at home, folks.
# From "Stupid Script Rricks," Volume I.

#exit 99		### Comment out this line if you dare.

dangerous_variable=`cat /boot/vmlinuz`		# The compressed Linux kernel itself

echo "String-length of \$dangerous_variable = ${#dangerous_variable}"
# string-length of $dangerous_variable = 794151
# (Newer kernels are bigger.)
# Does not give same count as `wc -c /boot/vmlinuz`.
# Don't try this! It would hang the script.


#  The document author is aware of no useful applications for
#+ setting avariable to the contents of a binary file.

exit 0

