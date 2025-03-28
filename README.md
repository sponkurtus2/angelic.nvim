<div align="center">

# Angelic nvim

Port of the VS Code theme, [Vesper](https://github.com/raunofreiberg/vesper)

<a href="https://dotfyle.com/sponkurtus2/angelicnvim"><img src="https://dotfyle.com/sponkurtus2/angelicnvim/badges/plugins?style=for-the-badge" /></a>
<a href="https://dotfyle.com/sponkurtus2/angelicnvim"><img src="https://dotfyle.com/sponkurtus2/angelicnvim/badges/leaderkey?style=for-the-badge" /></a>
<a href="https://dotfyle.com/sponkurtus2/angelicnvim"><img src="https://dotfyle.com/sponkurtus2/angelicnvim/badges/plugin-manager?style=for-the-badge" /></a>

<br/>
<br/>

![preview](./assets/angelic.png)

<br/>
<br/>

</div>

## Installation

1. Using `Lazy`:

```lua
  "sponkurtus2/angelic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("angelic").setup({})
    vim.cmd.colorscheme("angelic")
  end,
```

2. Using `Packer`:

```lua
use 'sponkurtus2/angelic.nvim'
```

## Configuration

To configure the plugin, you can call require('angelic').setup({}), passing the table with the values in it. The following are the **defaults**:

```lua
require('angelic').setup({
    transparent = false, -- Boolean: Sets the background to transparent
    italics = {
        comments = true, -- Boolean: Italicizes comments
        keywords = true, -- Boolean: Italicizes keywords
        functions = true, -- Boolean: Italicizes functions
        strings = true, -- Boolean: Italicizes strings
        variables = true, -- Boolean: Italicizes variables
    },
    overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
    palette_overrides = {}
})
```

- **The `colorscheme()` function**

This function can be used to set the colorscheme in your editor. However, if it doesn't work for you, you can always use `vim.cmd.colorscheme('angelic')`.

### Specifics for Some Plugins

#### Bufferline.nvim

To use the theme with [bufferline.nvim](https://github.com/akinsho/bufferline.nvim), you can use the following configuration:

```lua
require('bufferline').setup({
    highlights = require('angelic').bufferline.highlights,
})
```

## Why these colors?
You may be wondering why the colors changed a lot. The colors are because of what I see in my girlfriend's outfits.
She's uses quite a few of these colors, and you can see it in her outfits, and even in her personality.

## Contributing

Contributions are welcome, please open an issue if you encounter any bug or if you find any improvements are needed for the code, also feel free to open a PR.

Take a look at the [Development Guide](./DEVELOPMENT_GUIDE.md)

## License

[MIT License](LICENSE)
