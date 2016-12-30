function fish_prompt_touchbar_popd --on-event fish_prompt
    set -q TOUCHBAR_POPD_KEY ; or return 1

    set -l head $dirstack[1]
    if [ "$head" = "" ]
        touchbar_set F$TOUCHBAR_POPD_KEY popd
    else
        # Replace $HOME with "~"
        set realhome ~
        set -l head (string replace -r '^'"$realhome"'($|/)' '~$1' $head)

        set -l head (string replace -ar '(\.?[^/]{'"1"'})[^/]*/' '$1/' $head)
        # \u21B2
        touchbar_set F$TOUCHBAR_POPD_KEY cd $head
    end
end
