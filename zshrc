# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"

source $HOME/powerlevel10k/powerlevel10k.zsh-theme

# cntrl + left / right
bindkey ";5D" backward-word
bindkey ";5C" forward-word

# Pos1 (home) & Ende (End) keys
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# delete key:
bindkey 'e[e~' delete-char

# cntrl + o for file selector
bindkey -s "^o" 'micro $(fzf)^M'

bindkey "^R" history-incremental-search-backward

# alias stuff
alias l="ls -l"
alias la="ls -la"
alias lh="ls -halt"

# history:
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export TERM="xterm-256color"

alias µ="micro"
alias proxy="export HTTP_PROXY=\"http://proxy:8080/\";export HTTPS_PROXY=\"http://proxy:8080/\""
alias lsd="ls | lolcat"

alias ctar="tar cf - $1 -P | pv -s $(($(du -sk $1 | awk '{print $1}') * 1024)) | gzip > $2"
