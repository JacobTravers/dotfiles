hook global WinSetOption filetype=json %{
  set-option window lintcmd %{ run() { cat -- "$1" | jq 2>&1 | awk -v filename="$1" '/ at line [0-9]+, column [0-9]+$/ { line=$(NF - 2); column=$NF; sub(/ at line [0-9]+, column [0-9]+$/, ""); printf "%s:%d:%d: error: %s", filename, line, column, $0; }'; } && run }
  lint
}
hook global BufSetOption filetype=json %{
  set-option buffer formatcmd "jq --indent %opt{tabstop} ."
}
