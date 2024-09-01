div=

name=$(whoami)
repo_name=$(git rev-parse --show-toplevel 2>/dev/null)
if [ "$VIRTUAL_ENV" != "" ]; then
  if [ "$first_col" == "" ]; then
    echo -n -e "\e[38;5;220m░▒▓"
    first_col="no"
  fi
  echo -n -e "\e[48;5;220m\e[38;5;0m  $(basename $VIRTUAL_ENV) "
  echo -n -e "\e[38;5;220m"
  if [ "$repo_name" != "" ]; then
    echo -n -e "\e[48;5;203m$div"
  else
    echo -n -e "\e[48;5;62m$div"
  fi
fi
if [ "$repo_name" != "" ]; then
  if [ "$first_col" == "" ]; then
    echo -n -e "\e[38;5;203m░▒▓"
    first_col="no"
  fi
  echo -n -e "\e[38;5;231;48;5;203m $(basename $repo_name)  $(git branch --show-current) "
  echo -n -e "\e[38;5;203;48;5;62m$div"
fi
if [ "$first_col" == "" ]; then
    echo -n -e "\e[38;5;62m░▒▓"
    first_col="no"
fi
echo -n -e ""
