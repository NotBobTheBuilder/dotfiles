function activate { . ~/envs/"$1"/bin/activate; }
_activate()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="$(ls ~/envs)"

    if [[ ${prev} == "activate" ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi
}
complete -F _activate activate
function which { mimetype -ML $(/usr/bin/which "$1"); }
