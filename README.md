# pipestatus - exit status(es) in Bash prompt

This puts the exit status of the last command, or all of its exit statuses if
it was a pipeline of multiple commands, into your Bash prompt. They are shown
if the command reported failure (i.e., had a nonzero exit status), or if any
command in the pipeline did.

To install, put `~/.pipestatus.bash` in your home directory, and add this code
at (or near) the end of your `~/.bashrc` file:

```bash
# add information to the prompt about nonzero exit statuses
. ~/.pipestatus.bash
```

This named after the Bash
[`PIPESTATUS`](https://www.gnu.org/software/bash/manual/bash.html#index-PIPESTATUS)
array variable that it makes use of.

## License

[0BSD](https://spdx.org/licenses/0BSD.html). See [**`LICENSE`**](LICENSE).

## History

This was written back in 2023 but I didn't get around to publishing it widely
until mid-2024, when a bug (that `\[` and `\]` were not used to help the shell
correcty compute how many columns the prompt takes up in the terminal) was
fixed.

I think the positioning and styling is inspired by the way the defualt `fish`
prompt includes this information, but I am not sure.
