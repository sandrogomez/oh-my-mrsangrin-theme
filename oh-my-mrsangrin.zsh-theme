if [ -e ~/.rvm/bin/rvm-prompt ]; then
  PROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%} %{$fg[green]%}‹$(~/.rvm/bin/rvm-prompt i v)› %{$reset_color%} $(git_prompt_info)%{$reset_color%}%B$%b '
else
  if which rbenv &> /dev/null; then
    PROMPT='%{$fg_bold[cyan]%}%~%{$reset_color%} %{$fg[green]%}‹$(rbenv version | sed -e "s/ (set.*$//")› %{$reset_color%} $(git_prompt_info)%{$reset_color%}%B$%b '
  fi
fi
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
