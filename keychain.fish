# extracted from https://bugs.funtoo.org/browse/FL-2006

function init --on-event init_keychain
  if not type -q keychain
    echo "🔑  Please install 'keychain' first!"
  else
    if builtin status --is-interactive
      # handle keychain versions that do not support --confhost
      if not keychain --eval --quiet --confhost --timeout 60 --agents ssh,gpg  2>/dev/null | source
        keychain --eval --quiet --timeout 60 --agents ssh,gpg | source
      end
    end
  end
end
