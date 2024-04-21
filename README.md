# pipestatus - exit status(es) of last command in Bash prompt

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
until mid-2024.

I think the positioning and styling is inspired by the way the defualt `fish`
prompt includes this information, but I am not sure.
