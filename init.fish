if builtin status --is-interactive
  if not type -q keychain
    echo "🔑  Please install 'keychain' first!" ^&1
  else
    __keychain_init
  end
end
