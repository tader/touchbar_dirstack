# touchbar_dirstack

Adds pushd/popd to an TouchBar function key.

## Install:

Install the plugin using fisherman:

```
fisher tader/touchbar_dirstack
```

## Configure:

In order to bind to the function keys and event handlers, we need to initialize
touchbar_dirstack from your `config.fish`. Initialization is done by calling the
function `touchbar_popd` with an function key as argument.

For example, to enable `touchbar_pushd` on function key 3 and `touchbar_popd` on
function key 4, add the following to `~/.config/fish/config.fish`:

```
touchbar_pushd F3
touchbar_popd F4
```
