zsh-benchmark () {
  for i in $(seq 1 3); do /usr/bin/time zsh -i -c exit; done
}
