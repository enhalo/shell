#!/bin/bash
# nested -loop.sh: Nested "for" loops.

outer=1			# Set outer loop counter

# Beginning of outer loop.
for a in 1 2 3 4
do 
  echo "Pass $outer in outer loop."
  echo "---------------------"
  inner=1	    # Rest inner loop counter

  # ==========================================
  # Beginning of inner loop.
  for b in 1 2 3 4 5
  do
    echo "Pass $inner in inner loop."
    let "inner+=1"  # Incerment inner loop counter.
  done
  # End of inner loop.
  # ==========================================

  let "outer+=1"	# Incerment outer loop counter.
  echo			# Space between output blocks in pass of outer loop.
done

# End of outer loop.

exit 0
