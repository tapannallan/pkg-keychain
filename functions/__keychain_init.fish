# extracted from https://bugs.funtoo.org/browse/FL-2006

function __keychain_init
  set -l keychain_args --quiet

  if set -q keychain_init_args
    set keychain_args $keychain_init_args
  end

  env SHELL=$__fish_bin_dir/fish keychain --eval $keychain_args | source
end
