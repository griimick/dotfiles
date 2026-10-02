# opencode alias - connect to running server
alias opencode='OPENCODE_PASSWORD="$(grep OPENCODE_SERVER_PASSWORD ~/.config/opencode/serve.env | cut -d= -f2)" opencode --server http://0.0.0.0:49374'
