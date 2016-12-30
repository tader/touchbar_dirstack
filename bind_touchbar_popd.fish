function bind_touchbar_popd --on-event fish_prompt
    set -q TOUCHBAR_POPD_KEY ; or return 1

    bind -k f$TOUCHBAR_POPD_KEY '[ "x" != "x$dirstack" ] ; and popd ; and fish_prompt_touchbar_popd ; and commandline -f repaint'
end
