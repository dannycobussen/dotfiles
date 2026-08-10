PROMPT="%(?:%{%F{#a3be8c}%}%1{➜%} :%{%F{#bf616a}%}%1{➜%} ) %F{#88c0d0}%2~%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{%F{#81a1c1}%}git:(%{%B%F{#bf616a}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{%F{#81a1c1}%}) %{%F{#ebcb8b}%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{%F{#81a1c1}%})"
