# meloworld nvim — cheat sheet

> the goal isn't to memorize this. use it as a reference until things become muscle memory.

---

## modes

| key      | mode                                  |
| -------- | ------------------------------------- |
| `i`      | insert mode (type text)               |
| `Esc`    | back to normal mode                   |
| `v`      | visual mode (select characters)       |
| `V`      | visual line mode (select whole lines) |
| `Ctrl+v` | visual block mode (select columns)    |
| `:`      | command mode                          |

---

## navigation (normal mode)

### basic movement

| key       | action                                |
| --------- | ------------------------------------- |
| `h j k l` | left / down / up / right              |
| `w`       | jump to start of next word            |
| `b`       | jump to start of previous word        |
| `e`       | jump to end of word                   |
| `0`       | start of line                         |
| `^`       | first non-blank character of line     |
| `$`       | end of line                           |
| `gg`      | top of file                           |
| `G`       | bottom of file                        |
| `5G`      | go to line 5                          |
| `Ctrl+d`  | scroll half page down (centered)      |
| `Ctrl+u`  | scroll half page up (centered)        |
| `%`       | jump to matching bracket              |
| `{` / `}` | jump between blank lines (paragraphs) |

### searching

| key          | action                   |
| ------------ | ------------------------ |
| `/word`      | search forward           |
| `?word`      | search backward          |
| `n`          | next match               |
| `N`          | previous match           |
| `*`          | search word under cursor |
| `<leader>nh` | clear search highlights  |

### jumping (advanced)

| key       | action                          |
| --------- | ------------------------------- |
| `f{char}` | jump to next {char} on line     |
| `F{char}` | jump to previous {char} on line |
| `t{char}` | jump before next {char}         |
| `;`       | repeat last f/t jump            |
| `,`       | repeat last f/t jump (reverse)  |
| `Ctrl+o`  | go back to previous location    |
| `Ctrl+i`  | go forward                      |

---

## editing (normal mode)

### operators

| key      | action                         |
| -------- | ------------------------------ |
| `d`      | delete                         |
| `c`      | change (delete + enter insert) |
| `y`      | yank (copy)                    |
| `p`      | paste after cursor             |
| `P`      | paste before cursor            |
| `u`      | undo                           |
| `Ctrl+r` | redo                           |
| `.`      | repeat last change (powerful!) |
| `~`      | toggle case of character       |
| `>`      | indent                         |
| `<`      | de-indent                      |
| `=`      | auto-indent                    |

### operators + motions (the vim language)

| combo  | action                  |
| ------ | ----------------------- |
| `dw`   | delete word             |
| `d$`   | delete to end of line   |
| `dd`   | delete entire line      |
| `cc`   | change entire line      |
| `yy`   | copy entire line        |
| `gg=G` | auto-indent entire file |
| `3dd`  | delete 3 lines          |
| `5yy`  | copy 5 lines            |

### text objects (the magic)

| combo | action                     |
| ----- | -------------------------- |
| `ciw` | change inner word          |
| `diw` | delete inner word          |
| `yiw` | copy inner word            |
| `ci"` | change inside quotes       |
| `ca"` | change including quotes    |
| `ci(` | change inside parentheses  |
| `ci{` | change inside curly braces |
| `cit` | change inside html tag     |
| `das` | delete a sentence          |
| `dap` | delete a paragraph         |

> pattern: `{operator}{i/a}{object}` — `i` = inside, `a` = around

### useful single keys

| key       | action                            |
| --------- | --------------------------------- |
| `x`       | delete character                  |
| `r{char}` | replace character with {char}     |
| `o`       | new line below + insert mode      |
| `O`       | new line above + insert mode      |
| `A`       | go to end of line + insert mode   |
| `I`       | go to start of line + insert mode |
| `D`       | delete to end of line             |
| `C`       | change to end of line             |
| `J`       | join line below to current        |

---

## surround (mini.surround)

| combo   | action               | example                 |
| ------- | -------------------- | ----------------------- |
| `gsa"`  | add `"` around       | `hello` → `"hello"`     |
| `gsd"`  | delete `"`           | `"hello"` → `hello`     |
| `gsr"'` | replace `"` with `'` | `"hello"` → `'hello'`   |
| `gsaf`  | add function call    | `hello` → `func(hello)` |
| `gsa(`  | add parentheses      | `hello` → `(hello)`     |
| `gsa{`  | add curly braces     | `hello` → `{hello}`     |

---

## visual mode

