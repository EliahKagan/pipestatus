# shellcheck shell=bash
# SPDX-License-Identifier: 0BSD
# This adds exit status(es) of the last command to the prompt unless all are 0.

__all_zero() {
    local value

    for value in "$@"; do
        if ((value != 0)); then
            return "$value"
        fi
    done

    return 0
}

__pipestatus() {
    local -a previous=("${PIPESTATUS[@]}")

    # If any command in the pipeline failed, show all commands' statuses.
    if ! __all_zero "${previous[@]}"; then
        local IFS='|'
        printf '[%s]\n' "${previous[*]}"
    fi
}

case "$PS1" in
*__pipestatus*)
    ;;
*)
    PS1="$(sed 's@\\\$ $@\\[\\e[31m\\]$(__pipestatus)\\[\\e[0m\\]\\\$ @' <<<"$PS1")"
    ;;
esac
