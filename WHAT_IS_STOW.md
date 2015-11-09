# What is GNU Stow?

[GNU Stow](https://www.gnu.org/software/stow/) is effectively a symlink
package manager. You define a "package" consisting of a directory tree which
details *where* things should be installed on your system, and GNU Stow will
create symlinks from your system *into* the "package" directory.

For example, let's say we had the following scripts placed inside of
`"/stow/scripts/usr/local/bin"`:

```
/stow/scripts/usr/local/bin/run_update.sh
/stow/scripts/usr/local/bin/callback.sh
/stow/scripts/usr/local/bin/restart_server.sh
/stow/scripts/usr/local/bin/reload_server.sh
```

If we changed to `/stow` and then ran `stow scripts` it would create the
following symlinks:

```
/usr/local/bin/run_update.sh -> /stow/scripts/usr/local/bin/run_update.sh
/usr/local/bin/callback.sh -> /stow/scripts/usr/local/bin/callback.sh
/usr/local/bin/restart_server.sh -> /stow/scripts/usr/local/bin/restart_server.sh
/usr/local/bin/reload_server.sh -> /stow/scripts/usr/local/bin/reload_server.sh
```

These scripts can now be used as if they were installed on your system. Further,
changing the scripts inside of `/stow` will update the scripts system-wide
(because they are just symlinks).

Finally, uninstalling these scripts is as simple as unstowing them with the
command `stow -D scripts` run from inside the `/stow` directory.

As you can see, GNU Stow is a *powerful* yet *simple* tool.
