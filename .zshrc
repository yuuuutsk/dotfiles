# vcs_infoロード    
autoload -Uz vcs_info    
# PROMPT変数内で変数参照する    
setopt prompt_subst    
# vcsの表示    
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!%f"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+%f"
zstyle ':vcs_info:*' formats '(%s * %F{green}%b%f%c%u)'
zstyle ':vcs_info:*' actionformats '(%s * %F{green}%b%f(%F{red}%a%f))'    
# プロンプト表示直前にvcs_info呼び出し    
precmd() { vcs_info }    
# プロンプト表示    
PROMPT='[%n %c]${vcs_info_msg_0_} %# '
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 開始と終了を記録
setopt EXTENDED_HISTORY
#export LANG=en_US.UTF-8
export LANG=ja_JP.UTF-8

# tmuxinator
#source ~/.tmuxinator/tmuxinator.zsh
export EDITOR='vim'
export SHELL='zsh'

# tmuxでキーバインドが持ってかれるため再定義
bindkey "^A" beginning-of-line
bindkey "^B" backward-char
bindkey "^E" end-of-line
bindkey "^F" forward-char
bindkey "^G" send-break
bindkey "^H" backward-delete-char
bindkey "^I" expand-or-complete
bindkey "^L" clear-screen
bindkey "^M" accept-line
bindkey "^N" down-line-or-history
bindkey "^P" up-line-or-history
bindkey "^R" history-incremental-search-backward
bindkey "^U" kill-whole-line
bindkey "^W" backward-kill-word

alias k=kubectl
alias kd="kubectl delete pod --field-selector=status.phase==Succeeded"

export PATH="$PATH:$HOME/flutter/bin"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then . '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"



