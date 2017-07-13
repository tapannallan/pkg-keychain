# extracted from https://bugs.funtoo.org/browse/FL-2006

function __keychain_init
  # handle keychain versions that do not support --confhost
  if not keychain --eval --quiet --confhost --timeout 60 --agents ssh,gpg  2>/dev/null | source
    keychain --eval --quiet --timeout 60 --agents ssh,gpg | source
  end
end
