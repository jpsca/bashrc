# Your `~/.(bashrc|zprofile|profile)` doesn't have to be a mess

Clone this repo to `~/.config/bashrc`and add this snippet to your `~/.(bashrc|zprofile|profile)` file:

```bash
for file in ~/.config/bashrc/*.sh; do
  [[ -r $file ]] && . $file
done
unset file
```

In short, it iterates through every script with a `.sh` extension on `~/.config/bashrc`.  If it is readable, then it is sourced as well.
