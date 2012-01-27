set dot_bash_login to POSIX path of (path to home folder as text) & ".bash_login"
do shell script " 
  for FILE in $HOME/.bash_profile $HOME/.bash_login $HOME/.profile; do 
      if [ -r $FILE ]; then 
          source $FILE 
          break
      fi
  done
"
