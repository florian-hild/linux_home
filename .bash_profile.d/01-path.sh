# Set PATH

mypaths=(
  "$HOME/bin"
  "$HOME/$(hostname -s)/bin"
  "$HOME/local/bin"
  "$HOME/linux_home/bin"
  "$HOME/local/bin/bash_bin"
)

# Export PATH
for mypath in "${mypaths[@]}"; do
  if [[ ! "$PATH" =~ "$mypath" ]] && [[ -d $mypath ]]; then
    export PATH="$mypath:$PATH"
  fi
done

unset mypaths mypath