function fish_prompt_touchbar_pushd --on-event fish_prompt
    set -q TOUCHBAR_PUSHD_KEY ; or return 1

    touchbar_set F$TOUCHBAR_PUSHD_KEY pushd .
end
