function touchbar_popd
    if set match (string match -r -i 'F(\d+)' $argv[1])
        set -g TOUCHBAR_POPD_KEY $match[2]
    else
        echo "usage: touchbar_popd <Fn KEY>"
        echo "  eg.: touchbar_popd F2"
        return 1
    end

    touchbar # make sure it is initialized
    bind_touchbar_popd
    fish_prompt_touchbar_popd
end
