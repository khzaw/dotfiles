source /Users/$(whoami)/Code/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle git-extras
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found
antigen bundle colorize
antigen bundle colored-man
antigen bundle history
antigen bundle history-substring-search
antigen bundle osx
antigen bundle themes
antigen bundle zsh_reload
antigen theme pygmalion
antigen apply



for file in ~/code/dotfiles/{exports,path,localrc,aliases.zsh,functions};
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# OPAM configuration
. /Users/emoosx/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

nvm use latest > /dev/null 2> /dev/null

. `brew --prefix`/etc/profile.d/z.sh
