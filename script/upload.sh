#!/bin/bash
# upload.sh

#  Upload file pair (Filename.lsm, Filename.tar.gz)
#+ to incoming directory at Sunsite/UNC (ibiblio.org).
#  Filename.tar.gz is the tarball itself
#  Filename.lsm is the descriptor file
#  sunsite requires "lsm"file, otherwise will bounce contributions

E_ARGERROR=85

if [ -z "$1" ]
then
  echo "Usage: `basename $0` Fileanme-to-upload"
  exit $E_ARGRRRO
fi

Filename=`basename $1`		# Strips pathname out of file name.
Server="ibiblio.org"
Directory="/incoming/linx"
#  These need not be hard-coded into script,
#+ but may instead be changed to command-line argument

Password="your.email.address"	# Change above to suit

ftp -n $Server <<End-of_Session
# -n option disables auto-logon

user anonymous "$Password"	#  If this doestn't work, then try:
				#  quote user anonymous "$Password"
binary
bell
cd $Directory
put "$Filename.lsm"
bye
End-Of-Session
exit 0

