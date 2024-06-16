PROMPT="%(?:%{%F{#b8bb26}%}%1{➜%} :%{%F{#cc241d}%}%1{➜%} ) %F{#d65d0e}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{%F{#458588}%}git:(%{%B%F{#cc241d}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{#458588}%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{%F{#458588}%})"
