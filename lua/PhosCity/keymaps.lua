lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"

-- Resize with arrows
lvim.keys.normal_mode["<C-Down>"] = ":resize -2<CR>"
lvim.keys.normal_mode["<C-Up>"] = ":resize +2<CR>"
lvim.keys.normal_mode["<C-Right>"] = ":vertical resize -2<CR>"
lvim.keys.normal_mode["<C-Left>"] = ":vertical resize +2<CR>"

-- Select all
lvim.keys.normal_mode["<C-a>"] = "gg<S-v>G"

-- Save
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"

-- keep cursor in the same place when joining lines
lvim.keys.normal_mode["J"] = "mzJ`z"
