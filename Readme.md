# What is it about?
Simple script to run executable files via fzf, using terminal emulator
dependencies: [fzf](https://github.com/junegunn/fzf), rxvt-unicode

# Synopsis
```
./fzf_run.sh [path]
```

If search path is not specified, "/" is used.

# Misc
Add the following line to .i3/config to make i3 show terminal window in floating mode:
```
for_window [title="fzf_run"] floating enable
```
