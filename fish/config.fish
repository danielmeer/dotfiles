# Show dotfiles separately with the ls command
#export LC_COLLATE="C"

# Do not quote filenames containing spaces with the ls command
#export QUOTING_STYLE=literal

# Change date/time format of ls command
#export TIME_STYLE=long-iso

# Default editor
export EDITOR='nvim'
export VISUAL='nvim'

# MATLAB cannot use fish because its libstdc++ is too old
set -gx MATLAB_SHELL /bin/bash

# Aliases
alias ls='ls --color=auto --group-directories-first'
#alias vim='nvim'

alias t='tig --all'
alias g='git status'
alias gd='git difftool'
alias gitmerge='git mergetool --tool=meld'
#alias gdm='git difftool --tool=matlab'
#alias gitmergem='git mergetool --tool=matlab'
alias gdbc='git difftool --tool=bc'
#alias clearoxygen='\
#    git checkout thirdpartydrivers/sg_help/*; \
#    git checkout user_docs/generated_pdfs/*; \
#    find user_docs/oxygen -name "target.db" -exec git checkout {} +;\
#    git clean -fq thirdpartydrivers/sg_help'
#
#alias slxdiff='/mnt/c/Users/daniel.meer/OneDrive\ -\ Speedgoat\ GmbH/Files/scripts/slx-diff.sh'
#alias gdslx='TMPDIR=tmp git difftool --tool=slx'
#
#function clean
#    /mnt/c/Users/daniel.meer/OneDrive\ -\ Speedgoat\ GmbH/Files/scripts/cleanup-whitespace.sh $argv
#end
#gclean() {
#    clean $(git diff-tree --diff-filter=d --no-commit-id --name-only -r $1)
#}
# git() {
#    if [[ "$(pwd -P)/" =~ ^/mnt/./ ]]; then
#        exec git.exe "$@"
#    else
#        exec /usr/bin/git "$@"
#    fi
#}

# Paths for TeX Live
#if [ -d "${HOME}/opt/texlive/2016" ]; then
#	INFOPATH=${INFOPATH}:${HOME}/opt/texlive/2016/texmf-dist/doc/info
#	MANPATH=${MANPATH}:${HOME}/opt/texlive/2016/texmf-dist/doc/man
#	PATH=${PATH}:${HOME}/opt/texlive/2016/bin/x86_64-linux
#fi

# Path for Cargo
#if [ -d "${HOME}/.cargo" ]; then
#	PATH=${PATH}:${HOME}/.cargo/bin
#fi

# Automatically start a tmux session
#if which tmux 2>&1 > /dev/null; then
#	test -z "$TMUX" && (tmux attach || tmux new-session)
#fi

# Load foreign-env plugin
set fish_function_path $fish_function_path ~/opt/plugin-foreign-env/functions

# For Nix home-manager
fenv source "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
