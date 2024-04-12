function zz
    set -l results (z -l | awk '{print $2}'| fzf) && cd $results && commandline -f repaint
end

function _fzf_wrapper --description "Prepares some environment variables before executing fzf."
    # Make sure fzf uses fish to execute preview commands, some of which
    # are autoloaded fish functions so don't exist in other shells.
    # Use --local so that it doesn't clobber SHELL outside of this function.
    set --local --export SHELL (command --search fish)

    # If FZF_DEFAULT_OPTS is not set, then set some sane defaults.
    # See https://github.com/junegunn/fzf#environment-variables
    if not set --query FZF_DEFAULT_OPTS
        # cycle allows jumping between the first and last results, making scrolling faster
        # layout=reverse lists results top to bottom, mimicking the familiar layouts of git log, history, and env
        # border shows where the fzf window begins and ends
        # height=90% leaves space to see the current command and some scrollback, maintaining context of work
        # preview-window=wrap wraps long lines in the preview window, making reading easier
        # marker=* makes the multi-select marker more distinguishable from the pointer (since both default to >)
        set --export FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*"'
    end

    fzf $argv
end

function _fzf_search_history --description "Search command history. Replace the command line with the selected command."
    # history merge incorporates history changes from other fish sessions
    # it errors out if called in private mode
    if test -z "$fish_private_mode"
        builtin history merge
    end

    # Delinate commands throughout pipeline using null rather than newlines because commands can be multi-line
    set commands_selected (
        # Reference https://devhints.io/strftime to understand strftime format symbols
        builtin history --null --show-time="%m-%d %H:%M:%S │ " |
        _fzf_wrapper --read0 \
            --print0 \
            --multi \
            --tiebreak=index \
            --query=(commandline) \
            --preview="echo -- {4..} | fish_indent --ansi" \
            --preview-window="bottom:3:wrap" \
            $fzf_history_opts |
        string split0 |
        # remove timestamps from commands selected
        string replace --regex '^\d\d-\d\d \d\d:\d\d:\d\d │ ' ''
    )

    if test $status -eq 0
        commandline --replace -- $commands_selected
    end

    commandline --function repaint
end

function fish_user_key_bindings
  bind -M insert -m default fd backward-char force-repaint
  bind -M insert \cf forward-char
  bind -M insert \cg forward-word
  # bind -M insert \cR up-or-search
  # set -gx FZF_DEFAULT_OPTS "--preview='less {}"
  bind -M insert \cT down-or-search

  bind -M insert \cR _fzf_search_history
  bind -M insert \cE fzf-file-widget
  bind -M insert \cW fzf-cd-widget
  bind -M insert \cS zz
  fish_vi_key_bindings
end


fzf_key_bindings
