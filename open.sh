  #!/bin/bash
  IFS=$'\n'

  # check number of arguments
  if   [ $# -le 0 ] ; then
      echo too few arguments.
      exit 0
  elif [ $# -ge 2 ] ; then
      echo too many arguments.
      exit 0
  elif [ ! -e $1 ] ; then
      echo "$1" is not exist.
      exit 0
  fi

  absolute_path=$(readlink -f $1)

  # replace
  if   [[ $absolute_path =~ ^/mnt/[A-z]{1}/ ]] ; then
      # Windows mount directory
      replace_path=$(echo $absolute_path | sed -e 's|\/mnt\/\([A-z]\)|\1:|g'   -e 's|\/|\\|g')
  elif [[ $absolute_path =~ ^/home/ ]] ; then
      # Ubuntu home directory
      replace_path=$(echo $absolute_path | sed -e 's|^|%LocalAppData%\\lxss|g' -e 's|\/|\\|g')
  else
      # Ubuntu system directory
      echo "$1" is linux system directory.exit.
      exit 0
  fi

  # open
  cmd.exe /c start "" "$replace_path"

  exit 0
