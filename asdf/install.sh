ASDF_DIR="$HOME/.asdf"

# Asdf version manager
# https://github.com/HashNuke/asdf
if !(test -d "$ASDF_DIR" 2>/dev/null); then
  echo "[setup] Installing asdf"
  git clone https://github.com/asdf-vm/asdf.git "$ASDF_DIR"
fi

# Ruby version manager plugin
if !(asdf plugin-list | grep -q ruby 2>/dev/null); then
  echo "[setup] Installing asdf plugin for ruby"
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
fi
