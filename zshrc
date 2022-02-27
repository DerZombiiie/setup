# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"

source $HOME/powerlevel10k/powerlevel10k.zsh-theme

source $HOME/.zshrc.custom

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export TERM="xterm-256color"

alias µ="micro"
alias proxy="export HTTP_PROXY=\"http://proxy:8080/\";export HTTPS_PROXY=\"http://proxy:8080/\""
alias lsd="ls | lolcat"

export PATH="${PATH}:/home/user/crosstool/bin/"
export PATH="${PATH}:/home/user/x-tools/powerpc64-unknown-linux-gnu/bin/"
export CONCURRENCY_LEVEL=#number

export VITASDK=/usr/local/vitasdk # define $VITASDK if you haven't already
export PATH=$VITASDK/bin:$PATH # add vitasdk tool to $PATH if you haven't already
