# Fish git prompt
set __fish_git_prompt_use_informative_chars 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_color yellow
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)''

    set_color -o
    if test "$USER" = 'root'
        echo -n (set_color red)'# '
    end

    # Git
    set last_status $status
    printf '%s' (__fish_git_prompt)

    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '

    set_color normal
end
