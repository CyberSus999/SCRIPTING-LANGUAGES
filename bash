LISTING FILES IN BASH
#!/usr/bin/env bash
for f in ./ls files/*; do # this is th correct way to read files in bash scripts 
        echo "file is $f"
done 

COUNT THE FILES
i=0
for file  in files /*; do
        echo "<$file>"
        ((i++)) 
done 
echo "found $i files"

LINE PARSING / STRING MANIPULATION
Inter Field Seperator
while IFS=: read  -r name id desc; do
        echo "$id: $name is $desc"
do < data.txt

ARGUMENTS
#looping arguments
#!/usr/bin/env bash
for arg in $*; do 
        echo "<$arg>"
done

goal:
 <foo>
 <bar baz>
 <hello   wrld>
multiple scenarios; 
eg 1. run  the script
  ./script foo bar baz
  #output;
  <foo>
  <bar>
  <baz>
eg 2. ./script foo 'bar baz' # another scenario  foo 'bar baz' 'hello   wrld' - the script is still gon think we got 5 args 
      #output
      <foo>
      <bar>
      <baz>
      Theres something wrong with the scrpit because it still thinks we got three args
      so what do we do if something is not right in bash?
      qoute it
      
      for arg in "$*"; do 
              echo "<$arg>"
      done
      - The script now thinks we have one big arg
      output when you run ;
      <foo bar baz hello wrld>
      !!!!!!!!!
      so i learnt that the the * and the @ are the same when we use quotes..They print out every input value as a single arg 
      so if we wanna reach our goal
      for arg in "$@"; do
              echo "<arg>"
      done
      input = foo 'bar baz' 'hello   wrld'
      output;
      <foo>
      <bar baz>
      <hello   wrld>

      
