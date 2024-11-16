# Issues

# Access

Check Ownership and Permissions:

```
ls -ld ~/.local/bin
ls -ld ~/.local/state
```

Correct Ownership:

```
sudo chown -R <owner>:<owner> ~/.local/bin
sudo chown -R <owner>:<owner> ~/.local/state
```

Set Correct Permissions:

```
chmod -R u+rw ~/.local/bin
chmod -R u+rw ~/.local/state
```

Neovim and Mason, Mise need read/write access to these directories to install and use tools properly.

# Cache

```
bat cache --build
```

To resolve theme and syntax settings.
