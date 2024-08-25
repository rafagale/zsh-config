# Enable Powerlevel10k Instant Prompt
# -----------------------------------
# Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path Configuration
# ------------------
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Oh My Zsh Setup
# ---------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment to use random theme selection
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following lines to enable additional features
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"  # Makes _ and - interchangeable in completion
# zstyle ':omz:update' mode disabled  # Disable automatic updates
# zstyle ':omz:update' mode auto      # Update automatically without asking
# zstyle ':omz:update' mode reminder  # Just remind me to update when it's time
# zstyle ':omz:update' frequency 13   # Auto-update frequency in days
# DISABLE_MAGIC_FUNCTIONS="true"  # Uncomment if pasting URLs or text is messed up
# DISABLE_LS_COLORS="true"        # Disable colors in ls
# DISABLE_AUTO_TITLE="true"       # Disable auto-setting terminal title
# ENABLE_CORRECTION="true"        # Enable command auto-correction
# COMPLETION_WAITING_DOTS="true"  # Display dots whilst waiting for completion
# DISABLE_UNTRACKED_FILES_DIRTY="true"  # Speed up large git repositories
# HIST_STAMPS="mm/dd/yyyy"        # Change history command timestamp format

# Uncomment to customize Oh My Zsh custom folder
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins Configuration
# ---------------------
# Core Functionality
plugins=(
  command-not-found        # Suggests package installation when a command is not found
  dirhistory               # Adds directory history navigation shortcuts
  extract                  # Extracts various archive types using a single `extract` command
  sudo                     # Automatically prepend `sudo` to previous commands by pressing `Esc` twice
)

# Development Tools
plugins+=(
  git                      # Git plugin with aliases and functions for common git commands
  gradle                   # Adds completions and aliases for Gradle build tool
  mvn                      # Adds completions and aliases for Maven commands
  python                   # Provides aliases for common Python commands and enhances Python workflow
  spring                   # Adds autocomplete options and aliases for Spring Boot commands
)

# System Management
plugins+=(
  archlinux                # Adds useful aliases and functions for working with Arch Linux
  ssh                      # Provides host completion and SSH key management utilities
)

# Zsh Enhancements
plugins+=(
  fast-syntax-highlighting # Fast version of syntax highlighting optimized for performance
  zsh-autosuggestions      # Suggests commands as you type based on history
  zsh-completions          # Adds a comprehensive set of additional completions for commands
  zsh-history-substring-search  # Allows searching command history by substring
)

# Initialize Oh My Zsh
# --------------------
source $ZSH/oh-my-zsh.sh

# User Configuration
# ------------------
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8  # Set your language environment

# Preferred editor for local and remote sessions
# Uncomment and set according to your preference
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Custom Aliases and Functions
# ----------------------------
# Aliases can be placed here or in a top-level file in $ZSH_CUSTOM.
# Examples:
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Source the aliases file if it exists
if [ -f ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi

# FZF Configuration
# -----------------
export FZF_BASE=/usr/bin/fzf

# Powerlevel10k Configuration
# ---------------------------
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
