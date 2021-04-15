# Dirs
alias ws="~/workspace"
alias blkn="cd ~/workspace/balkan"
alias fe="cd ~/workspace/balkan/balkan-frontend"
alias gql="cd ~/workspace/balkan/graphql"
alias portalo="cd ~/workspace/portalo"

# K8s
alias k="kubectl"
alias kns="kubens"
alias kctx="kubectx"
alias kebug='kubectl get pods -n system | grep debug | awk {'\''print $1'\''} | xargs -I {} -t -o kubectl exec -it {} -n system -- bash'

# Others
alias y="yarn"
alias cat="bat"
alias d="docker"