| key             | action                               |
| --------------- | ------------------------------------ |
| `v` then motion | select text                          |
| `V`             | select lines                         |
| `d`             | delete selection                     |
| `y`             | copy selection                       |
| `c`             | change selection                     |
| `>` / `<`       | indent / de-indent (stays in visual) |
| `J` / `K`       | move selection up/down               |
| `~`             | toggle case of selection             |

---

## splits & windows

| key              | action               |
| ---------------- | -------------------- |
| `:vsp`           | vertical split       |
| `:sp`            | horizontal split     |
| `Ctrl+w h/j/k/l` | move between splits  |
| `Ctrl+w =`       | equalize split sizes |
| `Ctrl+w q`       | close split          |

---

## buffers

| key          | action             |
| ------------ | ------------------ |
| `Shift+l`    | next buffer        |
| `Shift+h`    | previous buffer    |
| `<leader>x`  | close buffer       |
| `<leader>fb` | browse all buffers |

---

## file tree (neo-tree)

| key         | action                    |
| ----------- | ------------------------- |
| `<leader>e` | toggle file tree          |
| `l`         | open file / expand folder |
| `h`         | close folder              |
| `a`         | create file               |
| `d`         | delete file               |
| `r`         | rename file               |
| `q`         | close tree                |

---

## telescope

| key          | action                  |
| ------------ | ----------------------- |
| `<leader>ff` | find files              |
| `<leader>fg` | live grep (search text) |
| `<leader>fb` | find buffers            |
| `Ctrl+j/k`   | move up/down in results |
| `Esc`        | close telescope         |

---

## markdown

| key          | action                              |
| ------------ | ----------------------------------- |
| `<leader>mg` | open glow preview (floating window) |
| `q`          | close glow window                   |

> render-markdown renders inside the buffer in normal mode.
> glow opens a separate floating window for comfortable reading.
> both are active — use render-markdown while editing, glow for reading.

## aesthetic

| key / command        | action                           |
| -------------------- | -------------------------------- |
| `<leader>mg`         | glow markdown preview            |
| `:SmearCursorToggle` | toggle cursor animation          |
| `u` / `Ctrl+r`       | undo / redo (with glow)          |
| `p` / `P`            | paste below / above (with glow)  |
| `y`                  | yank (with glow)                 |
| `Ctrl+d` / `Ctrl+u`  | smooth scroll down / up          |
| `Ctrl+f` / `Ctrl+b`  | smooth scroll full page          |
| `zz` / `zt` / `zb`   | center / top / bottom (animated) |

---

## lsp

| key          | action                         |
| ------------ | ------------------------------ |
| `gd`         | go to definition               |
| `gr`         | find references                |
| `K`          | hover documentation            |
| `<leader>ca` | code action                    |
| `<leader>rn` | rename symbol                  |
| `[d`         | previous diagnostic            |
| `]d`         | next diagnostic                |
| `<leader>xx` | open trouble (all diagnostics) |
| `<leader>xX` | buffer diagnostics only        |
| `<leader>cs` | symbols panel                  |

---

## git (gitsigns)

| key          | action            |
| ------------ | ----------------- |
| `]h`         | next hunk         |
| `[h`         | previous hunk     |
| `<leader>gs` | stage hunk        |
| `<leader>gr` | reset hunk        |
| `<leader>gp` | preview hunk      |
| `<leader>gb` | toggle line blame |
| `<leader>gd` | diff this file    |

---

## completion (blink.cmp)

| key          | action                        |
| ------------ | ----------------------------- |
| `Tab`        | accept completion / next item |
| `Shift+Tab`  | previous item                 |
| `Ctrl+Space` | manually trigger completion   |
| `Ctrl+e`     | dismiss                       |

---

## command mode tips

| command         | action              |
| --------------- | ------------------- |
| `:w`            | save                |
| `:q`            | quit                |
| `:wq`           | save and quit       |
| `:q!`           | quit without saving |
| `:e filename`   | open file           |
| `:!cmd`         | run shell command   |
| `:%s/old/new/g` | replace all in file |
| `:s/old/new/g`  | replace all in line |
| `:Lazy`         | open plugin manager |
| `:Mason`        | open mason          |
| `:checkhealth`  | check neovim health |

---

## the vim mindset

**operators + motions = power**
instead of holding arrow keys, think in sentences:

- `ci"` = "change inside quotes"
- `dap` = "delete a paragraph"
- `ggVG` = "select the entire file"
- `viw~` = "toggle case of this word"

**`.` is your best friend**
the dot key repeats your last change. make a change, move to the next place, press `.`

**don't reach for the mouse**
every time you reach for the mouse, ask yourself — is there a motion for this?

---

_part of meloworld — [github.com/melatonia](https://github.com/melatonia)_
