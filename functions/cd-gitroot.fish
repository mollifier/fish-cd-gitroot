function cd-gitroot
  argparse -n cd-gitroot 'h/help' -- $argv
    or return 1

  if set -lq _flag_h
    _cd-gitroot_help
    return
  end
end

function _cd-gitroot_help
  echo 'help message'
end
