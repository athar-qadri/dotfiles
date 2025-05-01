# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PROMPT='%F{green}%n%f @ %F{red}%1~%f %# '
export PATH="$PATH:/Users/atharqadri/Applications/flutter/bin"
export PYENV_ROOT="$HOME/.pyenv"

export NVM_DIR="$HOME/.nvm"

source $(brew --prefix nvm)/nvm.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/atharqadri/Developer/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/atharqadri/Developer/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/atharqadri/Developer/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/atharqadri/Developer/google-cloud-sdk/completion.zsh.inc'; fi
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias vi='nvim'


# general use aliases updated for eza
alias ls='eza' # Basic replacement for ls with eza
alias l='eza --long -bF' # Extended details with binary sizes and type indicators
alias ll='eza --long -a' # Long format, including hidden files
alias llm='eza --long -a --sort=modified' # Long format, including hidden files, sorted by modification date
alias la='eza -a --group-directories-first' # Show all files, with directories listed first
alias lx='eza -a --group-directories-first --extended' # Show all files and extended attributes, directories first
alias tree='eza --tree' # Tree view
alias lS='eza --oneline' # Display one entry per line

# new aliases than exa-zsh
alias lT='eza --tree --long' # Tree view with extended details
alias lr='eza --recurse --all' # Recursively list all files, including hidden ones
alias lg='eza --grid --color=always' # Display entries as a grid with color
#alias ld='eza --only-dirs' # List only directories
alias lf='eza --only-files' # List only files
alias lC='eza --color-scale=size --long' # Use color scale based on file size
alias li='eza --icons=always --grid' # Display with icons in grid format
alias lh='eza --hyperlink --all' # Display all entries as hyperlinks
alias lX='eza --across' # Sort the grid across, rather than downwards
alias lt='eza --long --sort=type' # Sort by file type in long format
alias lsize='eza --long --sort=size' # Sort by size in long format
alias lmod='eza --long --modified --sort=modified' # Sort by modification date in long format, using the modified timestamp

# Advanced filtering and display options
alias ldepth='eza --level=2' # Limit recursion depth to 2
alias lignore='eza --git-ignore' # Ignore files mentioned in .gitignore
alias lcontext='eza --long --context' # Show security context

#initializing zoxide
eval "$(zoxide init zsh)"

source <(fzf --zsh)

alias v='nvim $(fzf)'
alias cd='z'
alias pf="fzf --preview='less {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"

alias gs='git status'
alias gac='git add . && git commit -m'

alias zshrc='vi ~/.zshrc'
alias zshrcs='source ~/.zshrc'

alias cls='clear'

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
