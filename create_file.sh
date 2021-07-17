#!/bin/bash

 # A directory and a file are automatically generated and the execution right is given to the file.

usage() { 
cat <<ENDOFTEXT
----------------------------------------------------------------
Usage: $0 [< introduction >]

Introduction
  This script creates directory and files, Given execution 
  rights in the generated files.

  Argument 1 becomes the <directory> name.

  Create as many files as given in argument 2.

  If the extension is .rb, write #!/usr/bin/env ruby.
  If the extension is .sh, write #!/bin/bash.

Usage
  1. Write <dir name> <number of files>
  2. for example → ./useful.sh "src" "3" 
  3. Type in the file name you want to create on the command line
-----------------------------------------------------------------
ENDOFTEXT
}

if [ "$#" != "2" ]; then
  usage
  exit
fi 
# usage = showing usage when there are no two arguments
# exit = stop execution because of error

mkdir ./$1 
for number in `seq $2`; do
  read -p "input file name >> " file
  # Type in the file name you want to create
  touch ./$1/$file && chmod 755 ./$1/$file
  [ ${file##*.} = "sh" ] && echo "#!/bin/bash" > ./$1/$file # The extension is judgement
  [ ${file##*.} = "rb" ] && echo "#!/usr/bin/env ruby" > ./$1/$file
done
