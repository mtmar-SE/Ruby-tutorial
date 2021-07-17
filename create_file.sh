#!/bin/bash

 # A directory and a file are automatically generated and the execution right is given to the file.

usage() { 
cat <<ENDOFTEXT
----------------------------------------------------------------
Usage: $0 [< introduction >]

Introduction
  This script creates files, Given execution 
  rights in the generated files.

  Create as many files as given in argument 1.

  If the extension is .rb, write #!/usr/bin/env ruby.
  If the extension is .sh, write #!/bin/bash.

Usage
  1. Write <number of files>
  2. for example → ./useful.sh "3" 
  3. Type in the file name you want to create on the command line
-----------------------------------------------------------------
ENDOFTEXT
}

if [ "$#" != "1" ]; then
  usage
  exit
fi 
# usage = showing usage when there are no two arguments
# exit = stop execution because of error


for number in `seq $1`; do
  read -p "input file name >> " file
  # Type in the file name you want to create
  touch ./$file && chmod 755 ./$file
  [ ${file##*.} = "sh" ] && echo "#!/bin/bash" > ./$file # The extension is judgement
  [ ${file##*.} = "rb" ] && echo "#!/usr/bin/env ruby" > ./$file
done
