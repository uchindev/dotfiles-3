set -x GTK_IM_MODULE ibus
set -x QT_IM_MODULE ibus
set -x XMODIFIERS "@im=ibus"
set --universal nvm_default_version lts

set -x PATH "$PATH:$HOME/software:$HOME/.local/bin:$HOME/go/bin:$HOME/.config/rofi/bin"

set -x GOPRIVATE "gitlab.sendo.vn"

alias gc="git checkout"
alias gp="git pull"
alias gpu="git push"
alias ga="git merge --abort"

alias vim="nvim"
alias vpn="sudo openvpn --config /home/uchin/software/vpn-TCP4-442-thinhnt-config.ovpn"
alias dim="sleep 1; xset s activate"

function klogs
  if count $argv > /dev/null
    kubectl logs $argv -n pc3;
  else
    kubectl get pods -n pc3;
  end
end
