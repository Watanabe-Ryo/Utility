# Created by newuser for 5.3
autoload -U compinit
compinit
autoload colors
colors
local DEFAULT=%{$reset_color%}
local RED=%{$fg[red]%}
local GREEN=%{$fg[green]%}
local YELLOW=%{$fg[yellow]%}
local BLUE=%{$fg[blue]%}
local PURPLE=%{$fg[purple]%}
local CYAN=%{$fg[cyan]%}
local WHITE=%{$fg[white]%}

setopt correct
setopt mark_dirs             # �t�@�C�����̓W�J�Ńf�B���N�g���Ƀ}�b�`�����ꍇ ������ / ��t��
setopt auto_param_keys       # �J�b�R�̑Ή��Ȃǂ������I�ɕ⊮
setopt magic_equal_subst     # �R�}���h���C���̈����� --prefix=/usr �Ȃǂ� = �ȍ~�ł��⊮�ł���

# �⊮���� �������� �ł��I���o����悤�ɂ���
zstyle ':completion:*:default' menu select=2
# �⊮�ŏ������ł��啶���Ƀ}�b�`������
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# sudo �̌��ŃR�}���h����⊮����
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
# ps �R�}���h�̃v���Z�X���⊮
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


PROMPT="$YELLOW%d$DEFAULT
%n@%m:%c %* >"
PROMPT2='next:%~ >' 
SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [No/Yes/Abort/Edit]"
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

setopt hist_ignore_dups

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end 

setopt auto_pushd

case "${TERM}" in
kterm*|xterm)
    precmd() {
        echo -ne "\033]0;${USER}@${HOST}\007"
    }
    ;;
esac 

export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'
alias ls="ls -GF"
alias ls="ls -F --color"
alias la='ls -alt'
alias ll='ls -l'
alias lt='ls -ltr'
alias dv='dirs -v'
alias pud='pushd'
alias pod='popd'
alias -s txt='vim'

alias mkto='./todo.sh'
alias cdto='cd todo/`date "+%Y%m%d"`'
if [[ ! -n $TMUX ]]; then
  tmux new-session
fi
/home/watanabe/.checkTodo.sh
