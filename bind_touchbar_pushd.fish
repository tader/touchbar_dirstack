function bind_touchbar_pushd --on-event fish_prompt
    set -q TOUCHBAR_PUSHD_KEY ; or return 1

    bind -k f$TOUCHBAR_PUSHD_KEY 'pushd (pwd) ; fish_prompt_touchbar_popd ; commandline -f repaint'
end
