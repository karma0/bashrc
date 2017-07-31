load_option() {
  source $1;
}

load_default_options() {
  local _paths=$(find $HOME/.bash/options.d -type f -name "[0-8]*_*.sh");

  for path in ${_paths}; do
    load_option ${path};
  done
}

load_custom_options() {
  local _paths=$(find $HOME/.bash/options.d -type f -name "9*_*.sh");

  for path in ${_paths}; do
    load_option ${path};
  done
}

load_custom_options;
load_default_options;
