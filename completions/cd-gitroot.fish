complete -c cd-gitroot -x
complete -c cd-gitroot -n '__fish_is_first_token' -s h -l help -d 'Display this help and exit'
complete -c cd-gitroot -n '__fish_is_first_token' -xa '(_cd-gitroot_complete_path)'

function _cd-gitroot_complete_path
  if not git rev-parse --is-inside-work-tree > /dev/null 2>&1
    # not in git working tree
    return 2
  end

  set -l root_path (git rev-parse --show-toplevel)
  _cd-gitroot_fish_complete_directories $root_path (commandline -tc)
end

function _cd-gitroot_fish_complete_directories
  set -l base $argv[1]
  set -l current $argv[2]

  set -l target $base
  if test -n "$current"
    set target $current
  end

  command ls -dp "$target"*
end

