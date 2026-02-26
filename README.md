# 💜 kuromi.nvim

> A dark, mischievous and irresistibly cute Neovim colorscheme inspired
> by Kuromi 😈✨\
> Vibrant purples. Electric pinks. Deep gothic vibes. Zero boring
> blacks.

---

![Neovim](https://img.shields.io/badge/Neovim-0.9+-57A143?style=for-the-badge&logo=neovim)
![Lua](https://img.shields.io/badge/Built%20with-Lua-000080?style=for-the-badge&logo=lua)
![License](https://img.shields.io/badge/license-MIT-purple?style=for-the-badge)

---

## ✨ About

**neovim-kuromi-theme** is a dark Neovim theme built with a playful but powerful
aesthetic.

It was designed to:

- 💜 Avoid pure black backgrounds\
- 🌸 Use soft pink‑tinted foreground text instead of harsh white\
- ⚡ Keep high contrast without visual aggression\
- 😈 Feel cute... but slightly chaotic

This theme is meant to be stylish, expressive and comfortable for long
coding sessions.

Because coding in purple just hits different.

---

## 🎨 Flavours

Choose your personality:

Flavour Description

---

`classic` Balanced purple elegance 💜
`neon` Bold, vibrant cyber chaos ⚡
`soft` Cozy lavender night 🌸
`gothic` Deep dark mischievous aesthetic 😈

---

## 📦 Installation (lazy.nvim)

```lua
{
  "leonardopompeu/neovim-kuromi-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("kuromi").setup({
      flavour = "soft", -- classic | neon | soft | gothic
      transparent = false,
    })
    vim.cmd.colorscheme("kuromi")
  end,
}
```

Then run:

    :Lazy sync

---

## ⚙️ Configuration

```lua
require("kuromi").setup({
  flavour = "classic",
  transparent = false,

  styles = {
    comments = { italic = true },
    keywords = { italic = false },
    functions = { bold = false },
    strings = {},
  },
})
```

---

## 🔄 Change flavour on the fly

    :KuromiFlavour neon
    :KuromiFlavour gothic

---

## 🖥 Recommended Setup

For the best experience:

- Enable `termguicolors`
- Use a Nerd Font
- Optional terminal transparency
- Kitty / WezTerm / Alacritty recommended

---

## 🌟 Screenshots

Add screenshots of each flavour here ✨

---

## 📜 License

MIT

---

## 💖 Contributing

Pull requests are welcome!\
If you have ideas for integrations, improvements or new flavours ---
feel free to open an issue.

---

## 😈 Final Words

Stay mischievous.\
Stay cute.\
Keep coding in purple.

Made with 💜 by **Leozin**
