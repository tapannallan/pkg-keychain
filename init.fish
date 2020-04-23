if builtin status --is-interactive
  if not type -q keychain
    echo "🔑  Please install 'keychain' first!"
  else
    __keychain_init
  end
end
