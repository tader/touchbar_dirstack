function touchbar_pushd
    if set match (string match -r -i 'F(\d+)' $argv[1])
        set -g TOUCHBAR_PUSHD_KEY $match[2]
    else
        echo "usage: touchbar_pushd <Fn KEY>"
        echo "  eg.: touchbar_pushd F2"
        return 1
    end

    touchbar # make sure it is initialized
    bind_touchbar_pushd
    fish_prompt_touchbar_pushd
end
