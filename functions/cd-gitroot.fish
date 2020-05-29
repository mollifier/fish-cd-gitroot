function cd-gitroot
  argparse -n cd-gitroot 'h/help' -- $argv
    or return 1

  if set -lq _flag_h
    _cd-gitroot_print_help
    return
  end
end

function _cd-gitroot_print_help
  echo 'Usage: cd-gitroot [PATH]
Change directory to current git repository root directory.
If PATH is specified, change directory to PATH instead of it.
PATH is treated relative path in git root directory.

-h, --help    display this help and exit'

end
