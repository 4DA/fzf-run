#!/bin/bash
# run executable files via fzf+terminal emulator
# dependencies: [fzf](https://github.com/junegunn/fzf), rxvt-unicode

TERMINAL="urxvt --geometry 160x18+30+200 -e"
ROOT="/"

fzf_invoke()
{
    export FZF_DEFAULT_COMMAND="find $1 -type f -executable -not \( -name \"*.so\" -or -name \"*.so.*\" \)"
    cmd=$(fzf --tiebreak=end)

    if [ $? -eq 0 ]; then
        nohup "$cmd" 2>/dev/null &
        sleep 0.1
    fi
}

if [[ ! -z $1 ]]
then
    ROOT=$1
fi

$TERMINAL sh -c "$(declare -f fzf_invoke) && fzf_invoke $ROOT"

