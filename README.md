<div align="center">

# Angelic nvim

Port of the VS Code theme, [Vesper](https://github.com/raunofreiberg/vesper)

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

This function can be used to set the colorscheme in your editor, however, if it doesn't work for you, you can always use `vim.cmd.colorscheme('vesper')`.

### Specifics for Some Plugins

#### Bufferline.nvim

To use the theme with [bufferline.nvim](https://github.com/akinsho/bufferline.nvim), you can use the following configuration:

```lua
require('bufferline').setup({
    highlights = require('angelic').bufferline.highlights,
})
```

## Why this colors?
You may be wondering why the colors changed a lot, and well, the colors are because of what I see on my girlfriend.
She's a bit of this colors, and you can see it on her outfits, and even on her personality.

## Contributing

Contributions are welcome, please open an issue if you encounter any bug or if you find any improvements are needed for the code, also feel free to open a PR.

Take a look at the [Development Guide](./DEVELOPMENT_GUIDE.md)

## License

[MIT License](LICENSE)
