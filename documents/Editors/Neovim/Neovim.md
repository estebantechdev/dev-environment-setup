### Neovim

#### Neovim Installation

Install using the Building Neovim steps from GitHub.com. Build is all right to be able to use Neovim Extension in VS Code. In case of that your currently Neovim OS version is 0.4 from the official repositories, notice that the version 0.5 is the minimum requirement for the VS Code Extension **VSCode Neovim** t work. Checkout that extension and also **NeoVimSync**.

Steps:
<br />Verify previous Neovim installations:

```shell
$ dpkg -l | grep "neovim"
```

Verify the current Neovim version:

```shell
$ nvim --version
```

Remove Neovim 0.4 or lower:

```shell
$ sudo apt remove neovim
```

Clone the release repository from GitHub.com:

```shell
$ cd
$ git clone https://github.com/neovim/neovim
```

Build prerequisites:

```shell
$ sudo apt update
$ sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
$ sudo apt autoremove
```

Make:

```shell
$ cd neovim && make
```

Install:

```shell
$ sudo make install
```

Verify the defult location (/usr/local):

```shell
$ whereis nvim
```

Verify the new release version (IT should be the latest relase, for example, 0.8):

```shell
$ nvim --version
```

References:
<br />Topic: Official Neovim website
<br />Web: <https://neovim.io>
<br />Topic: GitHub installation:
<br /><https://github.com/neovim/neovim/wiki/Installing-Neovim>
<br />Topic: Building Neovim
<br >Web: <https://github.com/neovim/neovim/wiki/Building-Neovim>
<br />Topic: Build prerequisites
<br >Web: <https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites>

#### Keyboard Shortcuts

##### Open vim VS nvim

```shell
$ vim
$ nvim
```

##### Type in after entering nvim

This opens nvim in **NORMAL** mode.
<br />Start typing to force the program to input characters when you see the vim welcome screen, which means enter to **INSERT** mode.

##### Change from **INSERT** or another mode to **NORMAL** mode

If Vim is in another mode, for example, **INSERT** mode, you can access **NORMAL** mode by pressing `Esc` or `<C-[>` (`CTRL` + `[`.

##### Exit from Vim or Neovim if you haven't edited

Press `:` + `q`, then `ENTER` key.

##### Exit from Vim or Neovim if you have edited but don't want to save changes

Press `ESC` **2 times**, press `:` + `q!`, then `ENTER` key.
Press `ESC` **2 times**, press `:` + `qa!`, then `ENTER` key to abandon changes and then close the file, helps to avoid the creation of uncomfortable swap files.

##### Open a file with vim or nvim

```shell
$ nvim index.js
$ vim index.js
```

The document opens in NORMAL mode, by default.

##### Move the cursor to the left (<) (NORMAL mode)

Press `h`.

##### Move the cursor to the right (>) (NORMAL mode)

Press `l`.

##### Move the cursor up (^) (NORMAL mode)

Press `k`.

##### Move the cursor down (v) (NORMAL mode)

Press `j`.

##### Move the cursor to the beginning of the next object or word (>>) (NORMAL mode)

Press `w` **one time**.

##### Move the cursor forwards through the beginning of words or objects (>>) (NORMAL mode)

Press `w` the times required until the cursor is positioned on the wanted word.

##### Move the cursor backwards through the beginning of words or objects (<<) (NORMAL mode)

Press `b` the times required until the cursor is positioned on the wanted word.

##### Move the cursor forwards through the end of words or objects (>>) (NORMAL mode)

Press `e` the times required until the cursor is positioned on the wanted word.

##### Insert text in the position before the current position (INSERT mode)

**Position the cursor** where you want to insert text then press `i`. The cursor style changes.
<br />Type in your new **text to insert**, or press `BACKSPACE` to **delete text**, or press `ENTER` to **insert a new line**.
<br />Press `ESC` **two times** to exit the **INSERT** mode and return to the **NORMAL** mode.
<br />Note: Pressing `ESC` just one time does the same as pressing it two times, but the mode change takes more time.

##### Insert text in the position after the current position (INSERT mode)

**Position the cursor** where you want to insert text then press `a`. The cursor style changes.
<br />Type in your new **text to insert**, or press `BACKSPACE` to **delete text**, or press `ENTER` to **insert a new line**.
<br />Press `ESC` **two times** to exit the **INSERT** mode and return to the **NORMAL** mode.
<br />Note: Pressing `ESC` just one time does the same as pressing it two times, but the mode change takes more time.

##### Insert text at the end of the line (INSERT mode)

**Position the cursor** somewhere in the line that you want to insert text into then press `A` (`SHIFT` + `A`, capital "A"). The cursor style changes and goes to the end of the line.
<br />Type in your new **text to insert**, or press `BACKSPACE` to **delete text**, or press `ENTER` to **insert a new line**.
<br />Press `ESC` **two times** to exit the **INSERT** mode and return to the **NORMAL** mode.
<br />Note: Pressing `ESC` just one time does the same as pressing it two times, but the mode change takes more time.

##### Delete characters (NORMAL mode)

Go to the **first character** of the text that you want to delete then press `x`, **one time per character** to delete.

##### Save or write changes to disk (NORMAL mode)

Press `ESC` **2 times** to make sure that you are currently in **NORMAL** mode, press `:` + `w`, then `ENTER` key.

##### Save changes to disk and exit the file in one step (NORMAL mode)

Press `ESC` **2 times** to make sure that you are currently in `NORMAL` mode, press `:` + `wq`, then `ENTER` key.

##### Go to the definition of the word, being this a function, etc., in the same file (NORMAL mode)

For example, this code:

```js
const { help } = require('./helper.js')
[ ... ]
help()

```

**Position the cursor** on **help()** then press `g` + `d`. It will move the cursor to **{ help }** in the constant **const** definition line.
<br />Note: Save changes to the file before proceed.

##### Go to the definition of the word, being this a function, etc., in the "imported" file (NORMAL mode)

For example, this code:

```js
const { help } = require('./helper.js')
[ ... ]
help()

```

Once you **found out the line with the definition** using `g` + `d`, move the cursor to a position on the file which has the **definition**, for example, on **helper.js**, then press `g` + `f`. It will open the **file** with the **definition**, for example, this code:

```js
module.exports.help = () => {
  console.log('lala')
}
```

Note: It could be required saving changes to the file before proceed.

##### Come back to the previous file you were working on before going to the definition, to the line mentioning the file, for example the mention of "helper.js" (NORMAL mode)

Press `CTRL` + `o`.

##### Come back to the first definition word, function, etc., for example, the mention of "help()" (NORMAL mode)

Press `CTRL` + `o`.

Actually, at this point we are navigating the history backwards. It also includes **cursor positioting** and **text inputting**.
<br />Check out: **Undo one change (NORMAL mode)**

##### History buffers (NORMAL mode)

The history of the definition and file accesses will stack.
<br />To **go back** in the history:
<br />`CTRL` + `o`.
<br />To **go forward** in the history:
<br />`CTRL` + `i`.

##### Delete a word (NORMAL mode)

Go to **the word** that you want to delete then press `d` + `w`.

##### Delete a sequence of words (NORMAL mode)

Go to the **first word** of the sequence of words that you want to delete then press `d` + `w` **the times required**, one per each word.

##### Undo one change (NORMAL mode)

Press `u`.

##### Undo many changes (NORMAL mode)

Press `u` **the times required**, once per action.
<br />Actually, you can undo all the changes and reach a file without any change made. Similar to exiting the file without saving any change made.

##### Redo changes (NORMAL mode)

Press `CTRL` + `r` **the times required**, once per action.
<br />You can move forward all the changes made until the newest one.

##### Delete a complete line (NORMAL mode)

Go to the **beginning of the line** you want to delete.
<br />Press `d` + `d`. The first **d** changes the cursor and the second **d** is the one that actually deletes the line.

##### Delete many lines, one by one (NORMAL mode)

Go to the **first line** of the **group of lines** that you want to delete.
<br />Press `d` + `d` **per line to remove** each of them at a time.

##### Combine operators and movements (NORMAL mode)

Let's describe 3 deletion options.

##### Deletes from left to right, from the cursor position, including it, to the beginning of the next object or word, including the free spaces between the two words (NORMAL mode)
Press `d` + `w` then **release the keys** not to repeat the action many times.

##### Deletes from right to left, from the position before the cursor position backwards to the beginning of the word or object (NORMAL mode). If the cursor is at the first character, the deletion includes the previous word or object.
Press `d` + `b`.

##### Deletes from left to right, from the cursor position, including it, to the end of the object or word, without including any free space between that word and the next word (NORMAL mode)
Press `d` + `e`.

##### Combine operators, movements, and numbers (NORMAL mode)

##### Delete words in one combination, in order to avoid using d + w many times (NORMAL mode)

For example, for this initial line:

```js
const = numbers = [1, 2, 3, 4, 5];

```

**Position the cursor** on the **number 1** then press `d` + `1` + `w`.
<br />Result: [, 2, 3, 4, 5] 
<br />**Position the cursor** on the **number 1** then press `d` + `2` + `w`.
<br />Result: [2, 3, 4, 5]
<br />**Position the cursor** on the **number 1** then press `d` + `3` + `w`.
<br />Result: [, 3, 4, 5]
<br />**Position the cursor** on the **number 1** then press `d` + `4` + `w`.
<br />Result: [3, 4, 5]

##### Cut a complete line and paste it below another line (NORMAL mode)

Go to **the line that you want** to cut and **copy to the clipboard** then press `d` + `d`.
<br />Now, **go to the line above** the line where you want to **insert the line from** the clipboard then press `p`.
<br /> You can press `u` to **undo** the pasted line.

##### Paste a complete line above another line (NORMAL mode)

Go to the **line below the line** where you want to **insert the line from** the clipboard then press `P` (`SHIFT` + `P`.)

##### Cut a character to clipboard and paste it somewhere else (NORMAL mode)

Press `x` **on the character** that you want to remove then press `p` to **paste it from** the clipboard.
<br />In case of that you **cut with** `x` and then **paste with** `p` using **two actions**, the character **gets pasted** one character after the character next to the one that you cut before, or, in other words, **after the cursor**.

##### Cut to the clipboard many text lines at a time (NORMAL mode)

Position the cursor on the **first line of the group** of lines that you want to cut then press **the number of lines to cut** then press `d` + `d`, for example:
<br />Press `2` + `d` + `d`, to **cut 2 lines**.
<br />Press `8` + `d` + `d`, to **cut 8 lines**.
<br />To **paste the lines from the clipboard** press `p` or `P`.

##### Replace a character (INSERT mode)

Go to the character to replace.
<br />Press `a`, press `BACKSPACE`, type in **the new character**.
<br />Press `ESC` to return to the **NORMAL mode**.

##### Replace character(s) (INSERT mode)

Go to the character next to the character(s) to replace.
<br />Press `i`, to enter the **INSERT mode**.
<br />Press `BACKSPACE`, to remove the character(s).
<br />Type in **the new character**.
<br />Press `ESC` to return to the **NORMAL mode**.

##### Replace a character (NORMAL mode)

Go to the character to replace.
Press `r`.
Type in **the new character**.

##### Delete a word to type in a replacement with the Change Operator (INSERT mode)

Go to the **beginning** (first character) of the word to replace.
<br />Press `c` + `w` to **delete the word**.
<br />Type in the **word replacement**.
<br />PRess `ESC` to return to the **NORMAL** mode.

Go to any inner character of the word or object to replace.
<br />Press `c` + `i`, release, then press `w` to **delete the word**.
<br />Type in the **word replacement**.
<br />Press `ESC` to return to the **NORMAL** mode.

Note: There will be more alternatives to these commands with the neovim plugins.

##### Identify the current line of code (NORMAL mode)

In Vim:
Press `CTRL` + `g` to display the current line number.

In Neovim `1` + `CTRL` + `g` displays the path to the file, the file name, the number or lines and the percentage of the file.

In Neovim:
<br />Checkout the line number in the bottom's right side, for example: "19, 24" means that the cursor is at the line 19, column 24.

##### Go to the beginning of file (NORMAL mode)

Identify the current line of code.
<br />Press `g`, `g` (two times.)

##### Go to the end of file (NORMAL mode)

Identify the current line of code.
<br />Press `G` (`SHIFT + G`.)

##### Go to any line of code (NORMAL mode)

Identify the current line of code.
<br />Press **the line number** that you want to go to, for example, 22.
<br />Press `G` (`SHIFT + G`.)

##### Go back to the previous line of code after moving to a new sector

Option 1:
<br />Check out the section: **Go to any line of code (NORMAL mode).**

Option 2:
<br />Check out the section: **History buffers (NORMAL mode)**, to move back or forward in history.

##### Go down or up in the text

Options:

With the option enabled, the cursor moves text up or down when reaches less lines than the value established in the option.

```vim
set scrolloff=5             " Determines the number of context lines above and
                            " below the cursor.
```
With `CTRL` + `D` the text moves down.

With `CTRL` + `D` the text moves up.

With `SHIFT` + `UP` the text moves UP one page.

With `SHIFT` + `DOWN` the text moves down one page.

Use of number and arrow, E.g.: `10` + `j`.

##### Move cursor to end or the beginning of file in Neovim (NORMAL mode)

Press `SHIFT` + `G` to move cursor to the last line of the file.
<br />Press `ESC` + `CTRL` + `END` to jump to the end of file to the last character of the line.
<br />Hit `ESC` + `CTRL` + `HOME` to jump to the start of file to the last character of the line.
<br />Press `ESC` + `gg` to go to top the file. It remembers previous cursor positions if moved out of that first line using `ARROWS`.
<br />Press `ESC` + `G` to go to bottom of the file. It remembers previous cursor positions (`h`, `j`, `k`, `l`).
<br />Press `ESC` + `G` + `A` to go to bottom of the file and in append text mode. In other words, jump to last line and start writing code/text.

##### Neovim tasks compared to VS Code tasks

References:
<br />How does Vim compare to a modern text editor such as VS Code? (Response to DistroTube’s Vim video):
<br />Video: <https://m.youtube.com/watch?v=8EKK7b5h7XE>

Task: Moving lines around:
- Neovim: In **NORMAL mode**, press `dd` to delete current line , and `p` to pu the text after cursor.
- VS Code: `CTRL` + `x` to cut the text, and `CTRL` + `v` to paste the text above the cursos.

Task: Swap the current line with the next line:
- Neovim: Press `ddp`.
- VS Code: To move the line up, press `ALT` + `UpArrow`, and to move the line dowm, press `ALT` + `DownArrow`. You can select multiple lines and move them around.

Task: Move a word to another place, for example move the word Hello to the end of the file.
- Neovim: The 12 Steps:
<br />1 In **NORMAL mode** Press `/` to search the word (or use an alternative such as easy motion.)
<br />2 Type in the word to search for.
<br />3 Press `Enter` to select the word.
<br />4 Press `viw` to copy the word.
<br />5 Press `y` to copy the word.
<br />6 Press `G` to go to the bottom of the file.
<br />7 Press `I` to go to the beginning of the line in INSERT mode. Or, press `0` and then press `i`.
<br />8 Press `SPACE BAR` to be able to paste the text at the beginning of the line.
<br />9 Press `ESC` + `ESC` to go to **NORMAL mode**.
<br />10 Press `p` to paste the word copied.
<br />11 Press `I` to go to the beginning of the line in INSERT mode.
<br />12 Press `BACKSPACE` to remove the blank space at the beginning of the line.
- VS Code: Copy or cut the selected text. Go to the end of the file. Paste the text copied. Swap the lines as needed.

Task: Similarly to the previous task, but copy the complete line and put it somewhere else, for example, at a new line at the end of the file.
<br />Neovim: Steps:
<br /> The step 4 is: press `V` to enter the **VISUAL mode**.
<br /> The step 5 is: press `y` to copy the complete line.
<br /> The step 7 (and the final ste, btw) is: press `p` to paste the line copied one line below from cursor position.
<br />VS Code: Do it manually, by using copy/cut and then paste, or swapping down many times your selected line.

Task: Go to the last cursor position:
- Neovim: Options:
<br /> `'.`: Jump to last modification line.
<br />.+BACKTICK-SIGN: Jump to exact spot in last modification line.
<br />`CTRL-O`: Retrace your movements in file in backwards. Test logging movements with text searches "/" several times.
<br />`CTRL-I`: Retrace your movements in file in forwards. Test logging movements with text searches "/" several times.
<br />Note: Jumps are remembered in a jump list. With the CTRL-O and CTRL-I command you can go to cursor positions before older jumps, and back again. Thus you can move up and down the list. There is a separate jump list for each window. The maximum number of entries is fixed at 100.
- VS Code: Go back with `ALT` + `LEFT ARROW`, and go forward with `ALT` + `RIGHT ARROW`. You can go to the definition of a word or function, by using: `CTRL` + `SHIFT` + `O`.

Note: It works along multiple files which could come in handy if want to switch among multiple files a lot.

Task: Indenting multiple lines:
- Neovim: Steps:
<br />Switch to **COMMAND mode** with `SHIFT` + `:`.
<br />Type in the range of lines to indent, from the first to the end, for example to indent the lines from 19 27 of the file **quoted strings.txt** do:

```vim
:19,27>
```

Then press `ENTER`.
- VS Code: Select the text to indent with the `mouse`, then press `TAB`.

Task: Remove the opening quotes from a list of quoted strings: 
<br />Example: File: **quoted strings.txt**

```code
"one"
"two"
"three"
"four"
"five"
"six"
"seven"
"eight"
"nine"
"ten"
"eleven"
"twelve"
"thirteen"
"fourteen"
"fifteen"
"sixteen"
"seventeen"
"eighteen"
"nineteen"
"twenty"
"twenty one"
"twenty two"
"twenty three"
"twenty four"
"twenty five"
"twenty six"
"twenty seven"
"twenty eight"
"twenty nine"
"thirty"
"thirty one"

```

- Neovim: Steps:
<br />Go to the start line/point.
<br />Press `0` to go to the first character of the line, for example, an opening double quote `"`.
<br />Press `CTRL` + `v` to enter the **VISUAL BLOCK mode**.
<br />Use directions `h`, `j`, `k`, `l`, to select other opening quotes of some lines down. For example, use `j` or `5j` to select 5 lines down.
<br />Type `d` or `CTRL` + `i` to delete the selected opening quotes from the lines. All the opening quotes are gone.

Task: Remove the closing quotes from a list of quoted strings (**with macros**): 
- Neovim: Steps:
<br />Go one line before the start line/point, for example to the line 9, containing a string "nine".
<br />Record a macro:
<br />Press `q`.
<br />Press `2` to record a register "2".
<br />The message "recording @2" appears in the **modes bar**. So everything I do from now on is a recorded macro.
<br />Press `j` to go down one line (to the 10th line).
<br />Press `$` to go to the end of the line to the last character, for example, a closing double quote `"`.
<br />Press `x` to delete the closing double quote of your first line where you want to remove.
<br />Press `q` to stop recording the macro.
<br />Run the macro:
<br />You need to know exactly how many times run it, from line to line. Use the line numbers as reference. So, for example if you started recording in the line 9, the macro recording used the line 10th, so you wanted to delete the closing quotes from the line 11 to the line 20 (10 times):
Type in `10@2`.
<br />Note: If you want to manually/line-by-line delete both double quotes at the beginning and the end of every string, you can use a combination of the commands `ds"` (plugin surround.vim) and the repeat command `.` (activated for **surround.vim** thanks to the plugin **repeat.vim**.)
- VS Code:
<br />Go to the first line of the code to modify. You can use `HOME` key.
<br />Select the block of code with double quotes to be removed, by using the "Column Selection Mode" `CTRL` + `SHIFT` + `DOWN ARROW`.
<br />Press `DELETE` key to remove the first double quotes of all the lines.
<br />Press `END` key to go the end of every line of the block of code selected.
<br />Press `DELETE` key or `BACKSPACE` key to delete the last character of every line of the selected block of code, which are the closing double quotes.
<br />Press `ESC` to exit the multiline selection status.

Task: Add opening quotes to a list of strings without quotes:

Example file: **strings no quotes.txt**:

```vim
one
two
three
four
five
six
seven
eight
nine
ten
eleven
twelve
thirteen
fourteen
fifteen
sixteen
seventeen
eighteen
nineteen
twenty
twenty one
twenty two
twenty three
twenty four
twenty five
twenty six
twenty seven
twenty eight
twenty nine
thirty
thirty one

```

- Neovim: Steps:
<br />In the file **strings no quotes.txt**.
<br />Press `gg` to go to the first line of the file.
<br />Press `$` to go to the first character of the file.
<br />Press `CTRL` + `v` to go into **VISUAL BLOCK mode (V-MODE)**.
<br />Press `30j` to select all the first characters of the strings from the line 1 (current line) to 30 (30 times, use the line numbers as your reference.)
<br />Press `SHIFT` + `I` to access the **INSERT mode**. The insert cursor appears before the currently selected character (the first character of the line) in the first line of the selected block.
<br />Press `"` as the character to be inserted. Actually, it could be any desired character.
<br />Press `ESC` `ESC` to apply the insertion in all the selected block lines.

<br />Alternatively, you can repeat the action, by pressing `.` in **NORMAL** mode.
<br />This procedure cannot done with the plugin **surround.vim (vim-surround)** key shorcuts due to it works on single lines with html like marks.

Task: Add closing quotes to a list of string without closing quotes:

<br />Steps to ADD the last character of every selected "column" (closing double quotes) using macros:
<br />Press `gg` to go tot the first line of the file.
<br />Press `q2` to start recording the macro in the register '2'.
<br />Press `j` to go down one line.
<br />Press `SHIFT` + `A` to change to append text at the end of the line in **INSERT mode**.
<br />Press `"` to add the new symbol at the end of the line (closing double quote.)
<br />Press `ESC` to go back to the **NORMAL mode**.
<br />Press `q` to stop recording the macro.
<br />Type in the times to run the registered macro from that position:
<br/> `29@2`.
- VS Code:
<br />Select the block of code (the lines required), by using the "Column Selection Mode" `CTRL` + `SHIFT` + `DOWN ARROW`.
<br />Press `SHIFT` + `END` to make the selection cover each line fully.
<br />Press `"` to add double quotes to every string in every line of the text selected.

Task: Change the next search of a word:
- Neovim" Steps:
<br />Using the file **strings no quotes.txt**.
<br />Press `/` to start a search.
<br />Type in `one` to search the word "one".
<br />Press `ENTER`. It makes you come back to **NORMAL mode** and selects the next search match, equals `twenty one`.
<br />Type in `cgn` to remove the searched selection.
<br />Type in the **searched selection replacement**.
<br />I can do search multiple times to replace every instance one at a time. A simple way to do the job is by the repeat key `.` in **NORMAL mode** It also starts from the beginning of the document when you reached the end of it.
<br />Press `ESC` to enter the **NORMAL mode**.
- VS Code: Steps:
<br />Search for the word "one".
<br />Press `ENTER` to skip the first match.
<br />Press `ESC` to finish searching.
<br />Press `CTRL` + `d` several times to select more occurrences.
<br />Finally, edit all the matches all simultaneously.

Task: **USING PATTERNS**, search for the first occurrence of the string ‘one’ in the current line and replace it with ‘billion’ if there is a match:

You can use the sample file **repeated words.txt**:

```code
eleven	one	one	thirteen		thirteen
twelve	two	two	fourteen		fourteen
thirteen	three	three	fifteen		fifteen
fourteen	four	four	sixteen		sixteen
fifteen	five	five	seventeen		seventeen
sixteen	six	six	eighteen		eighteen
two	seven	seven	nineteen		nineteen
three	eight	eight	three		twenty one
four	nine	nine	four		twenty one
five	ten	ten	five		twenty two
six		six	six		twenty three
seven		seven	seven		thirteen
eight		eight	eight		fourteen
nine		nine	nine		fifteen
ten		ten	ten		sixteen
eleven		eleven	eleven		seventeen
twelve		twelve	twelve		eighteen
thirteen		thirteen	thirteen		nineteen
fourteen		fourteen	fourteen		twenty one
fifteen		fifteen	fifteen		twenty one
sixteen		sixteen	sixteen		twenty two
seventeen		seventeen	seventeen		twenty three
eighteen		eighteen	eighteen		thirteen
nineteen		nineteen	nineteen		fourteen
twenty one		twenty one	twenty one		fifteen
twenty one		twenty one	twenty one		sixteen
twenty two		twenty two	twenty two		seventeen
twenty three		twenty three	twenty three		eighteen
twenty four		twenty four	twenty four		nineteen
twenty five		twenty five	twenty five		twenty one
twenty six		twenty six	twenty six		twenty one
twenty seven		twenty seven	twenty seven		twenty two
twenty eight		twenty eight	twenty eight		twenty three
twenty nine		twenty nine	twenty nine		
thirty one		thirty one	thirty one		

```

- Neovim:

```vim
:s/one/billion/
```

Press `ENTER` to apply changes or `ESC` to revert them.

Task: **USING PATTERNS**, Replace all occurrences of the search pattern in the current line.
- Neovim: 
Add the **g flag**, like this:

```vim
:s/one/billion/g
```

Press `ENTER` to apply changes or `ESC` to revert them.

Task: **USING PATTERNS**, search and replace the pattern in the entire file.
- Neovim:
Use the percentage character **%** as a range from the first line to the last line of the file. **Without the flag g** it is going to replace only the first ocurrence of the lines matching the pattern. **With the flag g**, it is going to replace all the matching ocurrences in the entire file. 

```vim
:%s/one/billion/
:%s/one/billion/g
```

Task: **USING PATTERNS**, delete all instances of the string ‘one’ in the current line.
- Neovim:
Use the {pattern} part, but avoid using the {string} part:

```vim
:s/one//g
```

Note:
<br />Instead of the slash character (/), you can **use any other non-alphanumeric single-byte character except as a delimiter**. This option is useful **when you have the ‘/’ character in the search pattern or the replacement string**.

```vim
:s|one|billion|
```

Note:
<br />To **confirm each substitution**, use the c flag:

```vim
:s/one/billion/gc
:%s/one/billion/gc
```

Task: **USING PATTERNS WITH REGULAR EXPRESSIONS**, replace all lines starting with ‘foo’ with a new line ‘Vim rocks!’:
- Neovim:
These regular expressions are specific to Vim/Neovim and may not work exactly the same way in other regular expression engines or text editors. Vim has its own regex dialect with some unique features and conventions.

```vim
:%s/^th.*/Vim rocks!/gc
```

Note:
<br />The "^" (**caret**) symbol matches the beginning of a line and ".*" matches any number of any characters.
<br /> Check out the **References** for more information on regular expressions.

Task: **USING PATTERNS WITH REGULAR EXPRESSIONS**, replace all the 4 spaces with 2 spaces:
These regular expressions are specific to Vim/Neovim and may not work exactly the same way in other regular expression engines or text editors. Vim has its own regex dialect with some unique features and conventions.
- Neovim:
This helps to change indentation.

```vim
:%s;^\(\s\+\);\=repeat(' ', len(submatch(0))/2);g
```

Task: **USING PATTERNS**, replace all the Tab with 2 spaces:
- Neovim:
This helps to change indentation.

```vim
:%s/\t/  /g
```

Task: **USING PATTERNS**, run case sensitive searches ignoring case sesitivity:
- Neovim:
To ignore case for the search pattern, use the i flag:
<br /> Searching for “FOO” will not match “Foo”:

```vim
:s/One/billion/gi
:%s/One/billion/gi
```

Task: **USING PATTERNS**, substitute all occurrences of ‘one’ to ‘billion’ in all lines starting from line 18 to line 26:
- Neovim:

```vim
:18,26s/one/billion/g
```

Task: **USING PATTERNS**, substitute ‘one’ in all lines starting from the current line to the last one:
<br>The dot **.** character indicates the current line and **$** - the dollar sign the last line.
- Neovim:

```vim
:.,$s/one/billion/
.,$s/one/billion/g
```

Task: **USING PATTERNS**, substitute each ‘one’ with ‘billion’ starting from the current line and the four next lines:
- Neovim:

```vim
:.,+4s/one/billion/
:.,+4s/one/billion/g
```

Note:
<br />The line specifier can also be set using the ‘+’ or ‘-’ symbol,followed by a number that is added or subtracted from the preceding line number. If the number after the symbol is omitted, it defaults to 1.

Task: **SEARCHING FOR A WHOLE WORD, ONLY**, instead of **USING PATTERNS (which includes subtrings inside words)**:
- Neovim:
<br />Type **\<** to mark the beginning of a (whole) word, enter the search pattern, type **\>** to mark the end of a word.

```vim
:s/\<ten\>/billion/
:%s/\<ten\>/billion/gc
```

More Neovim Examples:
<br /> Comment lines (add # before the line) from 5 to 20:

```vim
:5,20s/^/#/
```

Uncomment lines from 5 to 20, revert the previous changes:

```vim
:5,20s/^#//
```

Replace all instances of ‘apple’, ‘orange’, and ‘mango’ with ‘fruit’:

```vim
:%s/apple\|orange\|mango/fruit/g
```

Remove trailing whitespace at the end of each line:

```vim
:%s/\s\+$//e
```

References:
<br />Topic: Find and Replace in Vim / Vi.
<br />Web: <https://linuxize.com/post/vim-find-replace/>
<br />Topic: Regular Expressions in Grep (Regex).
<br />Web: https://linuxize.com/post/regular-expressions-in-grep/
<br />Topic: Search and Replace in Multiple Files in Vim/Neovim.
<br />Web: https://jdhao.github.io/2020/03/14/nvim_search_replace_multiple_file/#:~:text=In%20Sublime%2DText%20and%20other,with%20the%20built%2Din%20features
<br />Topic: RegExr is an online tool to learn, build, & test Regular Expressions (RegEx / RegExp).
<br />Web: <https://regexr.com/>
<br />Topic: Escaping a forward slash in a regular expression.
<br />Web: https://stackoverflow.com/questions/6076229/escaping-a-forward-slash-in-a-regular-expressions

Note: Some tasks mentioned are already logged in this current file or can be completed by putting in to practice alternative methods or plugins. For example, searches and replacements can be done with **FzF** (Fuzzy Search plugin.)

Task: Setup abbreviations:
- Neovim: 
Setup an abbreviation:

```vim
:ab fsf Free Software Foundation
```

Switch to **INSERT mode**.
<br />Type in: `The fsf`, then press `SPACE`. The text abbreviation `fsf` will be replaced with `Free Software Foundation`. 
<br />Type in: `The fsf`, then press `CTRL` + `v` to do not expand the text `Free Software Foundation`, type in `.org` to complete a web URL `fsf.org`.
- VS Code: Define a snippet using a snippet file:

```json
"fsf": {
	"prefix": "fsf",
	"body": "Free Software Foundation"
}

```

To use the snippet, press `TAB` afterwards, to expand it.
<br />To do note expand the snippet, just type 'fsf' as usual, as you configured VS Code to only expand snippets when pressing `TAB`.
<br />You can also assign snippets to keyboard shortcuts.

Task: Running shell commands from within Neovim:
- Neovim: 
Open the sample file: "root-file.txt". It has root ownership and group.
This command will save changes made in a still open read only file in a new file called "sudo tee root-file.txt" in teh same directory, so to keep a copy of the changes made during the read only session.

```vim
:w !sudo tee %
```

The command `!` preceeds any terminal command typed after it. I.e.:

```vim
:!ls -la
```

- VS Code:
When saving a file when it is open in read mode, a dialog asks you to select the button `Retry as Sudo...`, but it does not work, unfortunately.
Open the VS Code builtin terminal with `CTRL` + `BACKTICK-SIGN`.

##### Find text (NORMAL mode)

Press `/`, and then type in the **text to search**.
<br />Press `ENTER`.
<br />Neovim will search for all the matches forwards and backwards and highlights the results.
<br />Vim only searches for forwards.

To search backwards in Vim use:
<br />Press `/`, and then type in `?**text to search**` (the text beginning with "?").
<br />Press `ENTER`.

##### Look for occurrences in the current file (NORMAL mode)

For example, look for the word **const** in the file index.js:

```vim
:g?const

```

This will **highlight all the occurrences containing the string 'const'**.
<br />Press `ENTER`.
<br />When the message "Press ENTER or type command to continue" appears, **look for again using the list of results to fine your searching**:

```vim
:g?const sum

```

Press `Enter` to go to the particular occurrence that you were looking for.
<br />Occurrences can be anything but text. You can use **this method** or, for example, **easymotion**, or **pressing `/`** to **find out references to external files** and **enter the referenced file using the built-in Neovim shortcuts**.

Another shortcut to **hightlight all the matching occurrences** or **look for nearest one**, is:
<br />With the **cursor on the occurrence to look for ...***
<br />Press `SHIFT` + `*`.

##### Move forwards through Find text results (NORMAL mode)

<br />Check out: **Find text**.
<br />After finding the text.
<br />Press `n` to position the cursor on the next matching text.

##### Move forwards through Find text results (NORMAL mode)

<br />Check out: **Find text**.
<br />After finding the text.
<br /><br />Press `N` (`SHIFT` + `N`) to position the cursor on the next matching text.

##### Go to the other pair bracket from the current bracket (NORMAL mode)

Go to a particular opening or closing bracket, curly brace or parenthesis pair.
<br />Press `%` (`SHIFT` + `5`.)

The tool is useful for debugging embedded code.

##### Select and Remove a code block in vim (NORMAL mode)

From the brace line.
Hit `$` to go to the end of the lineover the bracket **" { "**.
<br />Push `v` or `V` (depending on whether you want to select lines or not.)
<br />Push `%` (to jump to the matching bracket).

From the brace or the brace line.
Press `j` to go down one line so your cursor is inside the braces you are trying to select.
<br />Press `v` to begin a selection (`V` for whole lines.)
<br />Press `i{` to select everything inside the braces.

Note: Press `ESC` to unselect.

Code example:

```js
const sum = (ns) => {
  let accumulated = 0;
  for (i = 0; i < ns.length; i++) {
    accumulated += ns[i];
  }

  return accumulated;
}

```

**Alternative** examples with **INSERT mode** (just for fun):

1. Remove all the code from the beginning of the line of the opening brace, to the closing brace, except for the line of the closing brace:
<br />Using the code example, go to the for statement's **opening brace**.
<br />Press `c`.
<br />Then press `j` or `DOWN` arrow.

The resultant code will be:

```js
const sum = (ns) => {
  let accumulated = 0;

  }

  return accumulated;
}

```

Undo the change:
Press `ESC` to return to the **NORMAL mode** and then press `u`.

2. Remove all the code in the line of the opening brace, including the line of code above the opening brace:
<br /> Using the code example, go to the for statement's **opening brace**.
<br />Press `c`.
<br />Then press `k` or `UP` arrow.

The resultant code will be:

```js
const sum = (ns) => {

    accumulated += ns[i];
  }

  return accumulated;
}

```

Undo the change:
Press `ESC` to return to the **NORMAL mode** and then press `u`.

3. Remove all the code in the line of the closing brace, including the line of code above it:
<br /> Using the code example, go to the for statement's **closing brace**.
<br />Press `c`.
<br />Then press `k` or `UP` arrow.

The resultant code will be:

```code
const sum = (ns) => {
  let accumulated = 0;
  for (i = 0; i < ns.length; i++) {
    

  return accumulated;
}

```

Undo the change:
Press `ESC` to return to the **NORMAL mode** and then press `u`.

##### Go to beginning of the line (NORMAL mode)

Press `0`.

##### Go to end of the line (NORMAL mode)

Press `$`.

##### Replace a text in-line with (NORMAL mode)

Press `0` to go to beginning of the line.
<br />Do not use 'dd' to delete.
<br />Press `:`.
<br />Type in `s/OLD_CHAR_CHAIN/NEW_CHAR_CHAIN`, used for replacement.
<br />Press `ENTER` key to confirm.
<br />E.g:

```vim
:s/word1/word2

```

##### Replace all the occurrence of a text in-line with (NORMAL mode)

Press `0` to go to beginning of the line.
<br />Do not use 'dd' to delete.
<br />Press `:`.
<br />Type in `s/OLD_CHAR_CHAIN/NEW_CHAR_CHAIN/g`, used for replacement.
<br />Press `ENTER` key to confirm.
<br />E.g:

```vim
:s/word1/word2/g
```

##### Replace a string across a file without asking for any confirmation (NORMAL mode)

Press `0` to go to beginning of the line.
<br />Do not use 'dd' to delete.
<br />Press `:`.
<br />Type in `%s/OLD_CHAR_CHAIN/NEW_CHAR_CHAIN/g`, used for replacement.
<br />Press `ENTER` key to confirm.
<br />E.g:

```vim
:%s/word1/word2/g

```

##### Replace a string across a file asking for every individual occurrence confirmation (NORMAL mode)

Press `0` to go to beginning of the line.
<br />Do not use 'dd' to delete.
<br />Press `:`.
<br />Type in `%s/OLD_CHAR_CHAIN/NEW_CHAR_CHAIN/gc`, used for replacement.
<br />Press `ENTER` key to confirm.
<br />E.g:

```vim
:%s/word1/word2/gc

```

##### Replace all the text occurrences in a particular range of lines (NORMAL mode)

<br />Press `:`.
<br />Type in `BEGIN#,END#s/OLD_CHAR_CHAIN/NEW_CHAR_CHAIN/gc`, used for replacement.
<br />Press `ENTER` key to confirm.
<br />E.g:
<br />Change each 'foo' to 'bar' for all lines from line 6 to line 10 inclusive.

```vim
:6,10s/foo/bar/g
```

##### Open a new line below the current line (NORMAL mode)

Press `o`. It opens the new line below and changes to **INSERT** mode.

Press `ESC` if you want to return to **NORMAL** mode.
<br />Press `u` if you want to undo.

Note: In comments lines such as **// Comment** the action will create a new line that includes the two forward slashes (**//**.)

##### Open a new line above the current line (NORMAL mode)

Press `SHIFT` + `o`. It opens the new line above and changes to **INSERT** mode.

Press `ESC` if you want to return to **NORMAL** mode.
<br />Press `u` if you want to undo.

##### Enter the REPLACE mode to replace characters (NORMAL mode)

Press `R` (`SHIFT` + `r`).
<br />Start replacing characters when you see the underscore like cursor.

##### Go to the VISUAL mode to copy or cut and delete or paste text (NORMAL mode)

Position the cursor in the starting point.
<br />Press `v` to enter the **VISUAL** mode.
<br />Use the **arrow** keys `h`, `j`, `k`, `l`, or the ARROWS keys (not recommended because of their position out of the main keyboard), to **highlight the code to copy or cut**.

Now, with the text highlited we have 3 actions:

To delete or cut the text highlighted:
<br />Press `x`.

To copy the text highlighted:
<br />Press `y`.

To paste the text highlighted:
<br />Press `p`.

Note: In any case it returns to **NORMAL** mode when the chosen action finishes.

##### Tag Completion

`CTRL` `]`
Or use:
`CTRL` + `X` 

##### Decrease the size of the text

Press `CTRL` + `-`.   

##### Increase the size of the text
Press `CTRL` + `0`.	

##### Paste text from external clipboard
Press `CTRL` + `SHIFT` + `v`.

##### Run a Bash command in the Neovim's command line

Use the bang prefix (!)

```vim
:!git
"!ls -la
```

##### How to Delete all Text in a File Using Vi/Vim Editor (NORMAL mode)

In **NORMAL** mode, Immediately after opening a file.
<br />Type `gg` to move the cursor to the first line.
<br />Type `dG` to delete all the lines or text in it.
<br />If Vim is in another mode, for example, **INSERT** mode, you can access **NORMAL** mode by pressing `Esc` or `<C-[>` (`CTRL` + `[`.

Alternatively, you can clear all lines or text in Vi/Vim in command mode by running the following command.

```vim
:1,$d
```

Another method consists of sending an empty string to the file:

```shell
$ echo "" > path/to/file
```
##### Save new/untitled file or Save As file from Neovim:

<br />Switch to **COMMAND mode** with `SHIFT` + `:`.

```vim
: sav new_file_name
: saveas file_copy_name
```

##### File operations:

Check out the section of the plugin  NERDTree.

Once on a file in NERDTree, press `m`, and you will be able to create new directories and new files in the directory, rename files (move files), delete files, open the file directory in the system's file manager, open the file with the system editor, copy the file, copy the path to the file or a system command in the current directory.

References:
Topic: How to rename a file in Vim?
<br/ >Web: <https://mokacoding.com/blog/vim-rename-file/>

##### End of line and end of file

You can add the next code to the file `~/config/.vimrc:

```vim
"setl ff=unix fixeol             " You want files in Unix format (every line NL terminated)
"setl ff=dos fixeol              " You want to use an old MS-DOS file in a modern environment
"setl ff=dos nofixeol noeol eof  " You want to drop the final <EOL> and add a final CTRL-Z
"setl nofixeol                   " You want to preserve the fileformat exactly as-is, including any final <EOL> and final CTRL-Z
```

References:
Topic: Editing a file with Vim.
<br />Web: <https://neovim.io/doc/user/editing.html>

##### Setting up Vim or Neovim

##### Install terminal enhancers Zplug, fzf, ripgrep, igrep, bat, Vifm

- zplug - Zsh Plugin Manager
- fzf - a general-purpose command-line fuzzy finder
- ripgrep (rg) - a line-oriented search tool
- igrep - Interactive Grep
- bat (batcat) - A cat(1) clone with syntax highlighting and Git integration
- Vifm - Vim-like file manager

These tools improve the usage of the terminal and the most of them can also be used as terminal commands inside Neovim, like:

```vim
:!<COMMAND> <COMMAND-ARGS>
```

Examples:

Once in a Tmux session, open Neovim:

```shell
$ tmux-new-session -s Neovim
$ nvim
```

Once in Neovim, split the window:

```vim
:!tmux split-window
```

**fzf (also check the fzf Neovim plugin section)**:

Fuzzy completion for bash and zsh:

$ nvim (do not press enter yet)

`CTRL` + `R`: Fuzzy find a command in the command history.

`CTRL` + `T`:	Fuzzy find a file from the current working tree.

Press `ENTER` to open the file.

Press `ESC` to exit the program.

**igrep**:

```shell
$ ig help . --editor nvim
```

**bat**:

```shell
$ batcat <FILE>
```

Some useful Oh My Tmux shortcuts:

`PREFIX` + `B` , `1-9` : Switch windows by their number IDs.

`PREFIX` + `B` , `Q` : Display pane numbers.

`PREFIX` + `B` , `SHIFT` + `PERCENT SIGN` : Split window vertically.

`PREFIX` + `B` , `"` : Split window horizontally.

`PREFIX` + `B` + `ARROWS` : Resize the active pane.

`PREFIX` + `B` , `ARROWS` : Switch panes.

Default PREFIX = CTRL.

Some useful Vifm commands:

Run the program:

```shell
vifm
```

Use `ARROWS` or `h`, `j`, `k`, `l` to move among files.

Press `ENTER` to enter a directory or open a file.

The file will open using the default system editor, E.g.: nano.

To change the editor for terminal:

Make Neovim the terminal editor. Put: **export EDITOR=/usr/local/bin/nvim** in **~/.bashrc**, **~/.zshrc** or the like.

Exit the program:

Press `Z` + `Z`

Vim like commands:

```vifm
:colorschemes
```

Check out the cheatsheets.

Resources:

Topic: Installation steps.
Web: <https://github.com/estebanways/diy-linux-book/tree/main/Module5/Zplug%2C%20fzf%2C%20ripgrep%2C%20igrep%2C%20bat>

Topic: Vifm installation.
Web: <https://github.com/estebanways/diy-linux-book/tree/main/Module5/Vifm>

##### Allow Neovim to use the Vim configuration file (only for Neovim users)

Create or edit the file **~/.config/nvim/init.vim** and add the next lines to it:

```shell
$ nvim ~/.config/nvim/init.vim
```

```vim
" ------------------------------------------------------------------------------
" Sets the runtimepath for Vim plugins and runtime files
" ------------------------------------------------------------------------------
" Adds ~/.vim to the start of runtimepath
" Appends ~/.vim/after to runtimepath
" Sets the packpath to match the runtimepath
" Sources the user's Vim configuration file
" ------------------------------------------------------------------------------
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

```

Save changes and exit the file:
<br />`ESC`, `ESC`, `:`, `wq`, `Enter`.

Create the file **~/.vimrc**:

```shell
$ touch ~/.vimrc

```

Now, Vim and Nvim can share the same configuration file.
<br />You can create backups of the file before add/replace configuration options.
<br />You can create the file as a symbolic link to other directories such as the a new file ~/.config/.vimrc and make this your configuration file.

Note:
To find out the system wide configuration file (usually in **/etc/**, but we are not going to use it):

```shell
$ whereis vim
```

To test the configuration file, open it up:

```shell
$ cd
$ nvim .vimrc
```

Add this line to the file:

```vim
set number

```

Save changes and reopen the file using nvim.

```shell
$ cd
$ nvim .vimrc
```

If the configuration went well, there you'll see the line numbers in the left side of the editor.

Now, you are ready add features to the editor.

##### Create a custom config directory, Git repository and files

Create the new directory:

```shell
$ cd
$ mkdir config
$ cd config
$ git init
$ touch .gitignore
```

Add some lines to the file .gitignore

```shell
$ nano config/.gitignore
```

```.gitignore
.vim/plugged
.DS_Store
.netrwhist

```

```shell
$ cat config/.gitignore
```

Create a symbolic link from ~/.vimrc to ~/config/.vimrc

```shell
$ cd
$ cp .vimrc .vimrcBAK
$ mv .vimrc config/.vimrc
$ rm .vimrc
$ ln -s config/.vimrc .vimrc
```

Create a symbolic link from ~/.zshrc to ~/config/.zshrc

You **CAN SKIP** this step to avoid editing the paths defined in .zshrc, for example
the NVM (Node.js) configuration, which will be required by particular Neovim plugin managers and/or plugins to work. 
<br />Remember that NVM is running a default version of Node.js, and if you change it, then install nvim plugin taht requires Node.js, you are installing it and prbably running it using that particular version.

```shell
$ cd
$ cp .zshrc .zshrcBAK
$ mv .zshrc config/.zshrc
$ rm .zshrc
$ ln -s config/.zshrc .zshrc
```

Create a symbolic link from ~/.vim to ~/config/.vim

```shell
$ cd
$ cp -dpR .vim/ .vimBAK/
$ mv .vim/ config/.vim/
$ rm .vim/
$ ln -s config/.vim/ .vim/
```

Check configurations, include the symbolic links:

```shell
$ cd
$ ls -la
$ ls -la configs/
```

You could change the Oh My Zsh! configuration, and add a Powerline plugin to Neovim as a bar, later on. Edit the theme in  the new **.zshrc**.

```shell
ZSH_THEME="nanotech"
```

Troubleshooting:
<br/ >If you loose the Node configuration, in case of that it was in the file .zshrc, re add the line to export "export" NVM in the file. Check out the topic **"Node JS Installation"**.

##### Add new basic features to nvim in the config file ~/.vimrc

Add this lines to the config file ~/.vimrc (You can avoid comment lines starting with `"`.)

```shell
$ cd
$ nvim .vimrc
```

```vim
" Adds line numbers
set number
" Enables mouse drag and drop and click to move cursor
set mouse=a
" Defines the width of line numbers
set numberwidth=1
" Allows the mouse to copy and paste selection
set clipboard=unnamed
" Colorizes text
syntax enable
" Shows the executing commands (keyboard keys)
set showcmd
" Shows the cursor position (y, x)
set ruler
" Underline the current line
set cursorline
" Defines encoding
set encoding=utf-8
" Highlights the matching parethesis
set showmatch
" Changes tabulation with TAB to 2 spaces
set sw=2
" Displays the distance from the current line to every other line
set relativenumber
" Searching
set hlsearch        " highlight matches
set incsearch       " incremental searching
set ignorecase      " searches are case insensitive ...
set smartcase       " ... unless they contain at least one capital letter
" Controls when/how to display the status-bar
set laststatus=2
" Removes the modes bar at the end of the editor
set noshowmode
" Sources of the current file
"so ~/.vim/plugins.vim
"so ~/.vim/plugin-config.vim
"so ~/.vim/maps.vim

```

Save changes, exit and reopen the file to reflect and verify the changes made.

This is a command to source files without leaving the editor/closing the file. I don't discard the idea that is not always going to work:

```vim
:so % " Sources the current file thatt is open 
:so ~/Path/to/the/file-to-source
:so ~/.vimrc
```

Notes:
<br />Relative number use case:
- Position the cursor shows the current line in the left side.
- Check the relative **number** of the line for the code where you want to go to.
- Press that `number` and then press the direction key to reach that line using `h`, `j`, `k`, or `l`. 

To use search:
<br />
<br />Press `/`, then type in the **text** to search for in the file.
<br />Neovim will hightlight all the matching ocurrerences.

References:
<br />Topic: Config files repository on GitHub.com
<br />Web: <https://github.com/nschurmann/configs/blob/master/.vimrc>

<br />The option **laststatus** controls when/how to display the status-bar. Options:
- 0 (never).
- 1 only if you have more than 2 windows, the status bar shows.
- 2 always.

##### Install the plugin manager

The next is an example on how to manually install a plugin using Vim's built-in package support:

```shell
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q
```

This method is a common way to install Vim plugins using the built-in package management system. This method is compatible with many plugins, but there are a few considerations:

Git Repository Availability: The plugin you want to install should be available in a Git repository. Most Vim plugins are hosted on GitHub or other Git hosting platforms.

Directory Structure: The plugin should follow a directory structure that is compatible with Vim's package management system. The common convention is to have a subdirectory named "start" within the plugin directory, as in ~/.vim/pack/{author}/start/{plugin}.

Help Tags: If the plugin provides help documentation, you might need to generate help tags, as demonstrated in the last part of your commands.

Assuming these conditions are met, you can generally use a similar set of commands to install other plugins. Just replace the repository URL in the git clone command with the URL of the plugin you want to install.

Vim/Neovim Plugins are equivalent to VS Code Extensions.
<br />There are a lot of plugin managers.
<br />And, even more plugins. This is a perfect place to visit for getting ranked lists of plugins, installation information, and configuration recipes:
Web: <https://vimawesome.com/>

Install **vim-plug**, a Minimalist Vim Plugin Manager:
<br />Go to the GitHub.com repo: <https://github.com/junegunn/vim-plug>
<br />Follow the latest instructions to download the **Neovim installation for Unix, Linux**:

```shell
$ cd
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Note:
<br />The website describes **other ways to add plugings to the configuration** file. For example, install plugins from other directories or repo branches, etc. It also has a **complete list of commands** and **command options**, such as to upgrade, check status, **global options** and **key bindings**.

To uninstall plugins:
<br />Delete the Plug line(s) from your **.vimrc**, Save and reopen the file (source the file), and call `:PlugClean`.

This is a command to source files without leaving the editor/closing the file:

```vim
:so % " Sources the current file that is open 
:so ~/Path/to/the/file-to-source
:so ~/.vimrc
```

To upgrade plugins:

```vim
:PlugUpdate PLUGIN-NAME
:PlugUpdate fzf
```

Getting help commands:
<br />This example code assumes that you have a plugin "lightline" already installed.

```vim
:h g:lightline.colorscheme
:h g:lightline
:q  " Exit the help file lightline.txt
```

Display a complete list of Plug commands:

```vim
:Plug " Then press TAB
```

##### Install vim-plug for plugins. Install Vim themes

Tell Neovim where to install the plugings:
<br />Add new lines at the end of the configuration file **~/.v`:imrc**:

```shell
$ cd
$ nvim .vimrc
```

```vim
" Looks for installed plugins in the plugins directory
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

```

Save, close and reopen the file for neovim to load the new changes.
<br />Type in `:`.
<br />Type in `Plug`.
<br />Press `TAB`.
<br />Press `TAB` to to open the mini-menu and select the option `PlugInstall` from the mini-menu.
<br />Use `TAB` to move forwards.
<br />Use `SHIFT + TAB` to move backwards.
<br />Press `ENTER` to begin the installation.
<br />When the plugin installs. Close and reopen the file for Neovim to load the new changes.

Altenatively, from terminal, you can run this command before reopen Neovim:

```shell
$ nvim +PlugInstall
# For vim, you can use:
$ vim +PlugInstall
```

<br />Now, **to set up the theme**, add new a section with some lines at the end of the configuration file **~/.vimrc**:

```shell
$ cd
$ nvim .vimrc
```

```vim
" Grubvox options
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
```

Save, close and reopen the file for neovim to load the new changes.
<br />The new theme has to work.
Save and reopen the file and install the plugin.
Let's add a second theme, **Oceanic-next**:
<br />Go to their GitHub site to follow the instructions: <https://www.dunebook.com/best-vim-themes/>

In the section Themes of the file **~/.vimrc**, add the plugin oceanic-next

```vim
Plug 'mhartington/oceanic-next'
```

Install the plugin with the plugin manager.

In the section Gruvbox options of the file **~/.vimrc**, disable gruvbox, and add the section for Oceanic-next for **Neovim** (for Neovim users):

```vim
" Grubvox options
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

" Oceanic-next options
" If you have Neovim >= 0.1.5
"if (has("termguicolors"))
"" set termguicolors
"endif
"colorscheme OceanicNext
```

Also add the theme Dracula:

```vim
Plug 'Mofiqul/dracula.nvim'           " Theme Dracula
```

```vim
" Vim-Script
"colorscheme dracula
"colorscheme dracula-soft
```

Save, close and reopen the file for neovim to load the new changes.
<br />The new theme has to work.

Note that Grubvox is the theme that will come up with that configuration. You can switch the configuration by commenting the active theme and uncommenting the configuration of new one wanted.

More themes available, with installation steps and options for a variety of them:
<br />Gruvbox: <https://github.com/morhetz/gruvbox>.
<br />Molokai: <https://github.com/tomasr/molokai>.
<br />Purify: <https://github.com/kyoz/purify>.
<br />Oceanic-next: <https://github.com/mhartington/oceanic-next>.
<br />Dracula theme:<https://github.com/Mofiqul/dracula.nvim>

References:
<br />Topic: Articles talking about themes to choose from.
<br />Web: <https://benfrain.com/the-best-neovim-color-schemes-in-2021/>
<br />Web: <https://www.dunebook.com/best-vim-themes/>

##### Install vim-plug plugins: Easymotion

Use:
<br />We are going to set up the plugin to respond to the key `SPACE BAR` followed by 2 characters, in **NORMAL** mode. Neovim will highlight and assign a particular key over every ocurrence matching the 2 characters' among the screen. After that, the operator will press the key that corresponds to the position where to go to (prompt "Target key:"). Nvim will move the cursor over the selected position.

Edit the file **~/.vimrc**.

<br />At the end of the section Themes **add a new section IDE**, which will include the new call to the plugin Easymotion:

```vim
" IDE
Plug 'easymotion/vim-easymotion'
```

<br />At the end of the section "Oceanic-next options (the last theme added), add the map leader, which is ** a blank space** and the nmap.

```vim
" Map leader
let mapleader=" "

" Easymotion options

nmap <Leader>s <Plug>(easymotion-s2)
```

Save changes, exit the file, and reopen the file to apply changes.

Install the plugin:
<br />Type in `:`.
<br />Type in `Plug`.
<br />Press `TAB`.
<br />Press `TAB` to select the option `PlugInstall` from the mini-menu.
<br />When the plugin installs. Close and reopen the file for Neovim to load the new changes.

Verify that the plugin works as you expected. For example, use the characters **"be"** after `SPACE BAR`, `s` to search for and position the cursor on the word "begin".

Note:
<br />Easymotion searches are case sensitive.

References:
Easy Motion Alternatives:
Neovim motion plugins compared: Quick Scope v Hop v Lightspeed
Web: <https://www.youtube.com/watch?app=desktop&v=HNzrQnqJ9N8>

##### Install vim-plug plugins: Nerdtree

Add the plugin line to **~/.vimrc**:

```vim
Plug 'scrooloose/nerdtree'
```

And the command option:

```vim
" Nerdtree options
" NERDTree configuration
let g:NERDTreeChDirMode=2
"let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
"let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
let g:NERDTreeQuitOnOpen=1
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>
"" set shortcut for open Nerdtree
map <C-n> :NERDTreeToggle<CR>
"" Make Nerdtree show .files by default
let NERDTreeShowHidden=1
```

Save and reopen the file and install the plugin.

To open Nerdtree:
<br />Press`F2` key.

To exit Nerdtree:
<br />Press `q`.

To toggle Nerdtree ON/OFF:
<br />Press `F3` key or press `CTRL` + `n`.

To navigate the directories:
<br />Use `ARROWS` or the mouse.

To open a file:
<br />Press `Enter` or use `Double Click`, or press `s`. 
<br />This option `s` opens the file in the Nerdtree terminal, so we have two files open side by side in different terminals. Now, we can't go back to close the first file we open in the first terminal, but this behavior will change by installing the plugin 'vim-tmux-navigator.'

Open the file operations on a file:
<br />Move to a file or click on a file, then  press `m`. You  will see the next options to choose from:

```vim
NERDTree Menu. Use j/k/enter, or the shortcuts indicated
> (a)dd a childnode
(m)ove the current node
(d)elete the current node
(r)eveal the current node in file manager
(0) pen the current node with system editor (c)opy the current node
copy (p)ath to clipboard
(l)ist the current node (C) hange node permissions
Run (s)ystem command in this directory

```

With these options you can create new directories and new files in the directory, rename files (move files), delete files, open the file directory in the system's file manager, open the file with the system editor, copy the file, copy the path to the file or a system command in the current directory.

To get help menu:
<br />Press `?`.

References:
Topic: My NeoVim config + Dracula theme + NerdTree
<br />Web:<https://gist.github.com/prkstaff/a8d9ab54318e462f0321444bba472504>

##### Navigating between open files

Add the plugin line to **~/.vimrc**:

```vim
Plug 'christoomey/vim-tmux-navigator'
```

Save and reopen the file and install the plugin.

Usage:
Open Nerdtree to test the tmux like behavior.
Press `CTRL`. Do not release while switch among terminals (panes) with `h`, `j`, `k`, `l`.

Two files open is useful to compare two or more file differences, manually.

To keep open the new file and close the old one, which is open side by side:
Go to the old file and exit the file.

```vim
:q
:wq
:q!
```

##### Custom Neovim keyboard shortcuts

Add the plugin lines to the options section of the file **~/.vimrc**:

```vim
" Custom shortcuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
```

Custom command shortcut to save changes:
<br />`SPACE BAR`, `w`

Custom command shortcut to exit the file:
<br />`SPACE BAR`, `q`

##### Install vim-plug plugins: ultisnips

Web: <https://github.com/SirVer/ultisnips>
Web: <https://github.com/honza/vim-snippets>

Add the plugin to the section of the file **~/.vimrc**:

```vim
" UltiSnips is the ultimate solution for snippets in Vim
" Track the engine
Plug 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
```

And add this at the end of the option sections:

```vim
" UltiSnips options
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
```

Installing the Python package pynvim:
<br />Notice that if you do not have Python or is not active for your current development environment, of if you don not install the package **pynvim** you will get errors like these in Neovim:

```log
No "python3" provider found. Run :checkhealth provider
```
Or this:

```log
Failed to load python3 host [...]
```

You can list Neovim errors/status using this command:

```vim
:CheckHealth
```

Install pynvim for Neovim plugin compatibility with plugin managers like UltiSnips or Coc.nvim in system Python, (base) an every other virtual environment with pip, like: `pip install pynvim`, `pip3 install pynvim`, `pip3.11 install pynvim`.

<br />To install pip at system level:

```shell
$ sudo apt-get update
$ sudo apt-cache search pip
$ sudo apt-cache search pip3
$ sudo apt-get install pip
$ pip --version
```

```shell
$ python3 -m pip install --user --upgrade pynvim

```

Remember that you can upgrade pip and any python package.

Note: The package is not in Anaconda Python, so you cannot install it with `$ conda install <PACKAGE>`.

Installation at system level:

```shell
$ pip install pynvim
```

To list pynvim installation from any Anaconda's environment or at system level:

```shell
$ pip list | grep pynvim
```

Usage:
<br />Open a file, for example, the file **Hello World.py**. Use `$ nvim Hello\ World.py`.
<br />Press `TAB` next to the string `imp`.
<br />The autocomplete options appear.

TODO: Test the options <c-b> and <c-z> in .vimrc and change them if you will.


Vendor Snippets:
Additional library and framework snippets are available for UltiSnips users in the UltiSnips/ directory. These files are removed from the default language namespaces to prevent them from all being loaded automatically. If there is a separate library, framework, or package you would like to support open a pull request!

Additional snippets can be added to the current buffer with the `:UltiSnipsAddFiletypes` command followed by the snippet name without the "snippets" ending. For example, to add the JavaScript Jasmine snippets, run: `:UltiSnipsAddFiletypes javascript-jasmine`. To have this snippet loaded everytime a JavaScript file is opened or created you can add the command to your **-.vim/ftplugin/javascript.vim** file. Another way is to add `autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine` in your **.vimrc**.

For more see the UltiSnips docs (`:help UltiSnips`).

More information on the GitHub website.

##### Kite installation

- Kite installation:

Note: Kite works perfectly with the currently installed VS Code, version v.1.67.1, and it does work with the current Neovim, version 0.8, built from source, even when the Kite plugin's UI to connect Kite and Neovim tells you that there is no connection and there is an error.

Consider GitHub Copilot as an alternative to Kite: https://github.com/github/copilot.vim

References:
<br />Topic: Kite adds AI powered code completions to your code editor, giving developers superpowers:
<br />Web: <https://www.kite.com/kite-is-temporarily-unavailable/>
<br />Web: <https://www.kite.com/>
<br />Web: <https://www.kite.com/linux/>

Installation Instructions for Linux:
<br />Run the following command to install Kite (make sure that you are using the bash shell):
```shell
$ bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"
```
Kite will launch automatically after installation, as it is configured by default. You can also launch Kite from the application's menu of your desktop environment.

You need to set up Kite and activate your Editors and IDEs plugins after the installation, unless there is a compatibility problem.

How to test it in Neovim:
<br />Kite works with Python by default.
<br />Open a Python file, like this, **Hello World.py**:

```python
import django as dj
import os.sys from os
imp

# This program prints Hello, Wordl!

```

Try to complete the string "imp" to create "import".
<br />You should see the Kite "autocompletion" ocurrences list. Kite option are identified by a little octahedron next to every Kite option.
<br />Pick an option with `ARROWS`.
<br />Or press `SPACE BAR` to show more options.

##### Install vim-plug plugins: coc.nvim

Coc.nvim is a Language Server.
If you will a second, or even a third LS (Language Server), check out the compatility.

Web: <https://github.com/neoclide/coc.nvim>

It's capable of:

- Load UltiSnips snippets.
- Load snipmate snippets.
- Load **VSCode snippets from coc.nvim extensions**.
- Load VSCode snippets from custom directories.
- Load VSCode snippets from ${workspaceFolder}/.vscode.
- Load UltiSnips snippets from configured folder.
- Load massCode snippets from running massCode application (disabled by default).
- Create massCode snippets through the snippets.editMassCodeSnippets command.
- Provide snippets as completion items.
- Provide expand and expandOrJump keymaps for snippet.
- Provide snippets list for edit snippet.
- Provide snippets.editSnippets command for edit user snippets of current filetype.

Note: some features of ultisnips and snipmate format snippets not supported, checkout Ultisnips features.

Add the plugin to the section of the file **~/.vimrc**:

```vim
" ------------------------------------------------------------------------------
" Plugins / Snippets / Coc.nvim
" ------------------------------------------------------------------------------
" Coc.nvim, or Conquer of completion
" True snippet and additional text editing support
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using npm
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

" Or build from source code by using yarn: https://yarnpkg.com
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" Coc Extensions list:
" coc-snippets
" coc-json
" coc-tsserver
" coc-css
" coc-sh
" ADD HERE

```

Close and reopen the file, and install the plugin.

Install these extensions:
```vim
:CocInstall coc-json coc-tsserver coc-css
```

Always add the CoC plugin **Extensions** right after the CoC Plug section of the file **~/.vimrc**:

```vim
" Coc Extensions list:
" coc-snippets
" coc-json
" coc-tsserver
" coc-css
" coc-sh
" ADD HERE
```

Install pynvim for Neovim plugin compatibility with plugin managers like UltiSnips or Coc.nvim in system Python, (base) an every other virtual environment with pip, like: `pip install pynvim`, `pip3 install pynvim`, `pip3.11 install pynvim`.

Add this code from GitHub to the options section:

```vim
" Custom options

" Sets a local option specific to Sass/SCSS files, adjusting how Vim treats
" certain characters as keywords, with a focus on the @-@ sequence often used in
" Sass/SCSS syntax.
autocmd FileType scss setl iskeyword+=@-@

" Example Vim configuration.
" Configuration required to make coc.nvim easier to work with, since it doesn't
" change your key-mappings or Vim options. This is done as much as possible to
" avoid conflict with your other plugins.

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

```

But you'd better start with use this perfectly functional little version to avoid collisions with my shorcuts configuration. You can add more options when the whole neovim set up is complete:

```vim
" Coc.nvim options
" For scss files, you may need use:
autocmd FileType scss setl iskeyword+=@-@
```

This is a recommended current/latest version, recommended for the installation on the current document.

```vim
" Coc.nvim options
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" For scss files, you may need use:
autocmd FileType scss setl iskeyword+=@-@

```

Use this version for now, save, close and reopen the file to load the changes.

General Usage:

Use it in **NORMAL** mode.
<br /> coc will display two angle brackets **">>"** in the line number.
<br /> ">>" in blue means **code warnings**, and ">>" in red means **code errors**.
<br /> On **hover over** the code word, you will see that floating messages.
<br />An **error count** appears in the status bar, which is blank after the coc installation.
<br /> **coc LS errors** appear at the bottom, in red, below the status bar. For example, with the current configuration, it will show the error: "Failed to load python3 host..." when we change from **NORMAL** mode to **INSERT** mode and press `TAB` to call the completion (at this point in the installation is honza/vim-snippets).

Test coc with coc-tsserver:

<br />For example, LSP Plugin coc-tsserver works well with JS files:

```js
const projectName = 'tribute-page';
```

Test coc-tsserver, by switching to **INSERT mode** and deleting two characters from **'const'** to form **'co'**.
<br />Go back to **NORMAL mode**.
<br />Hover over **'co'**.
<br />coc-tsserver **should display suggestions** in red, on screen.
 
Working/tested functions, commands, and/or Shortcut Keys added into the section coc options in the file ~/.vimrc.

In **NORMAL** mode:
<br />Press keys `gd` to go to the word definition
<br />Press keys `gy` to go to the type definition
<br />Press keys `gi` to open the implemetation information
<br />Press keys `gr` to open the references information

More options:

```vim
:CocCommand, enter
```

To get a list of the commands for the specific file type that is open:

```vim
:CocList snippets
```

To manually check out or remove coc extensions, go to its directory **~/.config/coc**

References:
<br />Topic: CoC
<br />Web: <https://m.youtube.com/watch?v=OXEVhnY621M>

Topic: coc-css repo.
<br />Web: <https://github.com/neoclide/coc-css>

##### coc-kite installation

You can't use coc.nvim or any other completion plugins and kite-vim together. 
<br />In the case of this installation, there is a conflict between Kite and coc.nvim. In case of that you want to use both plugins, here is kind of a solution to toggle ON/OFF Kite in the configuration file **~/.vimrc:**.
<br />Web: <https://github.com/kiteco/vim-plugin/pull/183>

A list of some completion plugins:
- coc.nvim
- jedi-vim
- YouCompleteMe
- deoplete

Eventually, you could install each of the completion plugins and test that Kite for Vim still works.

Instructions to install the Kite plugin using the only plugin manager currently installed: vim-plug:
<br />Install this branch manually by (on macOS or Linux) first uninstall vim from Kite plugin manager, then:

```shell
# Next line only you don't have plugin manager installed, yet
$ mkdir -p ~/.vim/plugged
# Go to the directory
cd ~/.vim/plugged
# Remove previous Kite plugin installation
$ rm -rf kite
# Clone the plugin
$ git clone https://github.com/kiteco/vim-plugin.git kite
# Enter the repository
$ cd kite
# This way we could verify and checkout changes to the plugin
$ git checkout origin/178-other-completion-plugins
```

The next step is to install this plugin, from: <https://www.npmjs.com/package/coc-kite>.
<br />Note: You need to uninstall kite-vim first, if you have it.

```vim
:CocInstall coc-kite
```

Remember to reboot the machine, so finally the Kite message in red that says that Kite disabled Coc completion does not come up anymore when you change from NORMAL mode to INSERT mode, and attempt to complete a string such as 'imp' for 'import' in a **Python .py file**. 

Always add the CoC plugin **Extensions** right after the CoC Plug subsection 'Coc Extensions list' of the file **~/.vimrc**:

```vim
" coc-kite - Kite LS manager compatibility plugins
" ADD-HERE
```

Now, it is time for you add some Kite options' section to the file **~/.vimrc**. The information is available here: <https://github.com/kiteco/vim-plugin>

```vim
" Kite options
" Configuring supported languages
" Python, JavaScript, Go
'let g:kite_supported_languages = ['python', 'javascript', 'go']
" All the languages Kite supports
'let g:kite_supported_languages = ['*']
" Turn off Kite
'let g:kite_supported_languages = []
" Allow particular coc extensions to work, to avoid turning off Kite
let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]
```

Notice that with the configuration **'let g:kite_supported_languages = []**, Kite turned OFF, I can still see the Kite option in the completion lists. Then they would identified with a fancy word `[KITE]`. However the option **Go to definition** and the Kite commands are not going to work this way.

Save file changes and close it. Reopen it to source it to load the new configuration.

Go to Definition, inside the Kite application:
<br>Press `CTRL` + `K` (`SHIFT` + `k`) to jump to a method's definition.
<br />Or use:

```vim
:KiteGotoDefinition 
```

Commands list:

```vim
:KiteFindRelatedCodeFromFile " search for code related to the current file in the Copilot.
:KiteFindRelatedCodeFromLine " search for code related to the current line in the Copilot.
:KiteDocsAtCursor " show documentation for the keyword under the cursor in the Copilot.
:KiteOpenCopilot " open the Kite Copilot and focus on it.
:KiteGeneralSettings " open Kite's settings in the Copilot.
:KitePermissions " open Kite's permission settings in the Copilot.
:KiteTutorial " show a tutorial for using Kite with Vim.
:KiteEnableAutoStart " start Kite automatically when Vim starts.
:KiteDisableAutoStart " do not start Kite automatically when Vim starts.
:KiteGotoDefinition " jump to a method's definition.
```

##### Install vim-plug plugins: vim-css-color

The plugin highlights color attributes using the real color value, in CSS files.
<br />Web: <https://github.com/ap/vim-css-color/issues/49>

Install the plugin:
```vim
" Color
Plug 'ap/vim-css-color'
```

Example, file: **style.css**:

```css
h1  {
  color: #009;
  font-size: 1em;
  margin-bottom: .3em;
  text-align: center;
  text-decoration: underline;
  }
h1  {
  color: #ffff;
  font-size: 1em;
  margin-bottom: .3em;
  text-align: center;
  text-decoration: underline;
  }
```

##### Install vim-plug plugins: vim-dispatch

Leverage the power of Vim's **compiler plugins** without being bound by synchronicity. Kick off builds and test suites using one of several asynchronous adapters (including tmux, screen, iTerm, Windows, and a headless mode), and when the job completes, errors will be loaded and parsed automatically.

Web: <https://github.com/tpope/vim-dispatch>

Installation:

Install the plugin in the file ~/config/.vimrc:

```vim
" ------------------------------------------------------------------------------
" Plugins / Compilers / vim-dispatch
" ------------------------------------------------------------------------------
Plug 'tpope/vim-dispatch'  " Job dispatcher that uses asynchronous adapters

```

##### Install vim-plug plugins: vim-fugitive

Fugitive is the premier Vim plugin for Git.
<br />Web: <https://github.com/tpope/vim-fugitive>

Install the plugin in the file ~/config/.vimrc:

```vim
" Git
Plug 'tpope/vim-fugitive'
```

Add this to the section options:

```vim
" vim-fugitive options
" fugitive always vertical diffing
set diffopt+=vertical
" git status
nnoremap <leader>gs :Gstatus<CR>
```

Commands:

I am not adding these options for security reasons, but can be useful if you are not using applications such as **Oh My Zsh!**:

```vim
" ------------------------------------------------------------------------------
" Plugin options / vim-fugitive
" ------------------------------------------------------------------------------
set diffopt+=vertical                         " Fugitive always vertical diffing

" Shortcuts with two characters
nnoremap <leader>gs :Git<CR>                  " Git status
nnoremap <leader>gc :Gcommit -v -q<CR>        " Git commit with verbose and quiet
                                              " options.
nnoremap <leader>ga :Gcommit --amend<CR>      " Amend the last commit
nnoremap <leader>gt :Gcommit -v -q %<CR>      " Git commit with verbose and quiet
                                              " options for the current file.
nnoremap <leader>gd :Gdiff<CR>                " View git diff
nnoremap <leader>ge :Gedit<CR>                " Edit the current file in the index
nnoremap <leader>gr :Gread<CR>                " Discard changes in the current
                                              " file and reset to the index.
nnoremap <leader>gw :Gwrite<CR><CR>           " Write and stage changes
nnoremap <leader>gl :silent! Glog<CR>         " View the git log
nnoremap <leader>gp :Ggrep<Space>             " Git grep
nnoremap <leader>gm :Gmove<Space>             " Git move (rename)
nnoremap <leader>gb :Git branch<Space>        " List git branches
nnoremap <leader>go :Git checkout<Space>      " Git checkout

```

<br />Commands are typed in the command line in **NORMAL** mode.

Once in another Vim buffer, to move onto another window, use the navigation keys configured during the installation of the plugin **vim-tmux-navigator**, for Nerdtree:
<br />`CTRL` + `h`, `j`, `k`, `l`.

In Vim, when you open a file for editing, its contents are loaded into a buffer. Buffers are used to store and manipulate text within Vim. You can have multiple buffers open at the same time, each representing a different file. The contents of a buffer can be modified, and changes can be saved back to the original file.

To save changes to a file, remember, in **NORMAL** mode, use:

```vim
:w
```

You can use **fugitive.vim** with Git in Neovim, even without setting up a **merge tool** for `Git`.

**Commands, commands configuration and use**:

**Open information** showing: Head brach, Push origin, Help ?, Untracked files #num/. Inside the file, use:

```vim
:G
:Git
```

To **execute any Git command**, use the parameter used after git, for example, for `$ git status`:

```vim
:G status
```

**:Git**:

```vim
:Git, press TAB, select <command>
```

In Vim/Neovim, This is a command from the fugitive.vim plugin. You can select a specific Git command from the available options.

**:Gsplit**:

```vim
:Gsplit
```

In Vim/Neovim, this is a command from the fugitive.vim plugin. It **splits the Neovim window horizontally**, creates a copy of the file in a new buffer below the file, and allows you to edit it separately. You can press:

`LEADER`: Open window options.

`CTRL` + `w` + `w`:switch between windows.

`LEADER` + `q`: Close the current buffer/window.

Or navigate the Windows as described above, using the navigation for plugin **vim-tmux-navigator**.

**:Gdiff**:

```
: Gdiff
```

In Vim/Neovim, **:Gdiff** is a command from the fugitive.vim plugin. It is used to **visualize the differences between the current state of the file in the working directory and its state in the Git repository**. This command opens a split window with the Git diff for the file, allowing you to see and interact with the changes. You can use this feature to review and navigate through modifications.

It is normally used after a fetch or pull, for example:

```vim
:!git fetch --all
:!git diff
:!git status

:!git pull origin feature/github_username
```

`:Gdiff`: Opens git diff and vertically splits the window into two buffers/windows, each with a version of the file.

:ls: With a diff between two files, one in the target branch (let's say before HEAD, and the working directory file (behind the target branch)), the program puts the working directory file on the right buffer. You can verify every file version using `ls`.

Use `CTRL` + `w` + `w` to switch from buffer to buffer.

:ls command output:

```vim
:ls                                                                      
  1 #a   "Content.txt"                  line 0
  2 %a   "fugitive:///home/esteban/Developer/diy-linux-book/.git//0/Content.txt"
 line 369

```

What's more important for every result line is the number, like `//0`, `//1`, `//3`, etc in the string.

To get such output, we moved some lines the cursor of both files, so the number 369 corresponds to the last files/buffer we moved, the one on the left side/window. So the order of buffers/windows can be:

2-way diff:

Target branch (left), working copy (right), no merge branch operation.

3-way diff:

Normally, used after a merge, for example:

```vim
:!git pull origin main

:!git checkout feature/github_username
:!git merge main
```

In the middle of a merge with diffs, the normal order of buffers would be:

Target branch (left), Working copy (center), Merge branch (right).

**3-way diff in detail**:

After `:ls`, with the buffers identified, you can merge using `diffget` (get from) or `gitput` (put to), depending on which file copy you are in:

Example:

Get from target branch:

|  ls = //2   |  ls = //1   |  ls = //3   |
|             |             |             |
|  target     |  working    |  merge      |
|  branch     |  copy       |  branch     |
|             |             |             |
|          ------v          |             |
|             |             |             |
|             |             |             |
|-----------------------------------------|
|             |:diffget //2 |             |

Get from merge branch:

|  ls = //2   |  ls = //1   |  ls = //3   |
|             |             |             |
|  target     |  working    |  merge      |
|  branch     |  copy       |  branch     |
|             |             |             |
|             |         v------           |
|             |             |             |
|             |             |             |
|-----------------------------------------|
|             |:diffget //3 |             |

Put to working copy (from target branch):

|  ls = //2   |  ls = //1   |  ls = //3   |
|             |             |             |
|  target     |  working    |  merge      |
|  branch     |  copy       |  branch     |
|             |             |             |
|          ------v          |             |
|             |             |             |
|             |             |             |
|-----------------------------------------|
|:diffput //1 |             |             |

Put to working copy (from merge branch):

|  ls = //2   |  ls = //1   |  ls = //3   |
|             |             |             |
|  target     |  working    |  merge      |
|  branch     |  copy       |  branch     |
|             |             |             |
|             |         v------           |
|             |             |             |
|             |             |             |
|-----------------------------------------|
|             |             |:diffput //1 |

With 2-way diff you can use the commands without the `ls` value, from the target branch or the working copy:

```vim
:diffget
:diffput
```

After running `diffget` or `diffput`, the conflict markers disappeared from the working copy (buffer) to be repalced by the ones from the target branch or the merge branch copies. We'll fix it by running `diffupdate`:

```vim
:diffupdate
```

Another way to `diffput` and `diffupdate` to working copy buffer in one step, using the name of the working copy file, for example, demo.js

```vim
:diffput demo | diffup
```

Another way to resolve conflicts, equivalent to `diffget` and `diffput` is using `do` and `dp`. It can be used without using the calue of `ls` 2-way diff. They include diffup, so no need to diffupdate after the operation:

```vim
" diffget
:do
```

|  ls = //0   |  ls = //0   |
|             |             |
|  target     |  working    |
|  branch     |  copy       |
|             |             |
|          ------>          |
|             |             |
|             |             |
|---------------------------|
|             |:do          |

```vim
" diffput
:dp
```

|  ls = //0   |  ls = //0   |
|             |             |
|  target     |  working    |
|  branch     |  copy       |
|             |             |
|          ------>          |
|             |             |
|             |             |
|---------------------------|
|:dp          |             |

`do` and `dp` in a 3-way diff:

Try to do not use it. `do` from the working copy will get from both, the target branch and the merge branch. `dp` from the target branch will put only to the working copy.

Show help on top of the windows:

```vim
:help diff put
```

At this point, one conflict has been resolved. But, we need to repeat the `diffget` or `diffput` operation on every conflict of the file.

To move to the next changeset:

Press `]` + c

To move to the previous changeset:

Press `[` + c

To close all the 2-way diff or 3-way diff windows and go back to the working file copy (in other words, close everything but the current window/buffer):

```vim
:only
```

Check the status:

```vim
:G
:Git
```

To close the status:

`CTRL` + `w` + `w`, to go to the status window.

Use `:q` on the status window.

As an alternative to `G`, use the regular command `git status`.

```vim
:!git status
```

Save changes:
When you are satisfied with the changes made on the working copy, so it is conflict free, just stage them and commit. If you leave Neovim, the changes made on the buffers will be lost, and you should restart the whole `Gdiff` process by reopening the working copy file.

```vim
!git add <working_copy_file>
!git commit -m "MESSAGE"
```

**Gwrite**:

This command can be used to stage the working copy, in two moments:
1. Once the conflicts have been resolved.
2. At any momment.

From the working copy, do (the same as `git add file-x`):

```vim
:Gwrite
```

This stages the changes and vanishes the buffers to show only the working copy, or, keeps the buffers but shrinks their content to indicate that there is difference now that the changes have been staged and ready to commit.

To verify that the working copy is actually staged (the same as the command `git status`):

```vim
:G
:Git
```

You will see the file modified with an `M` at the beginning of the line, for example:

```git
Untacked(1)
? file-y

Unstaged(1)
M file-x      <---- This is another change to the file, made after it was staged.

Staged(1)
M file-x      <---- This is our staging with Gwrite.

```

Get out of the status:

```vim
:q
```

Proceed to commit (similar to `git commit ...`):

```vim
:Git commit
:Git commit -m "<COMMIT MESSAGE>"
```

If you  want to write the merge brach to the working copy and the target branch, from the merge branch, use `Gwrite` with an exclamation sign `!`, and boom!

```vim
:Gwrite!
```

|  ls = //2   |  ls = //1   |  ls = //3   |
|             |             |             |
|  target     |  working    |  merge      |
|  branch     |  copy       |  branch     |
|             |             |             |
|             |         v------           |
|          v-------------------           |
|             |             |             |
|-----------------------------------------|
|             |             |             |

**More Gdiff options**:

```vim
:Gdiff index.js helper.js
:Gdiff --no-index index.js helper.js  " Compare files outside the working tree
:Gdiff :0                             " Diff between current file and the index
:Gdiff [revision]                     " Diff between current file and some other [revision]
:Gdiff ~3                             " Diff between current file and current file 3 commits ago
:Git                                  " git status
```

**`git diff` command**:

The **git diff** command is used to **display the differences between two files or between the working directory and the staging area (index)**. Here are two variations of the git diff command:

```shell
$ git diff <file1> <file2>
$ git diff --no-index <file1> </path/to/file_out_of_the_current_repo>
```

Resources:
Topic: Fugitive.vim - resolving merge conflicts with vimdiff.
Web: <http://vimcasts.org/episodes/fugitive-vim-resolving-merge-conflicts-with-vimdiff/>

To list all the options:

```vim
:G (and press TAB)
:Git (and press TAB)
:Git add (and press TAB)
```

**Meld**:

Meld is **a visual diff and merge tool**. It helps you compare and merge changes between files and directories.

You can install it using the command `$ sudo apt-get install meld`

```shell
$ sudo apt-get install meld
$ meld . &
```

**Setting up a merge tool for the comamnd `git mergetool`**:

Check Available merge tools.

```shell
$ git mergetool --tool-help
```

Configure Git (merge tool set to Meld).

```shell
git config --global merge.tool meld
```

Proceed with the optional configuration.

Some merge tools may require additional configuration. You can check the specific documentation for the merge tool you've chosen. For example, if you're using meld, you might need to set it as the difftool as well.

```shell
git config --global diff.tool meld
```

To run the Git merge tool (using the command `git`, instead of `meld`):

```shell
$ git mergetool
```

Some other popular and widely used merge tools include:

Meld
KDiff3
TortoiseMerge
P4Merge
Araxis Merge
Beyond Compare (bc)

It's a good idea to try out a few of them and see which one aligns best with your workflow and preferences.

**`git gui` command**:

Git GUI is **a graphical user interface for Git**, providing an intuitive way to interact with repositories, **view changes, and perform various Git operations**.

```shell
$ git gui
$ git gui blame <FILENAME>
$ git blame -L <starting line number>,<ending line number> <filename>
$ git show <commit hash>
```

It is a part of the package Git.

**gitk**:

Gitk is **a graphical repository viewer** that allows you to **visualize the commit history, branches, and tags** in a Git repository. It provides an **interactive way to explore the project's history**.

```shell
$ sudo apt-get install gitk
$ gitk
```

**gitg**:

Gitg is **another graphical Git repository viewer** that offers a visual representation of the commit history, branches, and changes in a Git repository.

```shell
sudo apt-get install gitg
$ gitg
```

**Graph all git branches using the commang `git log`**:

Developers can see all branches in the graph with the –all switch. Also, in most situations, the –decorate switch will provide all the supplemental information in a formatted and nicely color-coded way.

```shell
$ git log --all --decorate --oneline --graph
```

Start coloring coding the display with a git log graph call:

```shell
$ git log --graph --pretty="%C(yellow) Hash: %h %C(blue)Date: %ad %C(red) Message: %s " --date=human
```

More options:

Just dates:

```shell
$ git log --graph --pretty="%ad" --date=short
```

Notes in Yellow:

```shell
$ git log --graph --pretty="%C(yellow) %s"
```

Just hashes:

```shell
$ git log --graph --pretty="%C(bold blue)%h" --decorate --all
```

**Git Cola**:

Git Cola is a feature-rich Git GUI that provides a comprehensive set of tools for interacting with Git repositories. You can install it using the command `$ sudo apt-get install git-cola`.

```shell
$ sudo apt-get install git-cola
$ git-cola
```

##### Install vim-plug plugins: editorconfig-vim

Install the plugin:

```vim
" IDE (2)
" EditorConfig 
"Plug 'editorconfig/editorconfig-vim'
```

Source your .vimrc by calling :source $MYVIMRC.
<br />Then call :PlugInstall.

TODO: Find out any good use for this plugin.

##### Install vim-plug plugins: fzf.vim

fzf:

fzf is a general-purpose command-line fuzzy finder.

It's an interactive Unix filter for command-line that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc.

Web: <https://github.com/junegunn/fzf>

Installation:

Add the plugin to the plugins section:

```vim
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
```

Close the file and reopen it to reload changes.
<br />Install the plugin.

Add this configuration to a new plugin section:

```vim
" fzf
" Search input above
" let $FZF_DEFAULT_OPTS='--layout=reverse'
```

Usage:

Look for files under current directory:

```vim
:FZF
```

Once the floating window opens, you can:
<br />Press `ESC` to exit the floating window and then come back to the file that is open.
<br />Use `UP` and `DOWN` **arrows** to navigate the results and press `ENTER` to open the file that you found out.  
<br />Change the path or add a file name, for example index.js, to fix/improve/filter your search.

Look for files under your home directory:

```vim
:FZF ~
```

With fzf command-line options:

```vim
:FZF --reverse --info=inline /tmp
```

Bang version starts fzf in fullscreen mode:

```vim
:FZF!
```

References:
Topic: FZF Vim integration.
Web: <https://github.com/junegunn/fzf/blob/master/README-VIM.md>

fzf.vim:

Things you can do with **fzf** and Vim.

Web: <https://github.com/junegunn/fzf.vim>

TODO:

##### Install vim-plug plugins: Copilot.vim

GitHub Copilot is an AI pair programmer which suggests line completions and entire function bodies as you type. GitHub Copilot is powered by the OpenAI Codex AI system, trained on public Internet text and billions of lines of code.

References:
<br />GitHub.com source and installation instructions:
<br />Web: <https://github.com/github/copilot.vim>

Copilot.vim is a Vim plugin for GitHub Copilot. For now, it requires Neovim 0.6 (for virtual lines support) and a Node.js installation.

To learn more about GitHub Copilot, visit https://copilot.github.com.

Install Node.js version 16. (Other versions should work too, except Node 18 which isn't supported yet.)

Add the plugin to the section plugins in the file ~/.vimrc:

```vim
Plug 'github/copilot.vim'
```

Save and close the file to save changes.

Restart Neovim and invoke:

```vim
:Copilot setup
```

And then start authenticating.

Commands:

```vim
:help copilot " Opens help
:Copilot " Returns the list of possible solutions to choose from. Select with ENTER key. 
:Copilot_disable " Globally disables GitHub Copilot inline suggestions.
:Copilot_enable " Re-enables after disable.
:Copilot_feedback " Opens the website for providing GitHub Copilot feedback.
:Copilot_setup
:Copilot_signout
```

Usage for completion:
<br />Open a file with Neovim.
<br />During **typing in words**, GitHub Copilot suggest options inline.
<br/ >Press `TAB` to **accept** options. 

Usage for suggestions:
<br />Open a file with Neovim.
<br/ >Open a comment using the current programming language used. State your request to Copilot in the comment.
<br />Press tab to complete the request using suggestions and when finished, run `:Copilot`

Examples:

Python:

```python
''' A function that prints Hello, world! '''
```

Display AI solutions:

```vim
:Copilot`
```

JavaScript:

```js
// An object called magic that prints "magic"

```

Display AI solutions:

```vim
:Copilot`
```

To exit the Solutions' terminal without accepting any solution:

```vim
:q!
```

About Pair Programming:
<br />Pair programming is an agile software development technique in which two programmers work together at one workstation. One, the driver, writes code while the other, the observer or navigator, reviews each line of code as it is typed in. The two programmers switch roles frequently.

##### Install vim-plug plugins: vim-styled-components

About
Vim bundle for <http://styled-components.com> based javascript files.

Vim bundle for styled-components, diet-cola, emotion, experimental glamor/styled, and astroturf content in javascript files.
<br />Web: <https://github.com/styled-components/vim-styled-components>

References for the bundle:
<br />Topic: Visual primitives for the component age. Use the best bits of ES6 and CSS to style your apps without stress.
<br />Web: <https://styled-components.com/>
<br />Topic: A lightweight styled-components clone for creating React UI component primitives. Built with "stylis" and "glamor".
<br />Web: <https://github.com/jxnblk/diet-cola>
<br />Topic: Emotion is a performant and flexible CSS-in-JS library. Building on many other CSS-in-JS libraries, it allows you to style apps quickly with string or object styles. It has predictable composition to avoid specificity issues with CSS.
<br />Web: <https://github.com/emotion-js/emotion>
<br />Topic: styled-components, (experimental, buggy). An implementation of the styled-components API with glamor. To use, add 'glamor/babel' to the plugins field in your babel config.
<br />Web: <https://github.com/threepointone/glamor/blob/master/docs/styled.md>
<br />Topic: astroturf lets you write CSS in your JavaScript files without adding any runtime layer, and with your existing CSS processing pipeline.
<br />Web: <https://github.com/4Catalyzer/astroturf>

This project is not currently maintained.

Installation:

Add the plugin to the section plugins in ~/.vimrc:

```vim
" Styled components
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'styled-components/vim-styled-components'
```

Source the file.

Run vim-plug install:

```vim
"PlugInstall
```

Souce the file.

Usage:

Open the file **styled-components.js**.
<br />The CSS styles must appeared colorized.

```js
import styled, { css } from 'styled-components'

const Button = styled.button`
  background: transparent;
  border-radius: 3px;
  border: 2px solid palevioletred;
  color: palevioletred;
  margin: 0.5em 1em;
  padding: 0.25em 1em;

  ${props => props.primary && css`
    background: palevioletred;
    color: white;
  `}
`;

const Container = styled.div`
  text-align: center;
`

render(
  <Container>
    <Button>Normal Button</Button>
    <Button primary>Primary Button</Button>
  </Container>
);

```

Note: The colorization does not work with some codes. Check out the plugin docs on GitHub for more information on this topic.

Add this to the section options of the file ~/.vimrc:

```
" Styled-components options
" Break syntax colorization in very long files. Use at own risk!
" Makes vim consider all lines in the file for syntax highlighting if it encounters a javascript/typescript file.
"autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" Resets this value if it leaves the buffer again. (This will also reset previously set syntax-syncing settings, that you or other plugins might have set.)
"autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
```

##### Install vim-plug plugins: polyglot

A collection of language packs for Vim.
<br />Web: <https://github.com/sheerun/vim-polyglot>

Note: Polyglot replaces the JavaScript plugin.

Features:
It won't affect your startup time, as scripts are loaded only on demand*.
<br />It installs and updates 120+ times faster than the 599 packages it consists of.
<br />It is also more secure (scripts loaded for every filetype are generated by vim-polyglot)
<br />Best **syntax** and **indentation** support (no other features). Hand-selected language packs.
<br />Automatically detects indentation (includes performance-optimized version of vim-sleuth, can be disabled.)

Add the plugin to the file **~/.vimrc**:

To the section plugins:

```vim
" Syntax
Plug 'sheerun/vim-polyglot'
```

To the section options:

```vim
" Vim-polyglot options
" Disable individual language packs
" Please declare this variable before polyglot is loaded (at the top of .vimrc)
"let g:polyglot_disabled = ['markdown']
"let g:polyglot_disabled = ['markdown']
"let g:polyglot_disabled = ['markdown']
" Disable filetype detection
" Disables Vim Polyglot filetype plugin won't disable native Vim filetype plugin
"let g:polyglot_disabled = ['markdown.plugin']
" Disables Autoindent
"let g:polyglot_disabled = ['autoindent']
" Reindent
"Disables reindenting of the current line in insert mode (see vim 'indentkeys'), by turning it off 
"autocmd BufEnter * set indentexpr=
" Disables Default settings (Check out the list in the documentation)
"let g:polyglot_disabled = ['sensible']
" Disables No ftdetect if you want to use vim-polyglot plugins, but not ftdetect autocommands
"let g:polyglot_disabled = ['ftdetect']
```

Save changes to file, reopen and install with the command:

```vim
:PlugInstall
```

Language Packs:
<br/ >Check out the GitHub website. It contains a link to every language supported by the plugin.
<br />Every plugin contains its own installation instructions and configuration options.

Installing a language pack:

Let's install the JavaScript pack: "javascript (JavaScript syntax highlighting for js, bones, cjs, es, es6 and 20 more files)."
<br /> Web: <https://github.com/pangloss/vim-javascript>

The docs says that you can add the plugin using vim-plug, so let's proceed accordingly ...

Add the plugin to the file **~/.vimrc**:

To the section Polyglot, below Polyglot:

```vim
" Vim-polyglot: vim-javascript
Plug 'pangloss/vim-javascript'
```

Babel Syntax Highlighting is supported by this plugin:
<br />Wrapper around babel.js (ES2015, React, ...)
<br />These days, many popular editors support ES2015+ syntax highlighting out of the box, while some require installing additional extensions.
<br />Install the vim-javascript plugin, which brings both improved syntax highlighting and indentation support for JavaScript to Vim.

For information on how to install Babel from NPM:
Web: <https://babeljs.io/setup#installation>
Web: <https://babeljs.io/setup#babel_cli>

To the section options, below the polyglot options:

```vim
" Vim-polyglot: vim-javacript options
" Enables syntax highlighting for JSDocs
"let g:javascript_plugin_jsdoc = 1
" Enables some additional syntax highlighting for NGDocs. Requires JSDoc plugin to be enabled as well
"let g:javascript_plugin_ngdoc = 1
" Enables syntax highlighting for Flow. Default value: 0
"let g:javascript_plugin_flow = 1
" Enable code folding for javascript based on our syntax file. Please note this can have a dramatic effect on performance
"
"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"augroup END
"
" Concealing Characters
" Enable concealing within VIM
"set conceallevel=1
" OR if you wish to toggle concealing you may wish to bind a command such as the following which will map <LEADER>l (leader is usually the \ key) to toggling conceal mode:
"map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
" You can customize concealing characters, if your font provides the glyph you want, by defining one or more of the following variables:
"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined           33 = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"
```

Save changes to file, reopen and install with the command:

```vim
:PlugInstall
```

Test the new configuration using a/the files **index.js** and **helper.js**.

Indentation specific commands:

```vim
:h cino-:
:h cino-=
:h cino-star
:h cino-(
:h cino-w
:h cino-W
:h cino-U
:h cino-m
:h cino-M
:h 'indentkeys'
:help license " Distributed under the same terms as Vim itself.
```

Language packs:

On top of all language packs from vim repository, vim-polyglot includes:

| Language                   | Description                                                            |
|-----------------------------|------------------------------------------------------------------------|
| acpiasl                     | Syntax highlighting for asl and dsl files                             |
| ansible                     |                                                                        |
| apiblueprint                | API Blueprint syntax highlighting for apib files                       |
| applescript                 | AppleScript syntax highlighting for applescript and scpt files         |
| arduino                     | Processing syntax highlighting for pde and ino files                   |
| asciidoc                    | AsciiDoc syntax highlighting for asciidoc, adoc and asc files          |
| autohotkey                  | AutoHotkey syntax highlighting for ahk and ahkl files                  |
| bicep                       | Syntax highlighting for bicep files                                    |
| blade                       | Blade syntax highlighting for blade and blade.php files                |
| brewfile                    |                                                                        |
| c/c++                       | C++ and C syntax highlighting for cpp, c++, cc, cp, cxx and 18 more files|
| caddyfile                   |                                                                        |
| carp                        | Syntax highlighting for carp files                                     |
| cjsx                        |                                                                        |
| clojure                     | Clojure syntax highlighting for clj, bb, boot, cl2, cljc and 6 more files|
| cmake                       | CMake syntax highlighting for cmake and cmake.in files                  |
| coffee-script               | CoffeeScript and Literate CoffeeScript syntax highlighting for coffee, cake, cjsx, iced, coffeekup, cson, litcoffee and coffee.md files|
| cpp-modern                  |                                                                        |
| cql                         | Syntax highlighting for cql files                                      |
| cryptol                     | Syntax highlighting for cry, cyl, lcry and lcyl files                  |
| crystal                     | Crystal and HTML+ECR syntax highlighting for cr and ecr files          |
| csv                         | CSV syntax highlighting for csv, tsv and tab files                      |
| cucumber                    | Gherkin syntax highlighting for feature and story files                |
| cue                         | Syntax highlighting for cue files                                      |
| dart                        | Dart syntax highlighting for dart and drt files                         |
| dhall                       | Dhall syntax highlighting for dhall files                               |
| dlang                       | D syntax highlighting for d, di, lst, dd, ddoc and sdl files            |
| docker-compose              |                                                                        |
| elixir                      | Elixir and HTML+EEX syntax highlighting for ex, exs, eex, html.heex, html.leex and leex files|
| elm                         | Elm syntax highlighting for elm files                                   |
| emberscript                 | EmberScript syntax highlighting for em and emberscript files            |
| emblem                      | Syntax highlighting for emblem and em files                             |
| erlang                      | Erlang syntax highlighting for erl, app.src, es, escript, hrl, xrl, yrl, app and yaws files|
| fennel                      | Syntax highlighting for fnl files                                      |
| ferm                        | Syntax highlighting for ferm files                                     |
| fish                        | fish syntax highlighting for fish files                                 |
| flatbuffers                 | Syntax highlighting for fbs files                                      |
| fsharp                      | F# syntax highlighting for fs, fsi and fsx files                       |
| git                         | Git Config syntax highlighting for gitconfig files                      |
| gitignore                   |                                                                        |
| gleam                       | Syntax highlighting for gleam files                                    |
| glsl                        | GLSL syntax highlighting for glsl, fp, frag, frg, fs and 18 more files  |
| gmpl                        | Syntax highlighting for mod files                                      |
| gnuplot                     | Gnuplot syntax highlighting for gp, gnu, gnuplot, p, plot, plt and gpi files|
| go                          | Go syntax highlighting for go and tmpl files                            |
| gradle                      |                                                                        |
| graphql                     | GraphQL syntax highlighting for graphql, gql and graphqls files          |
| haml                        | Haml syntax highlighting for haml, haml.deface, hamlc and hamlbars files|
| handlebars                  | Mustache and Handlebars syntax highlighting for mustache, hogan, hulk, hjs, handlebars, hbs, hdbs and hb files|
| haproxy                     | HAProxy syntax highlighting                                            |
| haskell                     | Haskell syntax highlighting for hs, hs-boot, hsc, bpk and hsig files     |
| haxe                        | Haxe and HXML syntax highlighting for hx, hxsl, hxml and hss files      |
| helm                        |                                                                        |
| help                        |                                                                        |
| hive                        | HiveQL syntax highlighting for q, hql and ql files                      |
| hjson                       | Syntax highlighting for hjson files                                    |
| html5                       |                                                                        |
| icalendar                   | Syntax highlighting for ics files                                      |
| idris2                      | Syntax highlighting for idr, ipkg and lidr files                        |
| idris                       | Idris syntax highlighting for idr and lidr files                        |
| ion                         | Syntax highlighting for ion files                                      |
| javascript-sql              |                                                                        |
| javascript                  | JavaScript syntax highlighting for js, bones, cjs, es, es6 and 20 more files|
| jenkins                     | Syntax highlighting for jenkinsfile and Jenkinsfile files               |
| jq                          | JSONiq syntax highlighting for jq files                                |
| json5                       | JSON5 syntax highlighting for json5 files                               |
| json                        | JSON syntax highlighting for json, 4DForm, avsc, geojson and 15 more files|
| jsonc                       | Syntax highlighting for cjson and jsonc files                           |
| jsonnet                     | Jsonnet syntax highlighting for jsonnet and libsonnet files              |
| jst                         | EJS syntax highlighting for ejs, ect, ejs.t and jst files               |
| jsx                         | Syntax highlighting for jsx files                                      |
| julia                       | Julia syntax highlighting for jl files                                  |
| just                        | Syntax highlighting for just files                                     |
| kotlin                      | Kotlin syntax highlighting for kt, ktm and kts files                    |
| ledger                      | Syntax highlighting for ldg, ledger and journal files                   |
| lilypond                    | LilyPond syntax highlighting for ly and ily files                       |
| livescript                  | LiveScript syntax highlighting for ls files                             |
| llvm                        | LLVM syntax highlighting for ll and td files                            |
| log                         | Syntax highlighting for log and LOG files                                |
| lua                         | Lua syntax highlighting for lua, fcgi, nse, p8, rbxs, rockspec and wlua files|
| mako                        | Mako syntax highlighting for mako and mao files                         |
| markdown                    | Markdown syntax highlighting for md, livemd, markdown, mdown, mdwn and 6 more files|
| mathematica                 | Mathematica syntax highlighting for mathematica, cdf, m, ma, mt and 6 more files|
| mdx                         | Syntax highlighting for mdx files                                      |
| mermaid                     | Syntax highlighting for mermaid, mm and mmd files                        |
| meson                       | Meson syntax highlighting for wrap files                                |
| mint                        | Syntax highlighting for mint files                                     |
| moonscript                  | MoonScript syntax highlighting for moon files                           |
| nftables                    | Syntax highlighting for nft files                                    |
| nginx           | Nginx syntax highlighting for nginx, nginxconf and vhost files |
| nim             | Nim syntax highlighting for nim, nim.cfg, nimble, nimrod and nims files |
| nix             | Nix syntax highlighting for nix files                      |
| objc            | Objective-C syntax highlighting for m and h files           |
| ocaml           | OCaml syntax highlighting for ml, eliom, eliomi, ml4, mli and 13 more files |
| octave          | Syntax highlighting for oct and m files                     |
| odin            | Odin syntax highlighting for odin files                    |
| opencl          | OpenCL syntax highlighting for cl and opencl files          |
| openscad        | Syntax highlighting for scad files                          |
| org             | Syntax highlighting for org files                           |
| perl            | Perl syntax highlighting for pl, al, cgi, fcgi, perl and 12 more files |
| pest            | Syntax highlighting for pest files                          |
| pgsql           | PLpgSQL syntax highlighting for pgsql files                 |
| php             | PHP syntax highlighting for php, aw, ctp, fcgi, inc and 7 more files |
| plantuml        | PlantUML syntax highlighting for puml, iuml, plantuml, uml and pu files |
| pony            | Pony syntax highlighting for pony files                     |
| powershell      | PowerShell syntax highlighting for ps1, psd1, psm1, pssc and ps1xml files |
| protobuf        | Protocol Buffer syntax highlighting for proto files         |
| pug             | Pug syntax highlighting for jade and pug files               |
| puppet          | Puppet syntax highlighting for pp and epp files              |
| purescript      | PureScript syntax highlighting for purs files               |
| python-compiler |                                                            |
| python-indent   |                                                            |
| python          | Python syntax highlighting for py, cgi, fcgi, gyp, gypi and 14 more files |
| qmake           | QMake syntax highlighting for pro and pri files              |
| qml             | QML syntax highlighting for qml and qbs files               |
| r-lang          | R syntax highlighting for r, rsx, s, S and rd files           |
| racket          | Racket syntax highlighting for rkt, rktd, rktl and scrbl files |
| ragel           | Ragel syntax highlighting for rl files                      |
| raku            | Raku syntax highlighting for 6pl, 6pm, nqp, p6, p6l and 12 more files |
| raml            | RAML syntax highlighting for raml files                     |
| razor           | HTML+Razor syntax highlighting for cshtml and razor files    |
| reason          | Reason syntax highlighting for re and rei files              |
| requirements    | Syntax highlighting for pip files                            |
| rspec           |                                                            |
| rst             | reStructuredText syntax highlighting for rst, rest, rest.txt and rst.txt files |
| ruby            | Ruby and HTML+ERB syntax highlighting for rb, builder, eye, fcgi, gemspec and 26 more files |
| rust            | Rust syntax highlighting for rs and rs.in files              |
| scala           | Scala syntax highlighting for scala, kojo and sc files       |
| scss            | SCSS syntax highlighting for scss files                      |
| sh              | Shell syntax highlighting for sh, bash, bats, cgi, command and 8 more files |
| slim            | Slim syntax highlighting for slim files                      |
| slime           | Syntax highlighting for slime files                          |
| smt2            | SMT syntax highlighting for smt2 and smt files               |
| solidity        | Solidity syntax highlighting for sol files                   |
| stylus          | Stylus syntax highlighting for styl and stylus files         |
| svelte          | Svelte syntax highlighting for svelte files                 |
| svg-indent      |                                                            |
| svg             | SVG syntax highlighting for svg files                        |
| sway            | Syntax highlighting for swayconfig and sway.config files      |
| swift           | Swift syntax highlighting for swift files                    |
| sxhkd           | Syntax highlighting for sxhkdrc files                        |
| systemd         | Syntax highlighting for automount, dnssd, link, mount, netdev and 9 more files |
| terraform       | HCL syntax highlighting for tf, tfvars, hcl, nomad and workflow files |
| textile         | Textile syntax highlighting for textile files                |
| thrift          | Thrift syntax highlighting for thrift files                  |
| tmux            |                                                            |
| toml            | TOML syntax highlighting for toml files                      |
| tptp            | Syntax highlighting for p, tptp and ax files                 |
| twig            | Twig syntax highlighting for twig and xml.twig files         |
| typescript      | TypeScript and TSX syntax highlighting for ts, cts, mts and tsx files |
| unison          | Syntax highlighting for u and uu files                       |
| v               | V syntax highlighting for v, vv and vsh files                |
| vala            | Vala syntax highlighting for vala, vapi and valadoc files     |
| vbnet           | Visual Basic .NET syntax highlighting for vb and vbhtml files |
| vcl             | VCL syntax highlighting for vcl files                        |
| velocity        | Syntax highlighting for vm files                             |
| vue             | Vue syntax highlighting for vue and wpy files                |
| xdc             | Syntax highlighting for xdc files                            |
| xml             | XML syntax highlighting for xml, adml, admx, ant, axaml and 97 more files |
| xsl             | XSLT syntax highlighting for xslt and xsl files             |
| yard            |                                                            |
| zephir          | Zephir syntax highlighting for zep files                     |
| zig             | Zig syntax highlighting for zir, zig and zir files           |
| zinit           |                                                            |

Don't forget to log all the new plugins you add to the file **~/.vimrc**.

##### Install vim-plug plugins: vim-repeat

Web: <https://github.com/tpope/vim-repeat>

If you've ever tried using the . command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole. That disappointment ends today. Repeat.vim remaps . in a way that plugins can tap into it.

The following plugins support repeat.vim:
<br />surround.vim
<br />speeddating.vim
<br />unimpaired.vim
<br />vim-easyclip
<br />vim-radical

Add the plugin to the file **.vimrc**:

```vim
Plug `tpope/vim-repeat`
```

Adding support to a plugin is generally as simple as the following command at the end of your map functions:

```vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
```

<br />Note: That line is not required since you will use this plugin with the default configuration for the plugin surround.vim, which is not installed yet.

Note: The `.` command (repeat) will work with `ds`, `cs`, and `yss` if you install the plugin **repeat.vim**. And there is no need to add any section options for **repeat.vim** in the file **.vimrc**.

##### Install vim-plug plugins: vim-signify

Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS).

Web: <https://github.com/mhinz/vim-signify>

```vim
Plug 'mhinz/vim-signify'
```

```vim
:PlugInstall
```

Open a code file in a Git repo and make some changes to test that the plugins is working.
<br /> The file must be in the staging area for the Signify to work.
<br /> The plugin works in **NORMAL** mode.

```vim
:G status
:G add my_file
:G add .
```

Symbols:

+ = New lines added.
<br />- = Old lines deleted.
<br />! = One in every line means a changes per line.
<br />!1, !2, !3, etc = a line with a number of modifications.
<br />!> = Lines modified that were deleted.

##### Install vim-plug plugins: indentline

Web: <https://github.com/Yggdroot/indentLine>

Add to the section IDE (2) of the file **.vimrc**:

```vim
" Indent line
" Displaying thin vertical lines at each indentation level for code indented with spaces.
Plug 'yggdroot/indentline'
```

Add to a new indentline section of the file **.vimrc**:

```vim
" indentLine options
" If you want to highlight conceal color with your colorscheme, disable by:
let g:indentLine_setColors = 0
" Change Indent Char (Vim and GVim)
" where '|' can be any ASCII character. You can also use one of ¦, ┆, │, ⎸, or ▏ to display more beautiful lines. However, these characters will only work with files whose encoding is UTF-8.
let g:indentLine_char = '|'
" Or, each indent level has a distinct character:
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" Change Conceal Behaviour
" See the VIM Reference Manual for more information on the conceal feature.
" indentLine will overwrite your "concealcursor" and "conceallevel" with default value
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
" If you want to keep your conceal setting
"let g:indentLine_setConceal = 0
" Disabling conceal for JSON and Markdown without disabling indentLine plugin
" Even though this plugin requires conceal to be enabled for it to work, it is possible to disable conceal for JSON and Markdown files and still get the indentLine plugin to show indent lines for those files.
" Builtin json.vim and markdown.vim syntax allow disabling conceal by setting the following vars:
"let g:vim_json_conceal=0
"let g:markdown_syntax_conceal=0
```

Font patching:
<br />If you find all the standard unicode and ASCII characters too obtrusive, you might consider patching your font with the indentLine-dotted-guide.eps glyph provided.

Commands:

```vim
:IndentLinesToggle " Toggles lines on and off.
```

##### Install vim-plug plugins: nerdcommenter

Comment functions so powerful—no comment necessary.

Web: <https://github.com/preservim/nerdcommenter#settings>

Add this to the section IDE (2) plugin of the file **.vimrc**:

```vim
" nerdcommenter
" Comment functions so powerful—no comment necessary.
Plug 'scrooloose/nerdcommenter'
```

<br />This setup does use the default mappings. Don't worry, they do not match some of the Neovim default key mappings if you are using the leader key. Our leader key in **.vimrc** is **SPACE**.

The following key mappings are provided by default (there is also a menu provided that contains menu items corresponding to all the below mappings):
<br /> Most of the following mappings are for normal/visual mode only. The |NERDCommenterInsert| mapping is for insert mode only.

Key mapping:

Leader = `SPACE` key.

Comment out the current line or text selected in VISUAL mode:
<br />`SPACE`+ `cc`, or `:NERDCommenterComment`

Same as cc but forces nesting:
<br />`SPACE` + `cn`, or `:NERDCommenterNested`

**Toggles the comment state of the selected line(s).** If the topmost selected line is commented, all selected lines are uncommented and vice versa:
<br/>`SPACE` + `c` + `SPACE`, or `:NERDCommenterToggle`.

Comments the given lines using only one set of multipart delimiters:
<br />`SPACE` + `cm`, or `:NERDCommenterMinimal`.

**Toggles the comment state** of the selected line(s) individually:
<br />`SPACE` + `ci`, or `:NERDCommenterInvert`.

Comments out the selected lines with a pretty block formatted layout:
<br />`SPACE` + `cs`, or `:NERDCommenterSexy`.

Same as cc except that the commented line(s) are yanked first:
<br />`SPACE` + `cy`, or `:NERDCommenterYank`.

Comments the current line **from the cursor to the end of line**:
<br />`SPACE` + `c$`, or `:NERDCommenterToEOL`.

Adds comment delimiters to the end of line and goes into insert mode between them:
<br />`SPACE` + `cA`, or `:NERDCommenterAppend`.

Adds comment delimiters at the current cursor position and **inserts between**. Disabled by default:
<br />`:NERDCommenterInsert`.

Switches to the alternative set of delimiters:
<br />`SPACE` + `ca`, or `:NERDCommenterAltDelims`.

Same as `:NERDCommenterComment` except that the delimiters are aligned down the left side: `SPACE` + `cl`, or both sides `SPACE` + `cb`:
<br />`SPACE` + `cl` (`:NERDCommenterAlignLeft`),  `SPACE` + `cb` (`:NERDCommenterAlignBoth`):

Uncomments the selected line(s):
<br />`SPACE` + `cu`, or `:NERDCommenterUncomment`.

Motions:

While the plugin does not directly support motions, you can leverage its support for selections to do something very similar.

Add this code to a new section:

```vim
" nerdcommenter options
" leverage support for selections
" (keys leader + 'c' ...)
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>
```

Remember that at this point of the installations, selections can done with the mouse.

##### Install vim-plug plugins: Installing a statusline

Let's install **lightline.vim**, a light and configurable statusline/tabline plugin for Vim.

Status bar:
<br />Web: <https://github.com/itchyny/lightline.vim>
<br />Status bar plugin:
<br />Web: <https://github.com/maximbaz/lightline-ale>

Add this to the section plugins of the file **.vimrc**:

```vim
" Status bar
Plug 'itchyny/lightline.vim'
" Lightline plugin ALE
Plug 'maximbaz/lightline-ale'
```

Save changes and reload the file.
<br />Install the plugin using vim-plug and reload the file.
<br />The new status bar appears, so now we can set it up.

Setup the status bar (various versions):

Add this to a new section options at the end of the other options:

```vim
" lightline.vim options
" Wombat colorscheme, add the following setting to your .vimrc
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ }

```

This is a second and more advanced version of the previous configuration:

```vim
" lightline.vim options
" custom settings
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ 'active': {
      \		'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
			\		'right': [ [ 'lineinfo' ],
			\              [ 'percent' ],
			\              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
			\ 'component': {
			\   'charvaluehex': '0x%B'
			\ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
```

Hint:
<br />You can use sharp to hide the value branch, for example: `Fugitive#Head`.

Advanced configuration:

Setup the Lightline plugin ALE:

This is a third complete comfiguration, which has to have the bar configuration (lightline), and the bar plugin (ALE) configuration in an configuration section.

```vim
" lightline.vim options
" custom settings, include ALE plugin options as well
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \ 'active': {
      \		'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
			\		'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
			\							 [ 'lineinfo' ],
			\              [ 'percent' ],
			\              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
			\ 'component': {
			\   'charvaluehex': '0x%B'
			\ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
" Lightline plugin ALE options
" Register the components:
" Overrides the previous declation, resetting the custom bar configuration:
"let g:lightline = {}
" Components
let g:lightline.component_expand = {
			\  'linter_checking': 'lightline#ale#checking',
			\  'linter_infos': 'lightline#ale#infos',
			\  'linter_warnings': 'lightline#ale#warnings',
			\  'linter_errors': 'lightline#ale#errors',
			\  'linter_ok': 'lightline#ale#ok',
			\ }
" Set color to the components:
let g:lightline.component_type = {
			\     'linter_checking': 'right',
			\     'linter_infos': 'right',
			\     'linter_warnings': 'warning',
			\     'linter_errors': 'error',
			\     'linter_ok': 'right',
			\ }
```

**TODO:** Revisit this advanced configuration with the lightline bar plugin ALE, once the current repository linters are working. Before that, neither the characters nor the icons are displaying.

Using icons as indicators
<br> /If you would like to replace the default indicators with symbols like on the screenshot, then you'll need to ensure you have some "iconic fonts" installed, such as **Font Awesome**. A common alternative is to replace your primary font with one of the Patched **Nerd Fonts**, which saves you from having to install multiple fonts.

Also, consider the **concealing characters** configuration using the concealing characters option of the Polyglot configuration (which is disabled at this point in the installation.)

Getting help commands:

```vim
:h g:lightline.colorscheme
:h g:lightline
:q  " Exit the help file lightline.txt
```

Alternative options to lightline (just to mention 2):

Powerline:

Web: https://github.com/powerline/powerline
<br />https://vimawesome.com/plugin/powerline-red
<br />Written in Python.
<br />Disadvantages:
<br />Powerline does not support python2 anymore and powerline will stop working with python2 in the near future.

Airline:

<br />Web: <https://github.com/vim-airline/vim-airline>

```vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
```

Disadvantages:
<br />Many optimizations have been made such that the majority of users will not see any performance degradation, but it can still happen.

##### Nerd-fonts

One of these fonts or font patches is required by plugins that use programming fonts with glyphs (icons). WE are going to install that supports ligatures (special characters used in some programming languages.)

Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs (icons). Specifically to add a high number of extra glyphs from popular 'iconic fonts' such as Font Awesome, Devicons, Octicons, and others.
<br />Web: <https://github.com/ryanoasis/nerd-fonts>

Installing the font: Caskaydia Cove Nerd Font*

Web: <https://github.com/ryanoasis/nerd-fonts>
<br />Web: <https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode>
<br />Why Caskaydia Cove and not Cascadia Code?
<br />Ligatures
<br />By the Nerd Font policy, the variant with the 'Mono' suffix is not supposed to have any ligatures. Use the non-Mono variants to have ligatures.
<br />Web: <https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode/Regular/complete>
<br />Font downloaded: Caskaydia Cove Regular Nerd Font Complete.otf
<br />Copy the font to the system' fonts directory: 

```shell
$ cd ~/Downloads
$ mkdir -p ~/.local/share/fonts
$ cp Caskaydia Cove Regular Nerd Font Complete.otf / ~/.local/share/fonts
```

Alternatives to Nerd-fonts:
<br />Font Awesome is the Internet's icon library and toolkit, used by millions of designers, developers, and content creators.
<br />Web: <https://fontawesome.com/plans>

References:
Topic: This allows us to install fonts with icons and ligatures such as firacode or hack?
<br />Add Icons to your Fonts with Nerd Fonts.
<br />Web: https://m.youtube.com/watch?v=fR4ThXzhQYI

##### Install vim-plug plugins: vim-devicons

Web: <https://github.com/ryanoasis/vim-devicons>

This is already added in the file **.vimrc**:

```vim
"Configure Vim
set encoding=UTF-8
```

Add the plugin to the configuration file **.vimrc**:

```vim
" vim-devicons
" Adds filetype glyphs (icons) to various vim plugins
Plug 'ryanoasis/vim-devicons'
```

To verify that the icons are working at this point, we can use NERDTREE working tree:
<br /> Verify the key shortcut to toogle ON/OFF Nerdtree.

Press `F3`. You must see the directories using icons for folders.

The **terminal font** does not change. It is still the Cinnamon Desktop Environment default:

```shell
$ gsettings get org.gnome.desktop.interface monospace-font-name
```

```output
'Monospace 11'
```

Note:
To set/change setting run following command (here example of increase size) :

```
$ gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono 14'
```

When you install **Powerline** and the theme **"Agnoster"** to show a foobar that looks like kind of a "snake" the font that draws the foobar cannot be changed or be changed to keep the drawing in a good looking state. It depends on the Linux distribution and its release version, the Powerline version, which font is set up for the system, the terminal used, the font set up for the terminal, and if it is capable to draw the special characters whether it is patched or not.

Does Gnome terminal support ligatures?
There's no rendering engine available that supports ligatures and guarantees to keep up with the expected column position even if the font happens not to be fully monospace.

For the given reasons, the best solution to work with Neovim inside a terminal with all the features available is replacing the Gnome Terminal with a terminal capable of doing everything that is possible or required, for example, **Tabby** or **Alacritty**.

##### Alacritty

**IMPORTANT: Alacritty VS WezTerm** Alacritty opacity configuration is working, but Ligatures configurtion is not. So, just install Alacritty to complete the Rust installation, which is a dependency for WezTerm, and test the Rust installation by using Alacritty. After that, install WezTerm which enables Terminal Ligatures and Transparency.

To change the font for a Neovim that runs in the terminal, you need to change the terminal's font. That is not set up in teh file **.vimrc**.

There are many terminal emulators available for Linux users such as tmux, urxvt, Xterm, Konsole, Tilda, Guake, Gnome Terminal e.t.c. Alacritty is highly preferred due to the following features:
<br />Search – you can find anything in Alacritty’s scrollback buffer. Search forward using ctrl+shift+f of backwards with ctrl+shift+b.
<br />Opening URLs – In vi mode, URLs can be opened by pressing Enter. Texts recognized as urls are underlined once you move vi cursor there.
<br />Vi mode – launched with ctrl+shift+space. It allows moving around Alacritty’s viewport and scrollback using the keyboard. Also serves as a jump-off point for other features such as search.
Selection expansion – Once you make a selection, use the right mouse to expand.
Supports true color in addition to the standard 16 ANSI colors.

References:
<br />Alacritty - A Fast Terminal Emulator with GPU Acceleration
https://m.youtube.com/watch?v=S5ra0DUDZww
<br />Install and Configure Alacritty terminal on Debian 11/10
<br />https://techviewleo.com/install-and-configure-alacritty-terminal-on-debian/

Install and Configure Alacritty terminal on Debian 11/10:

This method consists of a manually installation, which is the recommended method to install Alacritty on Debian 11 / Debian 10. 

To checkout the currently running OS:

```shell
$ cat /etc/issue
```

Install Dependencies:

Note: You can avoid installing Python3 if case of that you have a different installation, e.g.: Anaconda's Python. In such case, activate any of your python3 environments before continue.

Depending on your setup, and if you are in Zsh shell, you can activate the anaconda's (base) "environment", by entering the bash shell:

```shell
$ bash
```

```shell
$ sudo apt install curl git cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
```

Install the Rust compiler on Debian 11 / Debian 10:

```shell
$ cd
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Choose this option when prompt:
<br />1) Proceed with installation (default)

Source the cargo environment:

```shell
$ source $HOME/.cargo/env
```

Ensure that you have the right compiler:

```shell
$ rustup override set stable
$ rustup update stable
```

Clone the Alacritty source code:
<br />Requires Git to work.

```shell
$ sudo apt install git
$ git clone https://github.com/alacritty/alacritty.git
```

Build Alacritty from source using cargo, the Rust's package manager:
```shell
$ cd alacritty
$ cargo build --release
```


Once complete, you will have a binary file at target/release/alacritty.

Post Build Alacritty Configurations:

Terminfo:

```shell
$ infocmp alacritty
```

The above command should run without any errors, otherwise install it globally as below.

```shell
$ sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
```

Desktop Entry (for Debian):

```shell
$ sudo cp target/release/alacritty /usr/local/bin
$ sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
$ sudo desktop-file-install extra/linux/Alacritty.desktop
$ sudo update-desktop-database
```
Now the alacritty should be available in the App Menu and can be launched as below.

The Manual page:
<br />To install the alacritty manual page, use the gzip commands below.

```shell
$ sudo mkdir -p /usr/local/share/man/man1
$ gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
$ gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
```

Shell completions:
<br />To get automatic completions for flags and arguments in the Alacritty terminal emulator, use the below configurations.

For Bash:

```shell
$ echo "source $(pwd)/extra/completions/alacritty.bash" >> ~/.bashrc
```

Alternatively, if you will delete the source folder of alacritty, create another folder and source it from there.

```shell
$ mkdir -p ~/.bash_completion
$ cp extra/completions/alacritty.bash ~/.bash_completion/alacritty
```

Now add the file to bash.

```shell
$ echo "source ~/.bash_completion/alacritty" >> ~/.bashrc
```

For Zsh:

Create a folder for the Zsh functions

```shell
$ mkdir -p ${ZDOTDIR:-~}/.zsh_functions
$ echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
```

Copy the file to the directory.

```shell
$ cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty

```

For Fish:

Create a fish directory and copy the completion file to it.

```shell
$ mkdir -p $fish_complete_path[1]
$ cp extra/completions/alacritty.fish $fish_complete_path[1]/alacritty.fish
```

That is it, you can now launch the Alacritty terminal emulator and enjoy its awesomeness.

Log in and log out. The terminal appears in your Desktop Environment Apps menus, and as a command.

Create the Alacritty configuration file:

```shell
$ cd ~/.config/
$ mkdir alacritty
$ cd alacritty
$ touch alacritty.yml
```

Look for the section **window:** to set ON or OFF the transparency of the terminal.

The section **font** contains the new font Nerd font we changed.


```yml
# Configuration for Alacritty, the GPU enhanced terminal emulator.

# Any items in the `env` entry below will be added as
# environment variables. Some entries may override variables
# set by alacritty itself.
#env:
  # TERM variable
  #
  # This value is used to set the `$TERM` environment variable for
  # each instance of Alacritty. If it is not present, alacritty will
  # check the local terminfo database and use `alacritty` if it is
  # available, otherwise `xterm-256color` is used.
  #TERM: xterm-256color

window:
  # Window dimensions (changes require restart)
  #
  # Specified in number of columns/lines, not pixels.
  # If both are `0`, this setting is ignored.
  dimensions:
    columns: 0
    lines: 0

  # Window position (changes require restart)
  #
  # Specified in number of pixels.
  # If the position is not set, the window manager will handle the placement.
  #position:
  #  x: 0
  #  y: 0

  # Window padding (changes require restart)
  #
  # Blank space added around the window in pixels. This padding is scaled
  # by DPI and the specified value is always added at both opposing sides.
  padding:
    x: 0
    y: 0

  # Spread additional padding evenly around the terminal content.
  dynamic_padding: false

  # Window decorations
  #
  # Values for `decorations`:
  #     - full: Borders and title bar
  #     - none: Neither borders nor title bar
  #
  # Values for `decorations` (macOS only):
  #     - transparent: Title bar, transparent background and title bar buttons
  #     - buttonless: Title bar, transparent background, but no title bar buttons
  decorations: full

  # Startup Mode (changes require restart)
  #
  # Values for `startup_mode`:
  #   - Windowed
  #   - Maximized
  #   - Fullscreen
  #
  # Values for `startup_mode` (macOS only):
  #   - SimpleFullscreen
  startup_mode: Windowed

  # Window title
  #title: Alacritty

  # Window class (Linux only):
  class:
    # Application instance name
    instance: Alacritty
    # General application class
    general: Alacritty

  # GTK theme variant (Linux only)
  #
  # Override the variant of the GTK theme. Commonly supported values are `dark` and `light`.
  # Set this to `None` to use the default theme variant.
  gtk_theme_variant: None

scrolling:
  # Maximum number of lines in the scrollback buffer.
  # Specifying '0' will disable scrolling.
  history: 10000

  # Number of lines the viewport will move for every line scrolled when
  # scrollback is enabled (history > 0).
  multiplier: 3

  # Faux Scrolling
  #
  # The `faux_multiplier` setting controls the number of lines the terminal
  # should scroll when the alternate screen buffer is active. This is used
  # to allow mouse scrolling for applications like `man`.
  #
  # Specifying `0` will disable faux scrolling.
  faux_multiplier: 3

  # Scroll to the bottom when new text is written to the terminal.
  auto_scroll: false

# Spaces per Tab (changes require restart)
#
# This setting defines the width of a tab in cells.
#
# Some applications, like Emacs, rely on knowing about the width of a tab.
# To prevent unexpected behavior in these applications, it's also required to
# change the `it` value in terminfo when altering this setting.
tabspaces: 8

# Font configuration (changes require restart)
font:
  # Normal (roman) font face
  #normal:
    # Font family
    #
    # Default:
    #   - (macOS) Menlo
    #   - (Linux) monospace
    #   - (Windows) Consolas
    family: 'CaskaydiaCove Nerd Font'

    # The `style` can be specified to pick a specific face.
    style: 'Regular'

  # Bold font face
  #bold:
    # Font family
    #
    # If the bold family is not specified, it will fall back to the
    # value specified for the normal font.
    #family: monospace

    # The `style` can be specified to pick a specific face.
    #style: Bold

  # Italic font face
  #italic:
    # Font family
    #
    # If the italic family is not specified, it will fall back to the
    # value specified for the normal font.
    #family: monospace

    # The `style` can be specified to pick a specific face.
    #style: Italic

  # Point size
  #size: 11.0

  # Offset is the extra space around each character. `offset.y` can be thought of
  # as modifying the line spacing, and `offset.x` as modifying the letter spacing.
  #offset:
  #x: 0
  #y: 0

  # Glyph offset determines the locations of the glyphs within their cells with
  # the default being at the bottom. Increasing `x` moves the glyph to the right,
  # increasing `y` moves the glyph upwards.
  #glyph_offset:
  #x: 0
  #y: 0

  # Thin stroke font rendering (macOS only)
  #
  # Thin strokes are suitable for retina displays, but for non-retina screens
  # it is recommended to set `use_thin_strokes` to `false`
  #
  # macOS >= 10.14.x:
  #
  # If the font quality on non-retina display looks bad then set
  # `use_thin_strokes` to `true` and enable font smoothing by running the
  # following command:
  #   `defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO`
  #
  # This is a global setting and will require a log out or restart to take
  # effect.
  #use_thin_strokes: true

# If `true`, bold text is drawn using the bright color variants.
draw_bold_text_with_bright_colors: true

# Colors (Tomorrow Night Bright)
colors:
  # Default colors
  primary:
    background: '0x000000'
    foreground: '0xeaeaea'

    # Bright and dim foreground colors
    #
    # The dimmed foreground color is calculated automatically if it is not present.
    # If the bright foreground color is not set, or `draw_bold_text_with_bright_colors`
    # is `false`, the normal foreground color will be used.
    #dim_foreground: '0x9a9a9a'
    #bright_foreground: '0xffffff'

  # Cursor colors
  #
  # Colors which should be used to draw the terminal cursor. If these are unset,
  # the cursor color will be the inverse of the cell color.
  #cursor:
  #  text: '0x000000'
  #  cursor: '0xffffff'

  # Selection colors
  #
  # Colors which should be used to draw the selection area. If selection
  # background is unset, selection color will be the inverse of the cell colors.
  # If only text is unset the cell text color will remain the same.
  #selection:
  #  text: '0xeaeaea'
  #  background: '0x404040'

  # Normal colors
  normal:
    black:   '0x000000'
    red:     '0xd54e53'
    green:   '0xb9ca4a'
    yellow:  '0xe6c547'
    blue:    '0x7aa6da'
    magenta: '0xc397d8'
    cyan:    '0x70c0ba'
    white:   '0xeaeaea'

  # Bright colors
  bright:
    black:   '0x666666'
    red:     '0xff3334'
    green:   '0x9ec400'
    yellow:  '0xe7c547'
    blue:    '0x7aa6da'
    magenta: '0xb77ee0'
    cyan:    '0x54ced6'
    white:   '0xffffff'

  # Dim colors
  #
  # If the dim colors are not set, they will be calculated automatically based
  # on the `normal` colors.
  #dim:
  #  black:   '0x000000'
  #  red:     '0x8c3336'
  #  green:   '0x7a8530'
  #  yellow:  '0x97822e'
  #  blue:    '0x506d8f'
  #  magenta: '0x80638e'
  #  cyan:    '0x497e7a'
  #  white:   '0x9a9a9a'

  # Indexed Colors
  #
  # The indexed colors include all colors from 16 to 256.
  # When these are not set, they're filled with sensible defaults.
  #
  # Example:
  #   `- { index: 16, color: '0xff00ff' }`
  #
  indexed_colors: []

# Visual Bell
#
# Any time the BEL code is received, Alacritty "rings" the visual bell. Once
# rung, the terminal background will be set to white and transition back to the
# default background color. You can control the rate of this transition by
# setting the `duration` property (represented in milliseconds). You can also
# configure the transition function by setting the `animation` property.
#
# Values for `animation`:
#   - Ease
#   - EaseOut
#   - EaseOutSine
#   - EaseOutQuad
#   - EaseOutCubic
#   - EaseOutQuart
#   - EaseOutQuint
#   - EaseOutExpo
#   - EaseOutCirc
#   - Linear
#
# Specifying a `duration` of `0` will disable the visual bell.
visual_bell:
  animation: EaseOutExpo
  duration: 0
  color: '0xffffff'

# Background opacity
#
# Window opacity as a floating point number from `0.0` to `1.0`.
# The value `0.0` is completely transparent and `1.0` is opaque.
# Deprecated:
#background_opacity: 1.0
#window:
#opacity: 0.8

selection:
  semantic_escape_chars: ",│`|:\"' ()[]{}<>"

  # When set to `true`, selected text will be copied to the primary clipboard.
  save_to_clipboard: false

# Allow terminal applications to change Alacritty's window title.
dynamic_title: true

cursor:
  # Cursor style
  #
  # Values for `style`:
  #   - ▇ Block
  #   - _ Underline
  #   - | Beam
  style: Block

  # If this is `true`, the cursor will be rendered as a hollow box when the
  # window is not focused.
  unfocused_hollow: true

# Live config reload (changes require restart)
live_config_reload: true

# Shell
#
# You can set `shell.program` to the path of your favorite shell, e.g. `/bin/fish`.
# Entries in `shell.args` are passed unmodified as arguments to the shell.
#
# Default:
#   - (macOS) /bin/bash --login
#   - (Linux) user login shell
#   - (Windows) powershell
#shell:
#  program: /bin/bash
#  args:
#    - --login

# Startup directory
#
# Directory the shell is started in. If this is unset, or `None`, the working
# directory of the parent process will be used.
working_directory: None

# Windows 10 ConPTY backend (Windows only)
#
# This will enable better color support and may resolve other issues,
# however this API and its implementation is still young and so is
# disabled by default, as stability may not be as good as the winpty
# backend.
#
# Alacritty will fall back to the WinPTY automatically if the ConPTY
# backend cannot be initialized.
enable_experimental_conpty_backend: false

# Send ESC (\x1b) before characters when alt is pressed.
alt_send_esc: true

debug:
  # Display the time it takes to redraw each frame.
  render_timer: false

  # Keep the log file after quitting Alacritty.
  persistent_logging: false

  # Log level
  #
  # Values for `log_level`:
  #   - None
  #   - Error
  #   - Warn
  #   - Info
  #   - Debug
  #   - Trace
  log_level: Warn

  # Print all received window events.
  print_events: false

  # Record all characters and escape sequences as test data.
  ref_test: false

mouse:
  # Click settings
  #
  # The `double_click` and `triple_click` settings control the time
  # alacritty should wait for accepting multiple clicks as one double
  # or triple click.
  double_click: { threshold: 300 }
  triple_click: { threshold: 300 }

  # If this is `true`, the cursor is temporarily hidden when typing.
  hide_when_typing: false

  # Section url is deprecated; use `hints` section instead
  #url:
    # URL launcher
    #
    # This program is executed when clicking on a text which is recognized as a URL.
    # The URL is always added to the command as the last parameter.
    #
    # When set to `None`, URL launching will be disabled completely.
    #
    # Default:
    #   - (macOS) open
    #   - (Linux) xdg-open
    #   - (Windows) explorer
    #launcher:
    #  program: xdg-open
    #  args: []

    # URL modifiers
    #
    # These are the modifiers that need to be held down for opening URLs when clicking
    # on them. The available modifiers are documented in the key binding section.
    #modifiers: None

# Mouse bindings
#
# Mouse bindings are specified as a list of objects, much like the key
# bindings further below.
#
# Each mouse binding will specify a:
#
# - `mouse`:
#
#   - Middle
#   - Left
#   - Right
#   - Numeric identifier such as `5`
#
# - `action` (see key bindings)
#
# And optionally:
#
# - `mods` (see key bindings)
mouse_bindings:
  - { mouse: Middle, action: PasteSelection }

# Key bindings
#
# Key bindings are specified as a list of objects. For example, this is the
# default paste binding:
#
# `- { key: V, mods: Control|Shift, action: Paste }`
#
# Each key binding will specify a:
#
# - `key`: Identifier of the key pressed
#
#    - A-Z
#    - F1-F12
#    - Key0-Key9
#
#    A full list with available key codes can be found here:
#    https://docs.rs/glutin/*/glutin/enum.VirtualKeyCode.html#variants
#
#    Instead of using the name of the keys, the `key` field also supports using
#    the scancode of the desired key. Scancodes have to be specified as a
#    decimal number. This command will allow you to display the hex scancodes
#    for certain keys:
#
#       `showkey --scancodes`.
#
# Then exactly one of:
#
# - `chars`: Send a byte sequence to the running application
#
#    The `chars` field writes the specified string to the terminal. This makes
#    it possible to pass escape sequences. To find escape codes for bindings
#    like `PageUp` (`"\x1b[5~"`), you can run the command `showkey -a` outside
#    of tmux. Note that applications use terminfo to map escape sequences back
#    to keys. It is therefore required to update the terminfo when changing an
#    escape sequence.
#
# - `action`: Execute a predefined action
#
#   - Copy
#   - Paste
#   - PasteSelection
#   - IncreaseFontSize
#   - DecreaseFontSize
#   - ResetFontSize
#   - ScrollPageUp
#   - ScrollPageDown
#   - ScrollLineUp
#   - ScrollLineDown
#   - ScrollToTop
#   - ScrollToBottom
#   - ClearHistory
#   - Hide
#   - Quit
#   - ToggleFullscreen
#   - SpawnNewInstance
#   - ClearLogNotice
#   - None
#
#   (macOS only):
#   - ToggleSimpleFullscreen: Enters fullscreen without occupying another space
#
# - `command`: Fork and execute a specified command plus arguments
#
#    The `command` field must be a map containing a `program` string and an
#    `args` array of command line parameter strings. For example:
#       `{ program: "alacritty", args: ["-e", "vttest"] }`
#
# And optionally:
#
# - `mods`: Key modifiers to filter binding actions
#
#    - Command
#    - Control
#    - Option
#    - Super
#    - Shift
#    - Alt
#
#    Multiple `mods` can be combined using `|` like this:
#       `mods: Control|Shift`.
#    Whitespace and capitalization are relevant and must match the example.
#
# - `mode`: Indicate a binding for only specific terminal reported modes
#
#    This is mainly used to send applications the correct escape sequences
#    when in different modes.
#
#    - AppCursor
#    - AppKeypad
#    - Alt
#
#    A `~` operator can be used before a mode to apply the binding whenever
#    the mode is *not* active, e.g. `~Alt`.
#
# Bindings are always filled by default, but will be replaced when a new
# binding with the same triggers is defined. To unset a default binding, it can
# be mapped to the `None` action.
key_bindings:
  # (Windows/Linux only)
  #- { key: V,        mods: Control|Shift, action: Paste            }
  #- { key: C,        mods: Control|Shift, action: Copy             }
  #- { key: Insert,   mods: Shift,         action: PasteSelection   }
  #- { key: Key0,     mods: Control,       action: ResetFontSize    }
  #- { key: Equals,   mods: Control,       action: IncreaseFontSize }
  #- { key: Add,      mods: Control,       action: IncreaseFontSize }
  #- { key: Subtract, mods: Control,       action: DecreaseFontSize }
  #- { key: Minus,    mods: Control,       action: DecreaseFontSize }
  #- { key: Return,   mods: Alt,           action: ToggleFullscreen }

  # (macOS only)
  #- { key: Key0,   mods: Command,         action: ResetFontSize    }
  #- { key: Equals, mods: Command,         action: IncreaseFontSize }
  #- { key: Add,    mods: Command,         action: IncreaseFontSize }
  #- { key: Minus,  mods: Command,         action: DecreaseFontSize }
  #- { key: K,      mods: Command,         action: ClearHistory     }
  #- { key: K,      mods: Command,         chars: "\x0c"            }
  #- { key: V,      mods: Command,         action: Paste            }
  #- { key: C,      mods: Command,         action: Copy             }
  #- { key: H,      mods: Command,         action: Hide             }
  #- { key: Q,      mods: Command,         action: Quit             }
  #- { key: W,      mods: Command,         action: Quit             }
  #- { key: F,      mods: Command|Control, action: ToggleFullscreen }

  - { key: Paste,                   action: Paste                            }
  - { key: Copy,                    action: Copy                             }
  - { key: L,        mods: Control, action: ClearLogNotice                   }
  - { key: L,        mods: Control, chars: "\x0c"                            }
  - { key: Home,     mods: Alt,     chars: "\x1b[1;3H"                       }
  - { key: Home,                    chars: "\x1bOH",        mode: AppCursor  }
  - { key: Home,                    chars: "\x1b[H",        mode: ~AppCursor }
  - { key: End,      mods: Alt,     chars: "\x1b[1;3F"                       }
  - { key: End,                     chars: "\x1bOF",        mode: AppCursor  }
  - { key: End,                     chars: "\x1b[F",        mode: ~AppCursor }
  - { key: PageUp,   mods: Shift,   action: ScrollPageUp,   mode: ~Alt       }
  - { key: PageUp,   mods: Shift,   chars: "\x1b[5;2~",     mode: Alt        }
  - { key: PageUp,   mods: Control, chars: "\x1b[5;5~"                       }
  - { key: PageUp,   mods: Alt,     chars: "\x1b[5;3~"                       }
  - { key: PageUp,                  chars: "\x1b[5~"                         }
  - { key: PageDown, mods: Shift,   action: ScrollPageDown, mode: ~Alt       }
  - { key: PageDown, mods: Shift,   chars: "\x1b[6;2~",     mode: Alt        }
  - { key: PageDown, mods: Control, chars: "\x1b[6;5~"                       }
  - { key: PageDown, mods: Alt,     chars: "\x1b[6;3~"                       }
  - { key: PageDown,                chars: "\x1b[6~"                         }
  - { key: Tab,      mods: Shift,   chars: "\x1b[Z"                          }
  - { key: Back,                    chars: "\x7f"                            }
  - { key: Back,     mods: Alt,     chars: "\x1b\x7f"                        }
  - { key: Insert,                  chars: "\x1b[2~"                         }
  - { key: Delete,                  chars: "\x1b[3~"                         }
  - { key: Left,     mods: Shift,   chars: "\x1b[1;2D"                       }
  - { key: Left,     mods: Control, chars: "\x1b[1;5D"                       }
  - { key: Left,     mods: Alt,     chars: "\x1b[1;3D"                       }
  - { key: Left,                    chars: "\x1b[D",        mode: ~AppCursor }
  - { key: Left,                    chars: "\x1bOD",        mode: AppCursor  }
  - { key: Right,    mods: Shift,   chars: "\x1b[1;2C"                       }
  - { key: Right,    mods: Control, chars: "\x1b[1;5C"                       }
  - { key: Right,    mods: Alt,     chars: "\x1b[1;3C"                       }
  - { key: Right,                   chars: "\x1b[C",        mode: ~AppCursor }
  - { key: Right,                   chars: "\x1bOC",        mode: AppCursor  }
  - { key: Up,       mods: Shift,   chars: "\x1b[1;2A"                       }
  - { key: Up,       mods: Control, chars: "\x1b[1;5A"                       }
  - { key: Up,       mods: Alt,     chars: "\x1b[1;3A"                       }
  - { key: Up,                      chars: "\x1b[A",        mode: ~AppCursor }
  - { key: Up,                      chars: "\x1bOA",        mode: AppCursor  }
  - { key: Down,     mods: Shift,   chars: "\x1b[1;2B"                       }
  - { key: Down,     mods: Control, chars: "\x1b[1;5B"                       }
  - { key: Down,     mods: Alt,     chars: "\x1b[1;3B"                       }
  - { key: Down,                    chars: "\x1b[B",        mode: ~AppCursor }
  - { key: Down,                    chars: "\x1bOB",        mode: AppCursor  }
  - { key: F1,                      chars: "\x1bOP"                          }
  - { key: F2,                      chars: "\x1bOQ"                          }
  - { key: F3,                      chars: "\x1bOR"                          }
  - { key: F4,                      chars: "\x1bOS"                          }
  - { key: F5,                      chars: "\x1b[15~"                        }
  - { key: F6,                      chars: "\x1b[17~"                        }
  - { key: F7,                      chars: "\x1b[18~"                        }
  - { key: F8,                      chars: "\x1b[19~"                        }
  - { key: F9,                      chars: "\x1b[20~"                        }
  - { key: F10,                     chars: "\x1b[21~"                        }
  - { key: F11,                     chars: "\x1b[23~"                        }
  - { key: F12,                     chars: "\x1b[24~"                        }
  - { key: F1,       mods: Shift,   chars: "\x1b[1;2P"                       }
  - { key: F2,       mods: Shift,   chars: "\x1b[1;2Q"                       }
  - { key: F3,       mods: Shift,   chars: "\x1b[1;2R"                       }
  - { key: F4,       mods: Shift,   chars: "\x1b[1;2S"                       }
  - { key: F5,       mods: Shift,   chars: "\x1b[15;2~"                      }
  - { key: F6,       mods: Shift,   chars: "\x1b[17;2~"                      }
  - { key: F7,       mods: Shift,   chars: "\x1b[18;2~"                      }
  - { key: F8,       mods: Shift,   chars: "\x1b[19;2~"                      }
  - { key: F9,       mods: Shift,   chars: "\x1b[20;2~"                      }
  - { key: F10,      mods: Shift,   chars: "\x1b[21;2~"                      }
  - { key: F11,      mods: Shift,   chars: "\x1b[23;2~"                      }
  - { key: F12,      mods: Shift,   chars: "\x1b[24;2~"                      }
  - { key: F1,       mods: Control, chars: "\x1b[1;5P"                       }
  - { key: F2,       mods: Control, chars: "\x1b[1;5Q"                       }
  - { key: F3,       mods: Control, chars: "\x1b[1;5R"                       }
  - { key: F4,       mods: Control, chars: "\x1b[1;5S"                       }
  - { key: F5,       mods: Control, chars: "\x1b[15;5~"                      }
  - { key: F6,       mods: Control, chars: "\x1b[17;5~"                      }
  - { key: F7,       mods: Control, chars: "\x1b[18;5~"                      }
  - { key: F8,       mods: Control, chars: "\x1b[19;5~"                      }
  - { key: F9,       mods: Control, chars: "\x1b[20;5~"                      }
  - { key: F10,      mods: Control, chars: "\x1b[21;5~"                      }
  - { key: F11,      mods: Control, chars: "\x1b[23;5~"                      }
  - { key: F12,      mods: Control, chars: "\x1b[24;5~"                      }
  - { key: F1,       mods: Alt,     chars: "\x1b[1;6P"                       }
  - { key: F2,       mods: Alt,     chars: "\x1b[1;6Q"                       }
  - { key: F3,       mods: Alt,     chars: "\x1b[1;6R"                       }
  - { key: F4,       mods: Alt,     chars: "\x1b[1;6S"                       }
  - { key: F5,       mods: Alt,     chars: "\x1b[15;6~"                      }
  - { key: F6,       mods: Alt,     chars: "\x1b[17;6~"                      }
  - { key: F7,       mods: Alt,     chars: "\x1b[18;6~"                      }
  - { key: F8,       mods: Alt,     chars: "\x1b[19;6~"                      }
  - { key: F9,       mods: Alt,     chars: "\x1b[20;6~"                      }
  - { key: F10,      mods: Alt,     chars: "\x1b[21;6~"                      }
  - { key: F11,      mods: Alt,     chars: "\x1b[23;6~"                      }
  - { key: F12,      mods: Alt,     chars: "\x1b[24;6~"                      }
  - { key: F1,       mods: Super,   chars: "\x1b[1;3P"                       }
  - { key: F2,       mods: Super,   chars: "\x1b[1;3Q"                       }
  - { key: F3,       mods: Super,   chars: "\x1b[1;3R"                       }
  - { key: F4,       mods: Super,   chars: "\x1b[1;3S"                       }
  - { key: F5,       mods: Super,   chars: "\x1b[15;3~"                      }
  - { key: F6,       mods: Super,   chars: "\x1b[17;3~"                      }
  - { key: F7,       mods: Super,   chars: "\x1b[18;3~"                      }
  - { key: F8,       mods: Super,   chars: "\x1b[19;3~"                      }
  - { key: F9,       mods: Super,   chars: "\x1b[20;3~"                      }
  - { key: F10,      mods: Super,   chars: "\x1b[21;3~"                      }
  - { key: F11,      mods: Super,   chars: "\x1b[23;3~"                      }
  - { key: F12,      mods: Super,   chars: "\x1b[24;3~"                      }
  - { key: NumpadEnter,             chars: "\n"                              }

```

Looking forward to changing the font:

List fonts:

```shell
$ cd
$ fc-list > temp_fonts_list.txt 
```

Open the file:

```shell 
$ nvim temp_fonts_list
```

Look for the ligatures font (that we installed as a Nerd Font: Caskaydia Cove Regular Nerd Font Complete.otf):
```vim
/Caskaydia
```

The search returns the line that contains:

```txt
CaskaydiaCove Nerd Font:style=Regular
```

This search is to be more clear in what is the name part and the style part of the result:

```shell
$ fc-match 'CaskaydiaCove Nerd Font' -s | more
```

Add the information to the file **alacritty.yml**:

Alternative configurations can use the default value for every OS:
<br />(macOS) Menlo
<br />(Linux/BSD) monospace
<br />(Windows) Consolas

##### WezTerm

Use **this terminal instead of Alacritty**:
<br />Web: <https://wezfurlong.org/wezterm/>

Available Features (with commands):
- Runs on Linux, macOS, Windows 10 and FreeBSD.
- Multiplex terminal panes, tabs and windows on local and remote hosts, with native mouse and scrollback
Ligatures, Color Emoji and font fallback, with true color and dynamic color schemes.
- Hyperlinks.
- **Searchable Scrollback** (use `mouse wheel` and `Shift-PageUp` and `Shift PageDown` to navigate, `Ctrl-Shift-F` to ac-tivate **search mode**).
- xterm style selection of text with mouse; **paste selection** via `Shift-Insert` (bracketed paste is supported!).
- SGR style mouse reporting (works in vim and tmux).
- Render underline, double-underline, italic, bold, strikethrough (most other terminal emulators do not support as **many render attributes**).
- Configuration via a **configuration file** with hot reloading.
- **Multiple Windows** (Hotkey: `Super-N`).  -- Note: This key shortcut is assigned to notifications in Cinnamon.
- Splits/Panes (**Split horizontally/vertically**: `Ctrl-Shift-Alt-%` and `Ctrl-Shift-Alt-"`, **move between panes**: `Ctrl-ArrowKey`).
- **Tabs** (Hotkey: `Super-T`, **next/prev**: `Super-Shift-[` and `Super-Shift-]`, **go-to**: `Super-[1-9]`).

Installation (DPKG package for Debian):
Web: <https://wezfurlong.org/wezterm/install/linux.html>

```shell
$ sudo gdebi wezterm-nightly.Debian11.deb
```

Configuration options:

References:
<br />Web: <https://wezfurlong.org/wezterm/config/appearance.html>

Create a configuration file:
References:
Web: <https://wezfurlong.org/wezterm/config/files.html>

Create a symbolic link from **~/.wezterm.lua** to a new file **~/config/.wezterm.lua**

```shell
$ cd
$ ln -s config/.wezterm.lua .wezterm.lua
$ touch config/.wezterm.lua
```

Color Scheme:

Add this to the configuration file **~/config/.wezterm.lua**

```lua
return {
  color_scheme = "Batman",
}
```

Or:

```lua
local wezterm = require 'wezterm';
return {
  font = wezterm.font("JetBrains Mono"),
}
```

Or, merging two options in the same file:

```lua
local wezterm = require 'wezterm';
return {
  font = wezterm.font("JetBrains Mono"),
  color_scheme = "Batman",
}
```

Defining a Color Scheme in your .wezterm.lua:

Web: <https://wezfurlong.org/wezterm/config/appearance.html>

Tab Bar Appearance & Colors:

Web: <https://wezfurlong.org/wezterm/config/appearance.html>

Window Padding:

Web: <https://wezfurlong.org/wezterm/config/appearance.html>

Styling Inactive Panes:

Add this to the config file **~/config/wezterm.lua**, inside the section `return {}`. It is the deafault configuration: 

```lua
  inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.8,
  }
```

The range of these values is 0.0 and up; they are used to multiply the existing values, so the default of 1.0 preserves the existing component, whilst 0.5 will reduce it by half, and 2.0 will double the value.

Window Background Image:

**~/config/wezterm.lua**:

```lua
-- Add this comma to the end of the last section (inactive_pane_hsb) before adding new code
--},
  window_background_image = "/home/esteban/config/backgrounds/Tux.jpg",

  window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = 0.3,

    -- You can adjust the hue by scaling its value.
    -- a multiplier of 1.0 leaves the value unchanged.
    hue = 1.0,

    -- You can adjust the saturation also.
    saturation = 1.0,
  },
 -- This is the last comma before closing the section "return", and it is optional.

```

Window Background Gradient:

See window_background_gradient for configuration information on gradients:
Web: <https://wezfurlong.org/wezterm/config/lua/config/window_background_gradient.html>

Window Background Opacity:

Add this line to the end of the confiration file **~/config/wezterm.lua**:

```lua
window_background_opacity = 1.0
```

Remember that the last comma before the **return** closing curly brace is optional. 

Test your configuration with Neovim:

Disable this line in the Neovim config file **.vimrc** to be able to use the editor with the terminal configration (currently background and tranparency), instead of the Neovim Theme configration:

```vim
" Plug 'mhartington/oceanic-next'
```

Reload the file to apply the changes and test the configuration.
<br />Reactivate the plugin if you will, and then continue with the next steps in the Neovim configuration.

This is copy of the complete file configuration. Only the Ligatures support is active. File **~/config/wezterm.lua**:

```lua
local wezterm = require 'wezterm';
return {
  --font = wezterm.font("JetBrains Mono"),
  --color_scheme = "Batman",
  inactive_pane_hsb = {
    saturation = 0.9,
    brightness = 0.8,
  },
  --window_background_image = "/home/esteban/config/backgrounds/Tux.jpg",

  window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = 0.3,

    -- You can adjust the hue by scaling its value.
    -- a multiplier of 1.0 leaves the value unchanged.
    hue = 1.0,

    -- You can adjust the saturation also.
    saturation = 1.0,
  },
  --window_background_opacity = 0.7
}

```

##### Install vim-plug plugins: vim-wakatime

https://wakatime.com/neovim-plugin#:~:text=The%20WakaTime%20plugin%20for%20Neovim,operating%20system%2C%20language%2C%20etc

Installation:
<br />https://wakatime.com/neovim

Add the plugin to your **~/.vimrc**:

```vim
" The open source plugin for productivity metrics, goals, leaderboards, and automatic time tracking.
Plug 'wakatime/vim-wakatime'
```

From terminal run:

```shell
$ nvim +PlugInstall
```

(Re-)start Neovim and enter your API Key, then press Enter. 

Type some code, then visit your WakaTime Dashboard to see your stats!

##### Run the current file with Node.js from Neovim

Add this to your **~/.vimrc**, in the section custom shorcuts (with the Map leader key):

```vim
" Run current file with node.js
nnoremap <Leader>x :!node %<cr>
```

From the file:

```vim
:source %
```

Test the keyshortcut x with a file **index.js** that returns a console result, for example, console.log().

##### Run the current file with Node.js from Neovim

```vim
" ------------------------------------------------------------------------------
" Shortcuts / Custom shortcuts with leader key
" ------------------------------------------------------------------------------
" Write file
nmap <Leader>w :w<CR>

" Quit file
nmap <Leader>q :q<CR>

" Run current file with node.js
nnoremap <Leader>x :!node %<cr>

" Run visual selection with Python
" Use :'<,'>write ! python
```

##### Install vim-plug plugins: Vimux

By default, when you call VimuxRunCommand vimux will create a 20% tall horizontal pane under your current tmux pane and execute a command in it without losing the focus on vim. Once that pane exists, whenever you call VimuxRunCommand again the command will be executed in that pane. A frequent use case is wanting to rerun commands over and over. An example of this is running the current file through rspec. Rather than typing that over and over VimuxRunLastCommand will execute the last command called with VimuxRunCommand.
<br />Web: <https://github.com/preservim/vimux?hmsr=joyk.com&utm_source=joyk.com&utm_medium=referral>

Add this to your **~/.vimrc**:

```vim
" Tmux
Plug 'benmills/vimux'
```

From the file:

```vim
:source %
```

Usage:

Open a tmux session before open the file:

```shell
$ tmux new-session -s Neovim
# or use:
$ tmux
$ tmux list-sessions
$ tmux kill-session -t 0  <-- Or your session name
```

Run a command that will execute in a tmux pane below the code:

```vim
:call VimuxRunCommand ("ls")
:call VimuxRunCommand ("node index.js")
: VimuxClearTerminalScreen
```

To recall the Neovim command, after entering `:`, press `UP ARROW`.

Add some key binding to a new section in the file **.vimrc**:

```vim
" ------------------------------------------------------------------------------
" Plugin options / Vimux
" ------------------------------------------------------------------------------
" Orientation (vertical or horizontal)
let g:VimuxOrientation = "v"

" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>

" Run the current file with Python (current Python environment)
map <Leader>py :call VimuxRunCommand("clear; python " . bufname("%"))<CR>

" Prompt for a command to run, i.e.: node index.js
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" Clear the terminal screen of the runner pane.
map <Leader>v<C-l> :VimuxClearTerminalScreen<CR>

```

The full documentation is available online and accessible inside vim via `:help vimux`

Platform-specific Plugins:
<br />vim-vroom runner for rspec, cucumber and test/unit; vimux support via g:vroom_use_vimux
<br />vimux-ruby-test a set of commands to easily run ruby tests
<br />vimux-cucumber run Cucumber Features through Vimux
<br />vim-turbux Turbo Ruby testing with tmux
<br />vimux-pyutils A set of functions for vimux that allow to run code blocks in ipython
<br />vimux-nose-test Run nose tests in vimux
<br />vimux-golang Run go tests in vimux
<br />vimux-zeus Run zeus commands in vimux
<br />vimix Run Elixir mix commands in vimux
<br />vimux-cargo run rust tests and projects using cargo and vimux
<br />vimux-bazel-test Run bazel tests in vimux
<br />vimux-jest-test Run jest tests in vimux

##### Install vim-plug plugins: vimux-jest-test

Vimux plugin for running jest tests. Similar to vimux-ruby-test, vimux-nose-test, etc.
<br />Honestly, this is basically vimux-nose-test with s/nose/jest wink.
<br />Web: <https://github.com/tyewang/vimux-jest-test>

Installation:
<br />Add the plugin to your **~/.vimrc**:

```vim
" vimux-jest-test
Plug 'tyewang/vimux-jest-test'
```

From terminal run:

```shell
$ nvim +PlugInstall
```

Or from the file:

```vim
:source %
:PlugInstall
```

Commands:

```vim
:RunJest " runs all the tests
:RunJestOnBuffer " runs all the tests in the current file
:RunJestFocused " runs the current test under the cursor
```

Notes:
This plugin does not run any tests that would not be normally run by jest, e.g. test.skip, etc.,
<br />Because of limitations with jest, running focused tests may run multiple tests if they have the same name.

##### Install vim-plug plugins: vim-test

Run your tests at the speed of thought.
<br />Web: <https://www.joyk.com/dig/detail/1549679409392780?page=2>
<br />Web: <https://github.com/vim-test/vim-test>

Installation:
<br />Add the plugin to your **~/.vimrc**:

```vim
" vim-test
Plug 'janko-m/vim-test'
```

From terminal run:

```shell
$ nvim +PlugInstall
```

Or from the file:

```vim
:source %
:PlugInstall
```

Add this piece of code to a new section options:

```vim
" vim-test options
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>
```

Visit the plugin web for a lot more information on how to use and setup the plugin to test correctly, and also based on your project.

##### Install vim-plug plugins: closetag.vim

<br />Web: <https://github.com/alvan/vim-closetag>

Installation:
<br />Add the plugin to your **~/.vimrc**:

```vim
" Typing

" Creates closing HTML like tags when typing
Plug 'alvan/vim-closetag'
```

From terminal run:

```shell
$ nvim +PlugInstall
```

Or from the file:

```vim
:source %
:PlugInstall
```

Set in your **.vimrc**:

```vim
" closetag.vim options
" Filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
" Filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" Filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'
" Filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
" Integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1
" Dict
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'
" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
```

Open a basic html file like **index.hml** to check the configuration:

```html
<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

<tab




<t


"Hello world!"

</body>
</html>

```

Usage:
<br />The current content:

```html
<table|
```
Now you press `>`, the content will be:

```html
<table>|</table>
```

And then if you press `>` again, the content will be:

```html
<table>
    |
</table>
```

With the `leader key` + `>` the tag closes normally:

```html
<table|
```

Finally, with the `leader key` + `>>` the tag closes normally, and the cursor jumps a new indented line:

```html
<table>
	|
```

The following tags will not be closed:

```html
<area>, <base>, <br>, <col>, <command>, <embed>, <hr>, <img>, 
<input>, <keygen>, <link>, <meta>, <param>, <source>, <track>, <wbr>,<menuitem>
```

Commands:
<br />Use these commands to toggle/enable/disable this function for the current buffer:

```vim
:CloseTagToggleBuffer
:CloseTagEnableBuffer
:CloseTagDisableBuffer
```

Note about React fragments:
<br />By default, **React fragments** are automatically closed only when a React file is open.
<br />When editing a **.html** file you will get:

```js
<|
<>|
```

When editing a **.{t,j}sx** file you will get:

```js
<|
<>|</>
```

To override this behavior, you can set the global g:closetag_enable_react_fragment in your .vimrc:

```vim
" integer value [0|1]
" Enables closing tags for React fragments -> <></> for all supported file types
let g:closetag_enable_react_fragment = 1

" Disable closing tags for React fragments -> <></> for all supported file types
let g:closetag_enable_react_fragment = 0
```

Create the subsection at the end of the vim-closetag, disabled for now:

```vim
" React fragments
" integer value [0|1]
" Enables closing tags for React fragments -> <></> for all supported file types
"let g:closetag_enable_react_fragment = 1
" Disable closing tags for React fragments -> <></> for all supported file types
"let g:closetag_enable_react_fragment = 0
```

##### Install vim-plug plugins: vim-surround

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
<br />This plugin is very powerful for HTML and XML editing, a niche which currently seems underfilled in Vim land.
<br />Web: <https://github.com/tpope/vim-surround>

Installation:
<br />Add the plugin to your **~/.vimrc**:

```vim
" surround.vim
" It's all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
Plug 'tpope/vim-surround'
```

From terminal run:

```shell
$ nvim +PlugInstall
```

Or from the file:

```vim
:source %
:PlugInstall
```

Usage:
<br />Open a HTML file, such as **index.html**, and in **NORMAL mode**:
<br />Press `cs"'` inside `"Hello world!"` to change it to `'Hello world!'`
<br />Now press `cs'<q>` to change it to `<q>Hello world!</q>`.
<br />To go **full circle**, press `cst"` to get `"Hello world!"`. **IT ASK FOR a replacement string in the Neovim command line**.
<br />To remove the delimiters entirely, press `ds"`: `Hello world!`. **IT ASK FOR a replacement string in the Neovim command line**.
<br />Now with **the cursor on** `"Hello"`, press `ysiw]` (**iw is a text object**): `[Hello] world!`. **The last character `]` means the replacement string for the word/object with the cursor over it**.
<br />Let's make that braces and add some space (use `}` instead of `{` for no space): `cs]{`: `{ Hello } world!`. **Replaces the opening and closing characters `]` with `{` (curly braces)**.
<br />Now wrap the entire line in parentheses with `yssb` or `yss)`: `({ Hello } world!)`. **`yss` repetitions do not add additional embedded parenthesis**.
<br />Revert to the original text: `ds{ds)`: `Hello world!`. **This example removes two strigs types**.
<br />Emphasize hello, `ysiw<em>`: `<em>Hello</em> world!`.
<br />Finally, let's try out **visual mode**. Press a `capital V` (for **linewise visual mode, (V-LINE)**) followed by `S<p class="important">`:

```html
<p class="important">
  <em>Hello</em> world!
</p>
```

Note: The `.` command (repeat) will work with `ds`, `cs`, and `yss` if you install the plugin **repeat.vim**. And there is no need to add any section options for **repeat.vim** in the file **.vimrc**.

##### Install vim-plug plugins: codeium.vim

codeium.vim:

It's a programming Copilot/Pair programming assitant.

Installation:

```vim
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
```

Web: <https://github.com/Exafunction/codeium.vim>

Run:

```vim
:Codeium Auth to set up the plugin and start using Codeium.
```

Add this to the section codeium.vim options:

```vim
" Disable Codeium by default
"let g:codeium_enabled = v:false

"Disable the automatic triggering of completions
"let g:codeium_manual = v:true

" Disable Codeium for particular filetypes
let g:codeium_filetypes = {
    \ "bash": v:false,
    \ "typescript": v:true,
    \ }

" Key bindings

"let g:codeium_disable_bindings = 1  " Disable Codeium's default keybindings
"vim.g.codeium_disable_bindings = 1  " or in Neovim
"g:codeium_no_map_tab                " Just disable the <Tab> binding (Accept suggestion)

" Bind the actions to non-default keys
"inoremap <script> <C-g> <Cmd>call codeium#Accept()<CR>       " Accept/Insert suggestion
inoremap <C-;> <Cmd>call codeium#CycleCompletions(1)<CR>     " Next suggestion
inoremap <C-,> <Cmd>call codeium#CycleCompletions(-1)<CR>    " Previous suggestion
inoremap <C-x> <Cmd>call codeium#Clear()<CR>                 " Clear current suggestion

```

Usage:

In comments:

```python
# comment nth fibonacci number
(The assitant autocompletes here with suggestions)
```

Default options:

<M-]>: This typically represents the **Meta key** combined with the ']' key. On many terminals, the Meta key is often mapped to the Alt key. So, <M-]> might be interpreted as pressing Alt and ']' simultaneously.

<C-]>: This represents the **Ctrl key** combined with the ']' key. So, <C-]> means pressing Ctrl and ']' at the same time.

Instead of the default options, use the non default keys set up in the file **.vimrc**.

`CTRL + ;`
`CTRL + ,`
`CTRL + x`

##### Install vim-plug plugins: Startify

This plugin provides a start screen for Vim and Neovim.

Project Management with Startify.

Web: <https://github.com/mhinz/vim-startify>

```vim
Plug 'mhinz/vim-startify'
```

Extra configurations:

```vim
" ------------------------------------------------------------------------------
" Plugin options / vim-startify
" ------------------------------------------------------------------------------
" Show modified and untracked git files

" Returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not in a git
" repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" Same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

" Use NERDTree bookmarks
let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")

"Auto-load and auto-save a session named from Git branch
function! GetUniqueSessionName()
  let path = fnamemodify(getcwd(), ':~:t')
  let path = empty(path) ? 'no-project' : path
  let branch = gitbranch#name()
  let branch = empty(branch) ? '' : '-' . branch
  return substitute(path . branch, '/', '-', 'g')
endfunction

autocmd User        StartifyReady silent execute 'SLoad '  . GetUniqueSessionName()
autocmd VimLeavePre *             silent execute 'SSave! ' . GetUniqueSessionName()

" Create a custom header using figlet
let g:startify_custom_header =
       \ startify#pad(split(system('figlet -w 100 SWORD VIM'), '\n'))
```

Auto-load and auto-save a session named from Git branch:

This will save a unique session with the Git branch name, overwriting the session if the branch already exists. If not in a Git project, the session will be saved as "no-project".

This requires vim-gitbranch.

Plugin configuration:
https://github.com/mhinz/vim-startify/wiki/Plugin-features-in-detail

Referencs for plugin configuration:
https://www.reddit.com/r/vim/comments/4advxg/vimstartify_includes_cowsay_implemention_now/
http://www.figlet.org/
https://doodlenerd.com/web-tool/figlet-generator

References:
Neovim - Project Management with Startify
https://m.youtube.com/watch?v=9IcXJvoPHCY

##### Install vim-plug plugins: vim-gitbranch

This plugin provides a function which returns the name of the git branch.

You can use this function to integrate with statusline plugins.

Web: <https://github.com/itchyny/vim-gitbranch>

Usage:

This plugin provides a function which returns the name of the git branch.

```vim
:echo gitbranch#name()
```

It is required by the pluging Startify.

##### Install vim-plug plugins: vim-visual-multi

It's called vim-visual-multi in analogy with visual-block, but the plugin works mostly from normal mode.

Web: <https://github.com/mg979/vim-visual-multi>

Installation:

```vim
" ------------------------------------------------------------------------------
" Plugins / Formatting / vim-visual-multi
" ------------------------------------------------------------------------------
Plug 'mg979/vim-visual-multi'
```

Basic usage:

- select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
- create cursors vertically with Ctrl-Down/Ctrl-Up
- select one character at a time with Shift-Arrows
- press n/N to get next/previous occurrence
- press [/] to select next/previous cursor
- press q to skip current and get next occurrence
- press Q to remove current cursor/selection
- start insert mode with i,a,I,A

Two main modes:

- in cursor mode commands work as they would in normal mode
- in extend mode commands work as they would in visual mode
- press Tab to switch between «cursor» and «extend» mode

Most vim commands work as expected (motions, r to replace characters, ~ to change case, etc). Additionally you can:
- run macros/ex/normal commands at cursors
- align cursors
- transpose selections
- add patterns with regex, or from visual mode

And more... of course, you can enter insert mode and autocomplete will work.

Test these shortcuts before installation to verify collisions.

Usage examples:

File: years_list.txt

```vim
year	total_games_sold
2008	175.07
1998	101.52
2002	58.67

year	total_games_sold   
2008	175.07
1998	101.52
2002	58.67

# a short text

```

Select a word:

`CTRL` + `N`.

Create multiple cursors:

Go to/click a word, press `CTRL` + `N`, go to/click another word in another line, press `CTRL` + `N`, and so on.

Switch to INSERT mode with `i`.

Use `SPACEBAR` to move the words used as cursors one at once.

Create cursors vertically:

Go to the character or blank space to use as column cursor.

Press `CTRL` + `N`.

Go to the same position in the next/previous row.

Use `CTRL` + `DOWN/UP` to create the cursors.

Switch to INSERT mode with `i`.

Use `SPACEBAR` to move the words used as cursors one at once.

The option `CTRL` + `N` `C-n` overrides the plugin NERDTree, in NORMAL mode. Add this comment to the NERDTree plugin options:

```vim
map <C-n> :NERDTreeToggle<CR>  " Set shortcut for open Nerdtree.
                               " Overridden by vim-visual-multi to select a word.
```

The only option available to open the NERDTree in the terminal program PuTTY for MS Windows is the key `F3`, which is imcompatible. If you use PuTTY, add a new mapping to the NERDTree configuration.

Resources:

<https://engagor.github.io/blog/2018/02/21/why-vim-doesnt-need-multiple-cursors/>

##### Install vim-plug plugins: coc-sh

SH language server extension using bash-language-server for coc.nvim.
Web: <https://vimawesome.com/plugin/coc-sh>

As a dependency, we recommend that you first install **shellcheck** shellcheck to enable linting: https://github.com/koalaman/shellcheck#installing . If shellcheck is installed, bash-language-server will automatically call it to provide linting and code analysis each time the file is updated (with debounce time or 500ms).

Bash language server installation:

It is a system dependency. I decided to skip snap packages and use mvm / node / npm. like this: 

```shell
npm i -g bash-language-server
```

Coc plugin installation:

```vim
:CocInstall coc-sh
```

Resources:
<https://github.com/bash-lsp/bash-language-server>
<https://snapcraft.io/install/bash-language-server/debian>

##### Install vim-plug plugins: vim-shellcheck

Vim wrapper for ShellCheck, a static analysis tool for shell scripts.

Web: <https://github.com/itspriddle/vim-shellcheck>

Dependencies:

Requires shellcheck:

```shell
sudo apt-get update
sudo apt-get install shellcheck
```

Usage:

Run shellcheck for the current buffer using optional [args] and send any errors to the quickfix-window. Specify a [range] or **use a visual selection to check only those lines**, otherwise the entire buffer is checked. Call with a bang to automatically open the quickfix-window when errors are found.

```vim
:[range]ShellCheck[!] [args]
```

To check all the complete document:

```vim
:ShellCheck
```

Open the **quickfix-window**, with the clickable list of errors:

```vim
:Shellcheck!
```

Compiler:
A ShellCheck :compiler is provided for use as a 'makeprg':

```vim
:compiler shellcheck
:make!
```

You can also run shellcheck as command, excluding rules in a file .shellcheckrc, like this:

```vim
:!shecheck script.sh
```

Specifying the shell:

```vim
!shellcheck --shell bash script.sh
```

Excluding file(s):

```
!find -type f -name "*.sh" -not -name "script.sh" -exec shellcheck {} \;
!find -type f -name "*.sh" -not -name "NO_FILE_FILTER" -exec shellcheck {} \;
```

Open ShellCheck error definition:

On an underlined error, press `CTRL` + `CLICK` on the error link. It will open your default web browser.

##### Install vim-plug plugins: vim-bash

There is a plugin for fixing syntax issues with bash files. Plugin based on official sh syntax detection.
Web: <https://vimawesome.com/plugin/vim-bash>
Web: <https://github.com/kovetskiy/vim-bash>

Add the plugin:

```vim
" ------------------------------------------------------------------------------
" Plugins / Linters / vim-bash
" ------------------------------------------------------------------------------
Plug 'kovetskiy/vim-bash'

```

Example:

File script.sh

```shell
# Function with wrong name with ":"
function count:down()
{
	echo "hello"
};
```

The plugin will color the text as if were a string, not a function name.

##### Install vim-plug plugins: bats.vim

Syntax highlighting for Bats, a Bash Automated Testing System
Web: <https://github.com/rosstimson/bats.vim>

Dependencies:

Install bats:

```shell
sudo apt-get update
sudo apt-get install bats
```

Install the plugin:

```vim
" ------------------------------------------------------------------------------
" Plugins / Syntax / bats.vim
" ------------------------------------------------------------------------------
Plug 'rosstimson/bats.vim'  " Extends the built in shell highlighting (sh.vim) for Bats
```

A test example file addition.bats:

```bats
#!/usr/bin/env bats

@test "addition using bc" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

@test "addition using dc" {
  result="$(echo 2 2+p | dc)"
  [ "$result" -eq 4 ]
}
```

Run the tests file like:

```shell
bats addition.bats
```

More test execution examples:

```shell
# Every run is a different type of test:

bats addition.bats
bats bats_test.bats

# Go to the directory my_script_sh
# Make the script file and the test file executable, or the output will return an error:
chmod +x *

# Run the test:
bats test_myscript.sh

```

Resources:
Web: <https://installati.one/install-bats-debian-10/?expand_article=1>

This as old as bats.vim, but could be a replacement for it:
Web: <https://github.com/vim-scripts>

How to create Bats test files (Official web site):
Web: <https://github.com/sstephenson/bats>

##### Debugging Python scripts

Run the script from Neovim:

Activate the virtual environment if you need, for example, with Anaconda Python:

File: print_as_command_does_skip_colors.py

```python
#!/usr/bin/env python

# Define color codes for different background colors
red_bg_color_code_start = "1;41m"
green_bg_color_code_start = "1;42m"
yellow_bg_color_code_start = "1;43m"
blue_bg_color_code_start = "1;44m"
magenta_bg_color_code_start = "1;45m"
cyan_bg_color_code_start = "1;46m"
black_bg_color_code_start = "1;40m"

color_code_end = "1;m"

# Print "COMMBASE:" with different background colors on separate lines followed by "hello world"
print(f"\033[{red_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{green_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{yellow_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{blue_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{magenta_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{cyan_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{black_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")

```

```shell
conda activate myapp_env
```

```vim
" Run the current file
:!python %
:!python3.11 %

" Run a specified file
:!python script.py
:!python3.11 script.py
```

Note that the output does not print text with colors, as if you were just running th script with python in the command line.

**Python Debugger (pdb)**:

The Python Debugger (pdb) is a part of Python's standard library. It allows you to set breakpoints, step through the code line by line, inspect variables and stack frames, and evaluate arbitrary Python code in the context of any stack frame.

You can use pdb in several ways:

From the command line: Run your Python script with pdb from the command line using the -m flag, like so: `python -m pdb myscript.py`.

Within your script: Import pdb and use `pdb.set_trace()` at the location where you want to break into the debugger.

Example of a script to debug:

File: debugging_python.py

```python
#!/usr/bin/env python

import pdb

def double(x):
    pdb.set_trace()
    return x * 2

val = 3
print(f"{val} * 2 is {double(val)}")

```

Steps to debug:

Go to the directory of the file to debug.

Using tmux with OH my Tmux installed, open a new Tmux session:

```shell
tmux new-session Neovim
```

Open the file that you want to debug:

Press `F3` to open the NERDTree, select the file debugging_python.py and open it.

If required, edit the file to add the debug code like:

```python
# Import the built-in debugger
import pdb

# Add breakpoint(s)
pdb.set_trace()
```

Open a new tmux pane within Neovim:

```vim
:!tmux split window
```

To switch the focus between the new pane down and up:

`PREFIX` + `B`, `DOWN/UP`.

You can resize the second panel with the keys (once it is focused):

`PREFIX` + `B` + `DOWN/UP`.

Default PREFIX = CTRL.

Run the debugger:

Focus the pane down and run the file using python.

Specify the route to the file if you are not in the path relative to the file.

Do not forget to verify the python environment.

```shell
python debugging_python.py
python3.11 debugging_python.py
```

Once the debugger is started, you will see a **(Pdb) prompt** where you can type various commands to navigate and inspect your code. Some useful pdb commands are `b` (set a breakpoint), `c` (continue debugging until you hit a breakpoint), `n` (go to next line of code), `l` (list source code for the current file), and `p` (print the value of an expression in the current context).

To close the debugger, including both panels and tmux session, focus the nvim tmux panel, and quit nvim normally.

```vim
:q
:q!
:wq!
```

You can also:

```shell
# List sessions
tmux list-sessions

# Kill a session by number
tmux kill-session -t 0

# Kill tmux to start over if neccessary
pkill tmux
```

##### Debugging Node scripts

File: index.js

```javascript
var msg = 'Hello, world!'

var obj = {
  test: 'testing',
  toast: function() {
    return 'toasty' + this.test;
  }
}

console.log( "OK stuff happened " + obj.toast() )

```

Create the file package.json, which includes the node configuration, for example:

```json
{
  "name": "my-nodejs-app",
  "version": "1.0.0",
  "description": "A simple Node.js application",
  "main": "index.js",
  "scripts": {
    "start": "node index.js",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": ["node", "javascript"],
  "author": "Your Name",
  "license": "MIT",
  "dependencies": {
    "express": "^4.17.1",
    "body-parser": "^1.19.0"
  },
  "devDependencies": {
    "nodemon": "^2.0.7"
  }
}
```

Steps:

```shell
tmux new-session -s Neovim
```

Open NERDTree

Select index.js

```vim
:tmux split-window
```

Adjust pane sizes

IN the pane down, run:

``` shell
# Using npm
npm start
npm start index.js

# Using nodemon
nodemon
```

##### Install vim-plug plugins: commentary.vim

Comment stuff out. 

Web: <https://github.com/tpope/vim-commentary>

Add the plugin to **~/config/.vimrc**:

```vim
" ------------------------------------------------------------------------------
" Plugins / IDE / commentary.vim
" ------------------------------------------------------------------------------
Plug 'tpope/vim-commentary'  " Comment stuff out
```

An alternative installation method to plugin managers:

Installation
Install using your favorite package manager, or use Vim's built-in package support:

```shell
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q
```

Usage:

Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion (for example, `gcap` to comment out a paragraph), `gc` in visual mode to comment out the selection, and `gc` in operator pending mode to target a comment. You can also use it as a command, either with a range like `:7,17Commentary`, or as part of a `:global` invocation like with `:g/TODO/Commentary`. That's it.


My favorite file type isn't supported!
Relax! You just have to adjust 'commentstring'

Example:

```vim
autocmd FileType apache setlocal commentstring=#\ %s
```

This means that comments in Apache configuration files will be prefixed with # and a space, and %s is a placeholder for where the comment text should go.

Add the vimscript to the plugin options section:

```vim
" ------------------------------------------------------------------------------
" Plugin options / commentary.vim
" ------------------------------------------------------------------------------
" Add unsupported file types

" Add comment out support for Apache configuration files
autocmd FileType apache setlocal commentstring=#\ %s

```

Resources:

kommentary:
<br />Its shortcuts are in conflict with NERDcommenter (check out the section NERDCommenter).
An alternative option, also visual, and uses Lua:
https://github.com/b3nj5m1n/kommentary

##### Install Vimscript plugins: markdown-preview.nvim

Markdown Preview for (Neo)vim.

Web: <https://github.com/iamcco/markdown-preview.nvim>

Requirements for installation using vim-plug:

Install Yarn via npm:

It is recommended to install Yarn through the npm package manager, which comes bundled with Node.js when you install it on your system.

Once you have npm installed you can run the following both to install and upgrade Yarn:

```shell
#npm install --global yarn
npm i -g yarn
```

More installation options:
Web: <https://classic.yarnpkg.com/lang/en/docs/install/#debian-stable>


Check installation

```vim
yarn --version
```

Get list of globally installed packages in npm:

```shell
npm list -g --depth 0
```

```bash
/home/esteban/.nvm/versions/node/v16.15.0/lib
├── @sanity/cli@2.35.0
├── bash-language-server@5.0.0
├── corepack@0.10.0
├── fs@0.0.1-security
├── live-server@1.2.2
├── madge@5.0.1
├── mic@2.1.2
├── nodemon@2.0.16
├── npm@8.15.0
├── sass@1.53.0
├── vosk@0.3.39
└── yarn@1.22.21
```

Installation:

Add the code to the section plugins of **~/config/.vimrc**:

```vim
" ------------------------------------------------------------------------------
" Plugins / IDE / markdown-preview.nvim
" ------------------------------------------------------------------------------
" Markdown Preview for (Neo)vim
" If you have nodejs
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
```

Add the code to the plugin options section:

```vim
" ------------------------------------------------------------------------------
" Plugin options / markdown-preview.nvim
" ------------------------------------------------------------------------------
" Markdown Preview for (Neo)vim

" set to 1, nvim will open the preview window after entering the Markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when changing
" from Markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, Vim will refresh Markdown when saving the buffer or
" when leaving insert mode. Default 0 is auto-refresh Markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be used for all files,
" by default it can be use in Markdown files only
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, the preview server is available to others in your network.
" By default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page.
" Useful when you work in remote Vim and preview on local browser.
" For more details see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" for path with space
" valid: `/path/with\ space/xxx`
" invalid: `/path/with\\ space/xxx`
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page URL in command line when opening preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom Vim function name to open preview page
" this function will receive URL as param
" default is empty
let g:mkdp_browserfunc = ''

" options for Markdown rendering
" mkit: markdown-it options for rendering
" katex: KaTeX options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: whether to disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: means the cursor position is always at the middle of the preview page
"   top: means the Vim top viewport always shows up at the top of the preview page
"   relative: means the cursor position is always at relative positon of the preview page
" hide_yaml_meta: whether to hide YAML metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" use a custom Markdown style. Must be an absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style. Must be an absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or empty for random
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" use a custom location for images
"let g:mkdp_images_path = /home/user/.markdown_images
let g:mkdp_images_path = '/home/' . $USER . '/.markdown_images'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is defined according to the preferences of the system
let g:mkdp_theme = 'dark'

" combine preview window
" default: 0
" if enable it will reuse previous opened preview window when you preview markdown file.
" ensure to set let g:mkdp_auto_close = 0 if you have enable this option
let g:mkdp_combine_preview = 0

" auto refetch combine preview contents when change markdown buffer
" only when g:mkdp_combine_preview is 1
let g:mkdp_combine_preview_auto_refresh = 1

" Mappings (NORMAL/INSERT)
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

```

Commands:

```vim
" Start the preview
:MarkdownPreview

" Stop the preview"
:MarkdownPreviewStop

"Toggle preview start/stop
:MarkdownPreviewToggle

```

Note: If you want to see the images, create the directory **'/home/' . $USER . '/.markdown_images'**, as is described in the configration, and add the images there. Otherwise, load the images in the markdown file from the internet, for example, like this:

File: README.md

```markdown
![image](https://user-images.githubusercontent.com/5492542/47603494-28e90000-da1f-11e8-9079-30646e551e7a.gif =400x200)

```

To render and display various elements in Markdown files like charts, flowcharts, diagrams, and more, you can use a combination of Node.js packages.

To test the example files in **~/Developer/Development/Developer Environment/check set-up files/markdown/md-content-types**, you can use Neovim, but to use those on published web pages you need to add the **node packages** to the node project directory.

Here's a list of packages you might need for the mentioned features:

chart.md
dot.md
Flowchart.md
image_size.md
js-sequence-diagrams.md
KaTeX.md
mermaid.md
plant_UML.md
plant_UML v2.md
README.md
table_of_contents.md

A Script to install the packages:

File: install_packages.sh

```shell
#!/bin/bash

# List of Node.js packages to install
packages=(
  "marked"
  "chart.js"
  "viz.js"
  "flowchart"
  "image-size"
  "js-sequence-diagrams"
  "katex"
  "mermaid"
  "plantuml"
  "markdown-toc"
)

# Install each package using npm
for package in "${packages[@]}"; do
  npm install "$package"
done

echo "All packages installed successfully."

```

Make the script executable by running:

```shell
chmod +x install_packages.sh
```

Then, run the script:

```shell
./install_packages.sh
```

Alternative methods to work with Markdown files:

Show a compiled markdown in real-time.
<br />You can use a script to do the same thing. Exports the file as HTML and opens it in the default browser. This method lacks many markdown tags suco as colorized code blocks, etc. However, it can be done later with html, CSS and JS.

You can use the KDE Desktop Environment text Editor Kate, and add its plugin "Preview".

You can also test your markdown in a private github repository if you do not want to use VS Code Extensions.

##### Activate spell checker in Neovim

Add this to the configuration file ~./config/

```vim
" Spelling
set spelllang=en_us         " Sets the spelling language for English (United States)
"set spelllang=en_gb         " Sets the spelling language for English (United Kingdom)
"set spelllang=ru            " Sets the spelling language for Russian
"set spelllang=de            " Sets the spelling language for German
"set spelllang=es            " Sets the spelling language for Spanish
set spell                   " Activates spelling

```

This way, you can switch between spelling languages.

Commands:

Use the `]s` and `[s` commands to navigate through spelling errors.

Use the `zg` command to add words to the spellfile for the current language.

Use `z=` to get suggestions for the correct spelling.

Hit `1` and `ENTER` in the prompt to indicate you want to take the first suggestion. And the word has been fixed!

The “spell repeater”. It repeats the replacement done by `z=` for all matched misspellings in the current window:

```vim
:spellr
```

Example:

```
Hello
Helo
Helo
Helo

```

The good part of the spelling is that when you work with code it does spell check teh comments but does not checks the names of functions or keywords.

There are also the "spell" commands.

Type `:spell` and press `TAB` to see the command list.

##### Install extension for vim-polyglot: python-syntax

Extension:

Web: <https://github.com/vim-python/python-syntax>

For more extensions, visit:

Web: <https://github.com/sheerun/vim-polyglot>

```
" ------------------------------------------------------------------------------
" Plugins / Syntax / vim-polyglot
" ------------------------------------------------------------------------------
Plug 'sheerun/vim-polyglot'     " vim-polyglot

" Language packs
Plug 'pangloss/vim-javascript'  " Vim- polyglot: vim-javascript
Plug 'vim-python/python-syntax' " Vim- polyglot: python-syntax

```

##### Install extension for coc.nvim: coc-snippets

Snippets solution for coc.nvim.

It's capable of:
- Load UltiSnips snippets.
- Load snipmate snippets.
- Load VSCode snippets from coc.nvim extensions.
- Load VSCode snippets from custom directories.
- Load VSCode snippets from ${workspaceFolder}/.vscode.
- Load UltiSnips snippets from configured folder.
- Load massCode snippets from running massCode application (disabled by default).
- Create massCode snippets through the snippets.editMassCodeSnippets command.
- Provide snippets as completion items.
- Provide expand and expandOrJump keymaps for snippet.
- Provide snippets list for edit snippet.
- Provide snippets.editSnippets command for edit user snippets of current filetype.

Web: <https://github.com/neoclide/coc-snippets>

Add this to the list of Coc.vim in ~/config/.vimrc:

```vim
" Coc Extensions list:
" coc-snippets
" coc-json - json
" coc-tsserver - TypeScript
" coc-css - CSS
" coc-sh
" ADD HERE
```

Installation:

```vim
:CocInstall coc-snippets
```

##### Install extension for coc.nvim: coc-pyright

It is a Python MS **Pyright** extension for coc.nvim, with additional features:
- semanticTokens highlighting!
- inlayHints supports
- codeActions to add imports, ignore typing check, run tests and more
- linting with bandit, flake8, mypy, ruff, prospector, pycodestyle, pydocstyle, pyflakes, pylama, pylint, pytype
- formatting with ruff, yapf, black, autopep8, darker, blackd, pyink
- testing with unittest or pytest, supports codeLens
- sort imports with ruff, isort and pyright
- extract method and variables with rope

Web: <https://github.com/fannheyward/coc-pyright>

Install pynvim for Neovim plugin compatibility with plugin managers like UltiSnips or Coc.nvim in system Python, (base) an every other virtual environment with pip, like: `pip install pynvim`, `pip3 install pynvim`, `pip3.11 install pynvim`.

Python support:

Ultisnips provider needs **pythonx** support on (neo)vim, to check the feature exists, try:

```vim
:echo has('pythonx')
On neovim, run command:
```

```
:checkhealth
```

Commands:

```vim
:python.runLinting: Run linting
:python.sortImports: Sort imports by isort or ruff
:pyright.version: Show the currently used Pyright version
:pyright.organizeimports: Organize imports by Pyright
:pyright.restartserver: This command forces the type checker to discard all of its cached type information and restart analysis. It is useful in cases where new type stubs or libraries have been installed.
:pyright.createtypestub: Creates Type Stubs with given module name, for example :CocCommand pyright.createtypestub numpy
:pyright.fileTest: Run test for current test file
:pyright.singleTest: Run test for single nearest test

```

Python typing and stub files:

To provide best experience, Pyright requires packages to be type annotated and/or have stub files. The Python community is currently in a transition phase where package authors are actively looking to provide that. Meanwhile, stub files for well-known packages may also be obtained from 3rd party, for example:
- Awesome Python Typing # stub-packages.
- typeshed.
- python-type-stubs.

**Conda setup**:

Create the following file:

```shell
#!/bin/bash
python "$@"
```

Make it executable:

```shell
chmod +x $path
```

Set `python.pythonPath` in your coc-settings.json: "python.pythonPath": "<PUT PATH HERE>".

Activate the environment before starting vim.

This way python from your currently activated environment will be used.

**My Workflow with Pyright**:

1. Create venv in project: python3 -m venv .venv

2. Source .venv/bin/activate

3. Install modules with pip and work with Pyright.

4. Deactivate.

##### coc-snippets or UltiSnips

The choice between coc-snippets and UltiSnips (presumably "utilsnip" is a typo) depends on your specific needs and preferences. Both are popular plugins for handling snippets in Neovim, but they have some differences in terms of features and configuration.

UltiSnips:

Highly Customizable: UltiSnips is known for its high level of customization. You can define your snippets with complex logic, variables, and transformations.

Language Support: UltiSnips supports a wide range of programming languages and file types.

Mature and Stable: UltiSnips has been around for a long time, and it's a mature and stable plugin with a large user base.

coc-snippets:

Integration with coc.nvim: If you are already using coc.nvim for autocompletion, coc-snippets integrates seamlessly with it.

Dynamic Snippets: Coc-snippets supports dynamic snippets, allowing you to create snippets that adapt based on the context.

Easy Configuration: It might be simpler to set up and configure for some users, especially if you are already using coc.nvim.

Considerations:
If you are not using coc.nvim and prefer a standalone solution, UltiSnips might be a better fit.

If you are looking for advanced snippet features and a high degree of customization, UltiSnips is a strong contender.

If you are already using coc.nvim and want a consistent experience, coc-snippets might be the easier choice.

Ultimately, it's recommended to try both and see which one aligns better with your workflow and requirements. You can experiment with each plugin and choose the one that feels more comfortable and efficient for your use case.

##### Install extension for Ultisnips: vim-react-snippets

Useful snippets for developing in React (Javascript and Typescript).

These web pages includes the complete list of shorcuts.

Web: <https://vimawesome.com/plugin/vim-react-snippets-ours>
Web: <https://github.com/mlaursen/vim-react-snippets>

Installation in the file **~/config/.vimrc**:

```vim
" ------------------------------------------------------------------------------
" Plugins / Snippets / UltiSnips
" ------------------------------------------------------------------------------
" UltiSnips is the ultimate solution for snippets in Vim
" Track the engine
Plug 'sirver/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'

```

```
:source %
:PluginInstall
```

Verify the installation:

Create a React Class Constructor:

Open a **jsx** file like **check set-up files/neovim/6. React/reactjsclass.jsx**.

Type `rcon`

Press `ENTER` to select the option `rcon~`. Notice that in this Vim/Neovim configuration, `ENTER` is used to **expand the selection**.

You will create a code like this:

```js
constructor(props) {
  super(props)

  this.state = {}
}

```

##### Adding custom UltiSnips snippets

Adding snippets:
To add a snippet for the file type that is currently open (for example, a JavaScript snippet if the file open is a JavaScript file), run in vim:

```vim
:UltiSnipsEdit
```

More information here:

Web: <https://www.claritician.com/how-to-set-up-ultisnips-for-vim>

##### Install extension for ultisnips: vim-snippets

It contains snippets files for various programming languages.

Contents:
- snippets/*: snippets using snipMate format
- UltiSnips/*: snippets using UltiSnips format

Snippet engines supporting vim-snippets:

There are different forks of snippet engines which allow the user to insert snippets by typing the name of a snippet hitting the expansion mapping.

- github.com/SirVer/ultisnips: python, supports all snippets in this repo.

- Etc, etc.

Installation:

```vim

" ------------------------------------------------------------------------------
" Plugins / Snippets / UltiSnips
" ------------------------------------------------------------------------------
" UltiSnips is the ultimate solution for snippets in Vim
" Track the engine
Plug 'sirver/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'honza/vim-snippets'

```

Open a file like: check set-up files/neovim/8. Markdown/markdown.md.

Type `img`. Select any `img` option and expand the text with `ENTER`, or your custom key to expand.

You should be able to expand things images like this:

```markdown
# title

## table

| sd | df |
| --- | --- |
| 1 | 2 |
| 3 | 4 |

## images

![pic alt](path "opt title")

{% img class URL width height title_text alt_text %}

```

##### Install Vimscript plugins: vim-prettier

A vim plugin wrapper for prettier, pre-configured with custom default prettier settings.

Web: <https://github.com/prettier/vim-prettier#configuration>

```vim
" ------------------------------------------------------------------------------
" Plugins / Formatting / vim-prettier
" ------------------------------------------------------------------------------
" Post install (yarn install | npm install) then load plugin only for editing
" supported files.
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

```

```shell
cd project_directory
npm install prettier

```

Open the test file: **check set-up files/neovim/1. JavaScript/5. Prettier formatting/to format.js**

Run prettier:

```vim
:Prettier
```

Save changes on the reformatted code.

To run prettier on a visual selection:

Select the code to reformat with the mouse.

```vim
:<, ->PrettierPartial
```

Put this configuration in the options section:

```vim
" ------------------------------------------------------------------------------
" Plugins options / vim-prettier
" ------------------------------------------------------------------------------
" Change the mapping to run from the default of <Leader>p
nmap <Leader>pr <Plug>(Prettier)

" Auto formatting files on save without @format or @prettier tags
"let g:prettier#autoformat = 1
"let g:prettier#autoformat_require_pragma = 0

```

Visit the web for more configuration options.

##### Install Vimscript plugins: vim-transparent

If you love transparent term, but your favourite vim color scheme doesn't.

Web: <https://github.com/tribela/vim-transparent>

Installation:

```vim
" ------------------------------------------------------------------------------
" Plugins / Transparency / vim-transparent
" ------------------------------------------------------------------------------
Plug 'tribela/vim-transparent'  " Transparency

```

Plugins options:

```vim
" ------------------------------------------------------------------------------
" Plugin options / vim-transparent
" ------------------------------------------------------------------------------
" default
let g:transparent_groups = ['Normal', 'Comment', 'Constant', 'Special', 'Identifier',
                            \ 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
                            \ 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
                            \ 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer']

" Pmenu
let g:transparent_groups += ['Pmenu']

" coc.nvim
let g:transparent_groups += ['NormalFloat', 'CocFloating']

augroup transparent
    autocmd VimEnter,ColorScheme * call MyTransparent()
augroup END

function! MyTransparent()
    " Customize the highlight groups for transparency in here.

    " CursorLine
    "hi CursorLine ctermfg=NONE ctermbg=239 guibg=NONE guibg=#4e4e4e

    " coc.nvim
    "hi CocMenuSel ctermbg=239 guibg=#4e4e4e
endfunction

```

##### Reorganizing the file ~/config/.vimrc 

This is a reorganized version of the files and directories that can be sourced in the file: **~/vimrc:**. I personally keep a lot in one file so I can search for specific plugins and plugins options easily by using the options to search strings.

```vim
" ------------------------------------------------------------------------------
" Sources of the current file (done already in ~/.config/nvim/init.vim)
" ------------------------------------------------------------------------------
"so ~/.vim/plugins.vim
"so ~/.vim/plugin-configs.vim
"so ~/.vim/mappings.vim

" ------------------------------------------------------------------------------
" Lua
" ------------------------------------------------------------------------------
" Multi-line use from Neovim
"lua <<EOF
"print('hello from lua')
"print('line 2')
"EOF

" Single line use from Neovim
"lua print('this also works')

" Source a minimal Lua file from Neovim
"so ~/.vim/basic.lua

" Source an init Lua file from Neovim
so ~/.vim/init.lua

```

##### Install Vimscript plugins: lightline-coc

This plugin provides coc diagnostics indicator for the lightline vim plugin.

Web: <https://github.com/josa42/vim-lightline-coc>

Installation:

Here, lightline-coc appears added to the end of the section:

```vim
" ------------------------------------------------------------------------------
" Plugins / IDE / lightline.vim
" ------------------------------------------------------------------------------
Plug 'itchyny/lightline.vim'   " Status bar

Plug 'maximbaz/lightline-ale'  " Lightline plugin ALE

Plug 'josa42/vim-lightline-coc'  " Provides coc diagnostics indicator for the
                                 " lightline vim plugin.

```

The plugins options fo lightline.nvim include the ALE plugin configuration and lightline-coc configuration:

```vim
" ------------------------------------------------------------------------------
" Plugin options / lightline.vim
" ------------------------------------------------------------------------------
" Custom settings

" Show git branch icon in lightline
function MyFugitiveHead()
  let head = FugitiveHead()
  if head != ""
    let head = "\uf126 " .. head
  endif
  return head
endfunction

" ALE plugin options, including vim-lightline-coc diagnostics
" indicator as well.
let g:lightline = {
  \ 'colorscheme': 'ayu_dark',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
  \  'right': [ [ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ], [ 'coc_status' ],
  \              [ 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
  \ },
  \ 'component': {
  \   'charvaluehex': '0x%B'
  \ },
  \ 'component_function': {
  \   'gitbranch': 'MyFugitiveHead'
  \ },
  \ }

" Register the compoments
call lightline#coc#register()

if 0
" Override the previous declaration, resetting the custom bar configuration
"let g:lightline = {}

" Register the components (manually)
" Components
let g:lightline.component_expand = {
  \   'linter_warnings': 'lightline#coc#warnings',
  \   'linter_errors': 'lightline#coc#errors',
  \   'linter_info': 'lightline#coc#info',
  \   'linter_hints': 'lightline#coc#hints',
  \   'linter_ok': 'lightline#coc#ok',
  \   'status': 'lightline#coc#status',
  \ }

" Set color to the components
let g:lightline.component_type = {
  \   'linter_warnings': 'warning',
  \   'linter_errors': 'error',
  \   'linter_info': 'info',
  \   'linter_hints': 'hints',
  \   'linter_ok': 'left',
  \ }
endif

```

Components:

coc_errors Number of diagnostics errors

coc_warnings Number of diagnostics warnings

coc_info Number of diagnostics information messages

coc_hints Number of diagnostics hints

coc_ok Checkmark if there are no errors or warnings

coc_status Show status messages if there are any.

Configuration:

g:lightline#coc#indicator_warnings The indicator to use when there are warnings. Default is •.

g:lightline#coc#indicator_errors The indicator to use when there are errors. Default is ×.

g:lightline#coc#indicator_info The indicator to use when there are information messages. Default is ~.

g:lightline#coc#indicator_hints The indicator to use when there are hints. Default is >.

g:lightline#coc#indicator_ok The indicator to use when there are no warnings or errors. Default is ✓.

##### Learning: Basic Lua based Neovim configuration

Readings:

**A must read**: Everything you need to know to configure neovim using lua
<https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/>

The best guide here at the moment:
<https://github.com/nanotee/nvim-lua-guide>

What is Lua. Nvim documentation: lua
<https://neovim.io/doc/user/lua.html#Lua>

Videos:

Basic Lua based Neovim configuration
<https://m.youtube.com/watch?v=ppMX4LHIuy4>

Basic Lua Neovim Configuration - Part 2
<https://m.youtube.com/watch?v=cAfPmPjxRQE>

Better Neovim plugin setup! Use Packer, break your init.lua into modules, look like a hero!
<https://www.youtube.com/watch?app=desktop&v=NkfMBI1tVwY>

25 Custom Keymaps set with Lua
<https://www.youtube.com/watch?v=435-amtVYJ8>

Neovim Lua Plugin From Scratch
<https://www.youtube.com/watch?app=desktop&v=n4Lp4cV8YR0>

Why Neovim builtin LSP?
<https://www.youtube.com/watch?app=desktop&v=ArwDgvYEZYk>

Neovim - LSP Setup Tutorial (Built in LSP 100% Lua)
<https://m.youtube.com/watch?v=6F3ONwrCxMg>
This is a complete built-in LSP in neovim video  tutorial:

##### The Vimscript status of the directory **~/.vim/**

Directory **~/.vim/**:

Vimscript files:
- mappings.vim
- plugin-configs.vim
- plugins.vim

Vimscript directories:
- pack/

##### The new Vimscript plus Lua status of the directory **~/.vim/**

Add these to the directory:

Lua files:
- init.lua
- test.lua

Lua directories:
- lua/

In the directory **~/.vim/lua**, add:

Lua files:
- mappings.lua
- plugin-options.lua
- plugins.lua

##### The initial content of the file ~/config/.vim/.init.lua

```lua
require ('mappings')
require ('plugins')
require ('plugin-options')
--require ('test')
-- Require file 'settings.lua' inside dir 'lua/usermod':
--require('usermod.settings')

```

##### Install the Lua and Vimscript plugin manager packer.nvim

packer.vim is a use-package inspired plugin manager for Neovim. Uses native packages, supports Luarocks dependencies, written in Lua, allows for expressive config.

Web: <https://github.com/wbthomason/packer.nvim>

Installation:

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Add the packer.nvim configuration to **~/config/.vim/init.lua**:

```lua
-- packer.nvim plugin installations
local packer = require('packer')
packer.startup(function()
    use 'junegunn/vim-easy-align'
    -- Add other plugins here
end)

```

Run `:PackerInstall` to complete the installations, but **do not remove** the existent plugin managers such as packer.nvim and/or lazy.nvim previously installed manually.

By running `:PackerInstall` with that code in **~/.vim/init.lua** you will install the plugin **junegunn/vim-easy-align** as example.

All the Lua plugins installed with packer.vim will be installed in the directory **~/.local/share/nvim/site/pack/packer/start/**.

To reinstall a plugin, remove its directory from **~/.local/share/nvim/site/pack/packer/start/** and from other directories created by the plugins during their installations, for example, ~/.local/share/nvim/lazy (for lazy.nvim), before rerunning `:PackerInstall`.

Note there is a section "-- Add other plugins here" to add the list of plugins we want to install.

So, the Vimscript plugins and the Lua plugins will be installed different pluging managers.

NOTICE:

This repository is currently unmaintained. For the time being (as of August, 2023), it is recommended to use one of the following plugin managers instead:
- lazy.nvim: Most stable and maintained plugin manager for Nvim.
- pckr.nvim: Spiritual successor of packer.nvim. Functional but not as stable as lazy.nvim.

##### Install the Lua plugin manager lazy.nvim

TODO: This plugin does not work in my installation.

Features:
- Manage all your Neovim plugins with a powerful UI
- Fast startup times thanks to automatic caching and bytecode compilation of Lua modules
- Partial clones instead of shallow clones
- Automatic lazy-loading of Lua modules and lazy-loading on events, commands, filetypes, and key mappings
- Automatically install missing plugins before starting up Neovim, allowing you to start using it right away
- Async execution for improved performance
- No need to manually compile plugins
- Correct sequencing of dependencies
- Configurable in multiple files
- Generates helptags of the headings in README.md files for plugins that don't have vimdocs
- Dev options and patterns for using local plugins
- Profiling tools to optimize performance
- Lockfile lazy-lock.json to keep track of installed plugins
- Automatically check for updates
- Commit, branch, tag, version, and full Semver support
- Statusline component to see the number of pending updates
- Automatically lazy-loads colorschemes

Web: <https://github.com/folke/lazy.nvim>

Installation:
TODO:

Resources:

Migrate from Packer to lazy.nvim:

Web: <https://www.youtube.com/watch?app=desktop&v=cGZdvEIeiSg>

##### Install Vimscript plugins with Lua: junegunn/vim-easy-align

This is not a Lua plugin but a Vimscript plugin installed in the file **~/config/.vim/init.lua**.

It can be install using the Vimscript plugin manager like vim-plug, but you can keep it there to test the initial package manager packer.nvim. See the installation in the section packer.nvim.

A simple, easy-to-use Vim alignment plugin.

Web: <https://github.com/junegunn/vim-easy-align>

Let's keep the configuration in the file **~/config/.vimrc** (it is possible to do it using Lua in a Lua file either):

```vim
" ------------------------------------------------------------------------------
" Plugin options / vim-easy-align
" ------------------------------------------------------------------------------
" Vimscript plugin installed with packer.nvim

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
```

Example:

aligment-file.txt:

```plaintext
apple   =red
grass+=green
sky-=   blue

```

Commands:

`:EasyAlign =`: Uses = as the alignment rule.

Using predefined alignment rules:
- :EasyAlign[!] [N-th] DELIMITER_KEY [OPTIONS]
  - `:EasyAlign :`
  - `:EasyAlign =`
  - `:EasyAlign *=`
  - `:EasyAlign 3\`

Using arbitrary regular expressions
- :EasyAlign[!] [N-th] /REGEXP/ [OPTIONS]
  - :EasyAlign /[:;]\+/
  - :EasyAlign 2/[:;]\+/
  - :EasyAlign */[:;]\+/
  - :EasyAlign **/[:;]\+/

Try these commands in the NORMAL mode:

`vipga=`:
- `v`isual-select `i`nner `p`aragraph
- Start EasyAlign command: (`ga`)
- Align around: `=`

`gaip=`:
- Start EasyAlign command (`ga`) for `i`nner `p`aragraph
- Align around `=`

##### Install Lua plugins: Abstract-cs

A Lua theme.

colorscheme for (neo)vim written in lua, specially made for Abstract Colorscheme with Tree-sitter support.

Web: <https://github.com/Abstract-IDE/Abstract-cs>

Configuration:

```Lua
    ----------------------------------------------------------------------------
    -- Lua Plugins / Themes / Abstract-cs
    ----------------------------------------------------------------------------
    use 'Abstract-IDE/Abstract-cs'  -- colorscheme for (neo)vim written in lua,
                                    -- specially made for Abstract Colorscheme
                                    -- with Tree-sitter support.

```

```lua
--------------------------------------------------------------------------------
-- Lua Plugin options / Themes / Abstract-cs
--------------------------------------------------------------------------------
-- Colorscheme
--vim.cmd[[colorscheme abscs]]

```

```vim
:PackerInstall
```

##### Install Lua plugins: which-key.nvim

WhichKey is a lua plugin for Neovim 0.5 that displays a popup with possible key bindings of the command you started typing. Heavily inspired by the original emacs-which-key and vim-which-key.

Web: <https://github.com/folke/which-key.nvim>

Built-in plugins:
- marks: shows your marks when you hit one of the jump keys.
- registers: shows the contents of your registers
- presets: built-in key binding help for motions, text-objects, operators, windows, nav, z and g
- spelling: spelling suggestions inside the which-key popup

Set up:

This is a basic file **~/config/.vim/init.lua** that includes the whick-key installation and configuration:

```lua
--
--------------------------------------------------------------------------------
--         FILE:  init.lua
--        USAGE:  ---
--  DESCRIPTION:  Lua init file
--      OPTIONS:  ---
-- REQUIREMENTS:  Neovim 0.8.0
--         BUGS:  ---
--        NOTES:  ---
--       AUTHOR:  Esteban Herrera Castro, stv.herrera@gmail.com
--      COMPANY:  ---
--      VERSION:  1.0
--      CREATED:  14/11/23
--     REVISION:  ---
--------------------------------------------------------------------------------
--

--------------------------------------------------------------------------------
-- Sources
--------------------------------------------------------------------------------
require('mappings')
require('plugins')
require('plugin-options')
--require ('test')
-- Require file 'settings.lua' inside dir 'lua/usermod':
--require('usermod.settings')

--------------------------------------------------------------------------------
-- Packer.nvim Plugins
--------------------------------------------------------------------------------
local packer = require('packer')
packer.startup(function()
    ----------------------------------------------------------------------------
    -- Vimscript Plugins / vim easy-align
    ----------------------------------------------------------------------------
    use 'junegunn/vim-easy-align'

    ----------------------------------------------------------------------------
    -- Lua Plugins / lazy
    ----------------------------------------------------------------------------
    --use 'folke/lazy.nvim'

    ----------------------------------------------------------------------------
    -- Lua Plugins / alpha
    ----------------------------------------------------------------------------
    use {
        'goolord/alpha-nvim',
        requires = 'nvim-tree/nvim-web-devicons',
    }

    ----------------------------------------------------------------------------
    -- Lua Plugins / which-key
    ----------------------------------------------------------------------------
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- Add other plugins here
end)

-- Run :PackerInstall to complete the installations, but do not remove the
-- existent plugins installed manually, such as packer.nvim and/or lazy.nvim.

--------------------------------------------------------------------------------
-- Lazy.nvim Plugins
--------------------------------------------------------------------------------
--TODO:

--------------------------------------------------------------------------------
-- Lua Plugin options / lazy
--------------------------------------------------------------------------------
--TODO:

--------------------------------------------------------------------------------
-- Lua Plugin options / alpha
--------------------------------------------------------------------------------
-- This example plugin generates an error message when nvim starts, but it works
--require("alpha").setup(require("alpha.themes.startify").config)

--------------------------------------------------------------------------------
-- Lua Plugin options / which-key
--------------------------------------------------------------------------------
require("which-key").setup({
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    presets = {
      operators = true, -- adds help for operators like d, y, ...
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't affect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  motions = {
    count = true,
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and its label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
    padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
    zindex = 1000, -- positive value to position WhichKey above other floating windows.
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " }, -- hide mapping boilerplate
  show_help = true, -- show a help message in the command line for using WhichKey
  show_keys = true, -- show the currently pressed key and its label as a message in the command line
  triggers = "auto", -- automatically set up triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  -- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
  triggers_nowait = {
    -- marks
    "`",
    "'",
    "g`",
    "g'",
    -- registers
    '"',
    "<c-r>",
    -- spelling
    "z=",
  },
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for keymaps that start with a native binding
    i = { "j", "k" },
    v = { "j", "k" },
  },
  -- disable the WhichKey popup for certain buf types and file types.
  -- Disabled by default for Telescope
  disable = {
    buftypes = {},
    filetypes = {},
  },
})

```

Open the which-key pop-up window using the next command:

```vim
:WhichKey
```

**Key shortcut menus**:

Open the shortcuts menu:

Press `leader` key in NORMAL mode.

Open the **yode-nvim** shortcuts menu:

Press `CTRL` + `w`.

Setup:

With the default settings, WhichKey will work out of the box for most builtin keybindings, but the real power comes from documenting and organizing your own keybindings.

Web: <https://github.com/folke/which-key.nvim#-setup>

Note:

This is a Lua substitute for vim-which-key.

vim-which-key is vim port of emacs-which-key that displays available keybindings in popup.

Web: <https://github.com/liuchengxu/vim-which-key>

##### Install Lua plugins: LuaSnip

LuaSnip is designed for Neovim and operates within its Lua API. It's part of the Lua ecosystem for Neovim plugins.

Like Coc-snippets, LuaSnip supports multiple programming languages. It provides a flexible and expressive syntax for defining snippets using Lua.

LuaSnip is known for its flexibility and powerful features. It supports dynamic placeholders, nested snippets, and has a user-friendly interface for creating and managing snippets.

GitHub:

Web: <https://github.com/L3MON4D3/LuaSnip>

Add some code to the file **/home/esteban/config/.vim/init.lua**.

In the plugin section:

```lua
    ----------------------------------------------------------------------------
    -- Lua Plugins / Snippets / LuaSnip
    ----------------------------------------------------------------------------
    -- LuaSnip is a powerful and fast snippet engine for Neovim
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })

```

In the plugin options section:

```lua
--------------------------------------------------------------------------------
-- Lua Plugin options / LuaSnip
--------------------------------------------------------------------------------
-- Use existing VS Code style snippets from a plugin
require("luasnip.loaders.from_vscode").lazy_load()

-- Load snippets from path/of/your/nvim/config/my-cool-snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./my-cool-snippets" } })

```

For more info on the VS Code loader, check the examples or documentation.

Install the plugin.

```vim
:PackerInstall
```

Restart Neovim.

Add Snippets.

Check out the doc for a general explanation of the loaders and their benefits. The following list serves only as a short overview.

`VS Code-like`: To use existing VS Code style snippets from a plugin (eg. **rafamadriz/friendly-snippets**) simply install the plugin and then add in the plugin options section ...

```lua
-- Use existing VS Code style snippets from a plugin
require("luasnip.loaders.from_vscode").lazy_load()
```

... somewhere in your nvim-config. LuaSnip will then load the snippets contained in the plugin on startup.

**You can also easily load your own custom vscode style snippets** by passing the path to the custom snippet-directory to the load function (also, in the plugin options section):

```lua
-- Load snippets from path/of/your/nvim/config/my-cool-snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./my-cool-snippets" } })
For more info on the VS Code loader, check the examples or documentation
```

For more options about how to add snippets check out the documentation on GitHub.

Resources:

`rafamadriz/friendly-snippets`: Check out the section: **Install Lua plugins: friendly-snippets**.

Note:
You are not adding keymaps, because `TAB` (Vimscript) or `CTRL + k` (Lua) do not work in this setup. You can only use arrows to select an autocompletion from the list. That is not a problem, it's good because `TAB` is just forthe autocompletion of the LLM AI assitant plugins now, and the snippet lists to the other snippet plugins. So, in **INSERT** mode, you need to select.

Topic: Create your own snippet.

This can help to create distribuitable snippets for specific apps.

Web: <https://sbulav.github.io/vim/neovim-setting-up-luasnip/>

##### Install Lua plugins: friendly-snippets

Snippets collection for a set of different programming languages.

The only goal is to have one community driven repository for all kinds of snippets in all programming languages, this way you can have it all in one place.

Requirements:
- Requires LuaSnip
- Install Lua plugins: LuaSnip

Web: <https://github.com/rafamadriz/friendly-snippets>

Installation with **Packer** plugin manager in the file **/home/esteban/config/.vim/init.lua**:

```lua
use "rafamadriz/friendly-snippets"
```

Check out the documentation on GitHub for installations with **vim-plug** or **coc.nvim**.

Usage:

This collection of snippets should work with any snippet engine that supports loading VSCode snippets. Like for example:
- vim-vsnip
- LuaSnip
- coc-snippets

Add snippets from a framework to a filetype:

Note: This is handled **by your snippet engine** and has nothing to do with this snippets collection.

There's extra snippets included in this repo but they are not added by default, since it would be irrelevant for people not using those frameworks. See snippets/frameworks: <https://github.com/rafamadriz/friendly-snippets/tree/main/snippets/frameworks>.

For example: if you want to add rails snippets to ruby.

With LuaSnip:

```lua
--------------------------------------------------------------------------------
-- Lua Plugin options / friendly-snippets
--------------------------------------------------------------------------------
-- Add extra snippets included, from a framework to a filetype.
-- This is handled by your snippet engine and has nothing to do with this
-- snippets collection.

-- Add rails snippets to ruby.
require("luasnip").filetype_extend("ruby", {"rails"})

-- Make JavaScript React available for JavaScript files
require("luasnip").filetype_extend("typescript", { "javascript" })

```

Excluding snippets:

Note: This is handled by your snippet engine and has nothing to do with this snippets collection

With LuaSnip, see `:help luasnip-loaders`.

```lua
-- Exclude all javascript snippets
-- This is handled by your snippet engine and has nothing to do with this
-- snippets collection.
require("luasnip.loaders.from_vscode").load {
    exclude = { "javascript" },
}

```

Javascript, Typescript, Javascriptreact, Typescriptreact:

Web: <https://github.com/rafamadriz/friendly-snippets/wiki/Javascript,-Typescript,-Javascriptreact,-Typescriptreact>

Python:

Web: <https://github.com/rafamadriz/friendly-snippets/wiki/Python>

**Complete Snippets List:**

Markup Languages
CSS, Sass, Less, Stylus
Gitcommit
HTML, Pug, Jade
Latex
Markdown
Norg
Org
Plantuml
RMarkdown
Programming Languages
C
Cobol
Cpp
Csharp
Dart
eElixir
Elixir
Erb
Erlang
Fennel
Fortran
Glsl
Go
Haskell
Java
Javascript, Typescript, Javascriptreact, Typescriptreact
Julia
Kotlin
Liquid
Lua
Make
Mint
Objc
Php
Python
Quarto
R
Rescript
Ruby
Rust
Scala
Shell
Solidity
Sql
Swift
Verilog
Frameworks
Django
Docker
Docker Compose
EJS
Flutter
Jekyll
Kubernetes
Rails
Svelte
Vue
Game Engines
Godot (gdscript)
Unreal Engine

Snippets list:

Web: <https://github.com/rafamadriz/friendly-snippets/wiki>

Important:
LuaSnip works well but it requires a little more of processing than coc.nvim.
It is better not to have both working together, because the snippet list will show less options.
To resolve that problem, comment out the LuaSnip section in the init.lua, but keep the **friendly-snppets** plugin, to use them with coc.nvim. They should work, for example, with freamewors.

To test the functionning of this, test Ruby On Rails framework, like this:

File:

```rb
<!-- app/views/welcome/index.html.erb -->

<h1>Welcome#index</h1>
<p>Hello, <= @eva.introduce ></p>
<p><= perform_task("Answering questions") ></p>
<p><= @<% else >

```

Position the cursor next to `<p><%= @` and type the char `e`. A new snippets menu should appear. Select Rails options like `else~`, to display a code like this:

```rb
<p><%= @<% else >
```

##### Install Lua plugins: bufferline.nvim

A snazzy buffer line (with tabpage integration) for Neovim built using lua.

Web: <https://github.com/akinsho/bufferline.nvim>

Installation using packer.nvim:

```lua
    ----------------------------------------------------------------------------
    -- Lua Plugins / Buffer line / bufferline.nvim
    ----------------------------------------------------------------------------
    -- A snazzy buffer line (with tabpage integration) for Neovim
    use {'akinsho/bufferline.nvim',
         tag = "*",
         --requires = 'nvim-tree/nvim-web-devicons'
    }

```

Options section:

```lua
--------------------------------------------------------------------------------
-- Lua Plugin options /  bufferline.nvim
--------------------------------------------------------------------------------
vim.opt.termguicolors = true  -- Required for this plugin to work

-- Enable bufferline.nvim
vim.cmd [[set hidden]]
require('bufferline').setup{
    options = {
        icons = 'both',
        icon_custom_colors = false,
        icon_padding = 1,
        icon_close_tab = '',
        icon_close_tab_modified = '●',
        close_icon_position = 'right',
        max_name_length = 18,
        max_prefix_length = 15,
        tabpages = true,
        show_tab_indicators = true,
        separator_style = 'thick',
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'extension',
    }
}

-- Offset bufferline when NERDTree is open or closed
local api = vim.api

local function toggle_offset()
    local nerdtree_open = vim.fn.exists("*NERDTreeIsOpen") and vim.fn["NERDTreeIsOpen"]()
    if nerdtree_open == 1 then
        vim.cmd("BufferLineMoveNext")
    else
        vim.cmd("BufferLineMovePrev")
    end
end

vim.cmd("autocmd! User NERDTreeToggle :lua require'bufferline_config'.toggle_offset()")

```

The offset staff in the configuration is an attempt to make the bufferline visually adjust when you open or close NERDTree, a popular file explorer plugin for Neovim. The idea is to make room for NERDTree so that it doesn't overlap with the bufferline.

Alternative buffer lines:

nvim-cokeline:

A Neovim bufferline for people with addictive personalities.
<br />The goal of this plugin is not to be an opinionated bufferline with (more or less) limited customization options. Rather, it tries to provide a general framework allowing you to build your ideal bufferline, whatever that might look like.

https://github.com/noib3/nvim-cokeline

It works with NERDTree.

If lacks of of windows function, there are tmux plugins and a debug plugin to create more terminals.

##### Install Lua plugins: yode-nvim

This the type of Lua plugins that can be installed using vim-plug, and set up using Lua. That's why we are going to install it in the file **~/config/.vimrc**:

Features summary:
- Open parts of buffers to focus on
- Changes are synchronized
- Focused Coding
- Zoom out of file

Description:
<br />Focus on the important parts of the code. Hide the rest, literally. With Yode-Nvim you can go deeper than the file level, picking out the lines that are important for the current task. Whether you want to focus on important parts of a large file, or collect small parts of many files, you can see everything at a glance. Zoom from the focused part back into the file to briefly expand your context or adjust your focus. Everything happens in the editor, the rest of the tool chain still works, this makes Yode-Nvim work for any programming language, framework, etc.
<br />Web: <https://github.com/hoschi/yode-nvim>

"Focus coding" doesn't refer to a specific coding concept or term in the field of programming. It might be a phrase used to express the idea of concentrating or putting one's attention on coding without distractions. The term "focus" in this context likely refers to being dedicated and engaged in the coding process, minimizing interruptions or diversions.

It requires the plugin **plenary.nvim**, with "All the lua functions I don't want to write twice."

Web: <https://github.com/nvim-lua/plenary.nvim>

Installation in the file **~/config/.vimrc**:

```vim
" ------------------------------------------------------------------------------
" Plugins / IDE / yode-nvim
" ------------------------------------------------------------------------------
Plug 'nvim-lua/plenary.nvim'  " All the lua functions I don't want to write twice
Plug 'hoschi/yode-nvim'       " Focused code editing

```

Plugin options for the file **~/config/.vimrc**:

```vim
" ------------------------------------------------------------------------------
" Plugin options / yode-nvim
" ------------------------------------------------------------------------------
" Minimal setup
lua require('yode-nvim').setup({})

" Mappings

map <Leader>yc :YodeCreateSeditorFloating<CR>
map <Leader>yr :YodeCreateSeditorReplace<CR>
nmap <Leader>bd :YodeBufferDelete<cr>
imap <Leader>bd <esc>:YodeBufferDelete<cr>

" These commands fall back to overwritten keys when cursor is in split window
map <C-W>r :YodeLayoutShiftWinDown<CR>
map <C-W>R :YodeLayoutShiftWinUp<CR>
map <C-W>J :YodeLayoutShiftWinBottom<CR>
map <C-W>K :YodeLayoutShiftWinTop<CR>

" At the moment this is needed to have no gap for floating windows
set showtabline=2

```

Commands using **WhichKey** key mapping:

Split windows vertically: `CTRL` + `w`, press `v`.
Split windows horizontally: `CTRL` + `w`, press `s`.

Navigation options and more options: `CTRL` + `w`

Features & Commands:

`:YodeCreateSeditorFloating`: Focus on a code part and make it floating, stay at the current (main) view.

`:YodeCreateSeditorReplace`: Focus on a code part and replace it with the current buffer.

`:YodeBufferDelete`: Delete the current buffer and jump back to file, if it is a seditor.
`:YodeGoToAlternateBuffer`: Yode-Nvim creates buffer local mappings for these commands, see lua/yode-nvim/createSeditor.lua for all mappings.

`:YodeCloneCurrentIntoFloat`: Clone seditor into float.

`:YodeFloatToMainWindow`: Is the opposite.

`:YodeFormatWrite`: Formats and writes a buffer, no matter which type.

`:YodeRunInFile`: Can run a command in the current file or the file buffer of the current seditor.

Changes from outside are tried to be applied as good as possible. If this does not work so well, seditors can change the size.

In general there are different layouts for the floating windows, but at the moment there is only one jump between windows by using `<C-W>w` or have a deeper look at window movement see the next section for more details.

##### Install Lua plugins: vim-rest-console

VRC is a Vim plug-in to help send requests to and display responses from RESTful services in Vim. It's useful for working with REST services that use JSON to exchange information between server and client such as ElasticSearch.

VRC can also be used as a cURL client for simple needs such as getting a HTTP page response or posting to a form.

Web: <https://github.com/diepm/vim-rest-console>

Features:
- Execute REST request and display the response on a separate display buffer.
- Make changing/adjusting request body easy.
- Can have multiple REST request blocks per VRC buffer.
- Can have multiple VRC buffers where they all share the same output buffer or each can have its own output buffer.
- Particularly useful for working with REST services that require the request body to be sent in JSON such as ElasticSearch.
- Syntax highlighting.
- Supported verbs: GET, POST, PUT, HEAD, PATCH, OPTIONS, and TRACE.

Installation:

Dependencies:
- curl - transfer a URL.

You can also install (not related to Vim REST Console (VRC)):
- jq - Command-line JSON processor.
- tidy - check, correct, and pretty-print HTML(5) files.

cURL:

```shell
sudo apt-get update
sudo apt-get install curl
```

```shell
sudo apt-get install jq tidy
```

Add the next code to the file **~/config/.vimrc**:

```vim
" ------------------------------------------------------------------------------
" Plugins / REST / vim-rest-console
" ------------------------------------------------------------------------------
" Helps send requests and displays responses from RESTful services
Plug 'diepm/vim-rest-console'

```

Plugin options:

```vim
 ------------------------------------------------------------------------------
" Plugin options / vim-rest-console
" ------------------------------------------------------------------------------
" Multiple VRC Buffers
:let b:vrc_output_buffer_name = '__NEW_VRC__'

" VRC options

" For the deprecated VRC options, they can be replaced by cUrl options. For
" example, assuming they have been defined as follows:
"let g:vrc_connect_timeout = 10
"let g:vrc_cookie_jar = '/path/to/cookie'
"let g:vrc_follow_redirects = 1
"let g:vrc_include_response_header = 1
"let g:vrc_max_time = 60
"let g:vrc_resolve_to_ipv4 = 1
"let g:vrc_ssl_secure = 1

" Using cUrl options
let g:vrc_curl_opts = {
  \ '--connect-timeout' : 10,
  \ '-b': '/path/to/cookie',
  \ '-c': '/path/to/cookie',
  \ '-L': '',
  \ '-i': '',
  \ '--max-time': 60,
  \ '--ipv4': '',
  \ '-k': '',
\}

" Enable/Disable Line-by-line Request Body
let g:vrc_split_request_body = 1

" Use in-line data, first enable the Elasticsearch support flag
let g:vrc_elasticsearch_support = 1

" Force the output highlighting based on filetype
"let g:vrc_output_buffer_name = '__VRC_OUTPUT.<filetype>'
let g:vrc_output_buffer_name = '__VRC_OUTPUT.json'

```

Usage:

Example using a nodejs API service.

Go the nodejs executable file location. This is to avoid to start the service using a full path later on in the split window. Find out more TypeScript examples files in the directory **7. TypeScript**.

```shell
cd ~/Developer/Development/Developer Environment/check set-up files/neovim/7. TypeScript/TS_4
```

Open the terminal.

Open tmux.

```shell
tmux new-session -s Neovim
```

Open the service file using nvim.

```shell
nvim server.ts
```

Start the service and client. You can add the command to the plugin options of **Vimux** or as in this case split-the window to run manually.

```vim
:!tmux split-window
```

This Neovim command divides the tmux window into two panels from Neovim.

Adjust the size of the new panel (lower panel).

Default Prefix = CTRL.

`PREFIX` + `B` + `DOWN/UP ARROW`.

In the split window, in the lower split panel, split it again with the -h option:

```shell
tmux split window -h
```

Now, the cursor is in the down right panel. Start the service there. Use npx instead of a simple **npm start**:

Run the Server:

```shell
npx ts-node server.ts
```

This command starts the Express server.

The output should end up with:

```bash
Server is running on http://localhost:3000
```

To start the client, go back to the down left panel.

`PREFIX` + `B`, `ARROWS`.

Run the Client:

```shell
npx ts-node client.ts

```

This command runs the client code that makes a request to the server.

The output should be like this:

```bash
API Response: { message: 'Hello, welcome to my API!' }
```

Go to the upper panel, back to the first nvim "TAB" (Bufferline tab). We cannot use the mouse to just make click on the file because we come from another terminal.

`PREFIX` + `B`, `ARROWS`.

Open the REST file to create a simple GET request to the Node.js API service. You can open the file client.ts in the same way.

`Double Click` on the `TAB` containing the service file **index.ts**

This create a new Bufferline TAB `[No Name]`.

Open NERDTree, using the keyboard key `F3`.

You can use clicks, `h`, `j`, `k`, `l`, `ARROWS`, and `ENTER` to reach the file path.

Go to the GET REST file **/home/esteban/Developer/Development/Developer Environment/check set-up files/REST tests/console_get.http** and open it. Find out more test files in the directory **REST tests**.

```http
http://localhost:3000
GET /api/greeting
```

Make the "http" file of the "rest" type so it becomes vim-rest-console readable. You can verify the type in the lightline.vim status bar.

```vim
:set ft=rest
```

Hit the Vim REST Console (VRC) trigger key (<C-j> by default):

`CTRL` + `j`.

This action splits the upper tmux panel into two windows, and runs Vim REST Console (VRC).

You can adjust the size of a windows by `clicking on` the line between both windows and `drag and drop` it to the `left` or the `right`.

If the request "code" is good made, we will see the result in the right window.

The logs include the connections stats such as percentage received, transferring speed, etc, and the next information:

```http
HTTP/1.1 200 OK X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 39
ETag: W/"27-XQUGfTkMBdvpQNV4dHPVq4geSuI" Date: Fri, 24 Nov 2023 21:11:06 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{
    message: 'Hello, welcome to my API!'
}

```

You can do more things with Vim REST Console (VRC). For example, create Multiple VRC Buffers.

A VRC buffer can have one or many REST request blocks. A request block contains a host, optional cUrl options, optional headers, query, and an optional request body (usually used by POST). A block is defined as follows.

The current configuration includes what is required to create VRC buffer files. Their syntax is like this:

```http
# host
http[s]://domain[:port]

[optional cUrl options]

[optional headers]

# query
POST /path/to/resource
[optional request body]

```

Check out the GitHub documentation for more information and examples. It includes extra configuration options.

Note:
You can use of the next 2 methods to test the service. Both should return the JSON message.
1. Open the web browser and in teh address bar paste: `http://localhost:3000/api/greeting`.
2. Use curl.

```shell
curl http://localhost:3000/api/greeting
```

To stop the service go to the running server panel and press:

`CTRL` + `D` or `CTRL` + `C`.

Alternatives to Vim REST Console (VRC), out of Neovim:

httpyac CLI:

httpyac CLI provides a command line interface to execute *.http and *.rest files. This can be used to quickly execute a single *.http file, but also to execute all files in a folder.

Web: <https://httpyac.github.io/guide/installation_cli.html>

HTTPIE FOR TERMINAL:

A simple yet powerful command-line HTTP and API testing client for the API era.

Web: <https://httpie.io/cli>

##### Install Lua plugins: telescope.nvim

telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.

Community driven builtin pickers, sorters and previewers.

Web: <https://github.com/nvim-telescope/telescope.nvim>

Installation:

It can be installed using vim-plug (VimL) or Packer (Lua).

```Lua
    ----------------------------------------------------------------------------
    -- Lua Plugins / Finder / telescope.nvim
    ----------------------------------------------------------------------------
    -- A Highly extendable fuzzy finder over lists
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        -- or branch = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'},
            -- Add extensions here
        }
    }

```

For the plugin options:

```Lua
--------------------------------------------------------------------------------
-- Lua Plugin options / telescope.nvim
--------------------------------------------------------------------------------
local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },

    layout_config = {
      width = 0.75,  -- Width of the telescope window
      height = 0.75,  -- Height of the telescope window
      prompt_position = "top",  -- Position of the prompt ("top" or "bottom")
      horizontal = {
        -- Horizontal configuration options
        preview_cutoff = 80,  -- Max height for the horizontal preview
        prompt_position = "bottom",  -- Position of the prompt for horizontal layout
      },
      vertical = {
        -- Vertical configuration options
        preview_cutoff = 120,  -- Max height for the vertical preview
      },
      flex = {
        -- Flex layout configuration options
        flip_columns = 130,  -- Width at which to flip columns in flex layout
      },
    },

    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },

      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      },
    },
  },

  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
    planets = {
      show_pluto = true,
    },
    --[[
    find_files = {
      theme = "cursor",
    },
    ]]--
  },

  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  },
}

```

Mappings:

Check out the configuration section:

```lua
    mappings = {
}
```

Shortcut keys from key mapping:

Default Mappings.

Mappings are fully customizable. Many familiar mapping patterns are set up as defaults.

| Mappings          | Action                                               |
| ----------------- | ---------------------------------------------------- |
| `<C-n>/<Down>`    | Next item                                            |
| `<C-p>/<Up>`      | Previous item                                        |
| `j/k`             | Next/previous (in normal mode)                       |
| `H/M/L`           | Select High/Middle/Low (in normal mode)              |
| `gg/G`            | Select the first/last item (in normal mode)          |
| `<CR>`            | Confirm selection                                    |
| `<C-x>`           | Go to file selection as a split                      |
| `<C-v>`           | Go to file selection as a vsplit                     |
| `<C-t>`           | Go to a file in a new tab                            |
| `<C-u>`           | Scroll up in the preview window                      |
| `<C-d>`           | Scroll down in the preview window                    |
| `<C-f>`           | Scroll left in the preview window                    |
| `<C-k>`           | Scroll right in the preview window                   |
| `<M-f>`           | Scroll left in the results window                    |
| `<M-k>`           | Scroll right in the results window                   |
| `<C-/>`           | Show mappings for picker actions (insert mode)       |
| `?`               | Show mappings for picker actions (normal mode)       |
| `<C-c>`           | Close telescope (insert mode)                        |
| `<Esc>`           | Close telescope (in normal mode)                     |
| `<Tab>`           | Toggle selection and move to the next selection      |
| `<S-Tab>`         | Toggle selection and move to the previous selection  |
| `<C-q>`           | Send all items not filtered to quickfixlist (qflist) |
| `<M-q>`           | Send all selected items to qflist                    |

Commands:

Exit from Telescope:

Press`ESC` key.

List all the Telescope commands:

```vim
: Telescope
```

And explore the the complete command list to select the one required.

Pop up the most recent files opened (old files history):

```vim
: Telescope oldfiles
```

Pop up the grep finder (searches file contents, not just file names):

```vim
: Telescope live_grep
```

This is a quick alternative to `:! find ...` and **Regular Expressions** in the Neovim command line.

Pop up the files finder (searches for file names):

```vim
: Telescope find_files
```

Open images or galleries from Neovim (no Telescope extensions).

Requirements:

```shell
sudo apt-get update
sudo apt-get install feh sxiv qiv ristretto eog tumbler-plugins-extra
```

When the image is found with `:Telescope find_files`, run:

Single image:

```vim
:!sxiv ./screenshots/dinder.png
```

Image, image gallery, and slide show.

```vim
:!ristretto ./screenshots/dinder.png
```

Resources:

Title: Neovim - Telescope: a highly extendable fuzzy finder.

Web: <https://www.youtube.com/watch?app=desktop&v=OhnLevLpGB4>

A page with a lot of Lua config files:

Web: <https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/telescope.lua>

Telescope-media-files.nvim:

Web: <https://github.com/nvim-telescope/telescope-media-files.nvim>

Title: Configure Telescope in Neovim

Web: <https://www.youtube.com/watch?v=u_OORAL_xSM>

##### Install Lua plugins: neovim-session-manager

A Neovim 0.7+ plugin that use built-in :mksession to manage sessions like folders in VSCode. It allows you to save the current folder as a session to open it later. The plugin can also automatically load the last session on startup, save the current one on exit and switch between session folders.

The plugin saves the sessions in the specified folder (see configuration). The session corresponds to the working directory. If a session already exists for the current folder, it will be overwritten.

Web: <https://github.com/Shatur/neovim-session-manager>

Add the next code to the file ~/config/.vim/init.lua:

```lua
    ----------------------------------------------------------------------------
    -- Lua Plugins / IDE / neovim-session-manager
    ----------------------------------------------------------------------------
    -- Manage sessions like folders in VSCode
    use {
        'Shatur/neovim-session-manager',
        requires = 'nvim-lua/plenary.nvim',
    }
```

Add some code to the options section:

```lua
--------------------------------------------------------------------------------
-- Lua Plugins options / neovim-session-manager
--------------------------------------------------------------------------------
local Path = require('plenary.path')
local config = require('session_manager.config')
require('session_manager').setup({
  sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'),  -- The directory where the session files will be saved.
  session_filename_to_dir = session_filename_to_dir,  -- Function that replaces symbols into separators and colons to transform filename into a session directory.
  dir_to_session_filename = dir_to_session_filename,  -- Function that replaces separators and colons into special symbols to transform session directory into a filename. Should use `vim.loop.cwd()` if the passed `dir` is `nil`.
  autoload_mode = config.AutoloadMode.Disabled,       -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
  autosave_last_session = false,                      -- Automatically save last session on exit and on session switch.
  autosave_ignore_not_normal = true,                  -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
  autosave_ignore_dirs = {},                          -- A list of directories where the session will not be autosaved.
  autosave_ignore_filetypes = {                       -- All buffers of these file types will be closed before the session is saved.
    'gitcommit',
    'gitrebase',
  },
  autosave_ignore_buftypes = {},     -- All buffers of these bufer types will be closed before the session is saved.
  autosave_only_in_session = false,  -- Always autosaves session. If true, only autosaves after a session is active.
  max_path_length = 80,              -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
})

```

Usage:

Go to the project directory.

Open a file or the files you want to be saved in the session in different tabs/buffers or windows/buffers using NERDTree.

Save the sessions status:

```vim
:SessionManager save_current_session
```

If you close Neovim, it will ask you to close every file tab by tab, for you to save or discard new changes. If you are unsure, use:

```vim
:Gdiff
```

Then exit the tab:

```vim
:wq!
:q!
```

One way to close it without taking care of what is saved or not is this command:

```vim
:%bdelete
```

Restart Neovim and select the sessions you want to go to. It is much better to first, go to the project's root, and be inside of a Tmux sessions, in case you need to use a second Tmux pane for something, for example, to run the project.

```vim
:nvim
```

Select your session.

```vim
:SessionManager load_current_dir_session
```

You will see all your session tabs in the buffers line.

To see more command options:

```
:SessionManager (then press TAB)
:Sess (then press TAB, SPACEBAR, then TAB again)
```

Press `ENTER` to select any option.

All the command options are:

```vim
:SessionManager load_sessions
:SessionManager load_current_dir_session
:SessionManager delete_session
:SessionManager save_current_session
:SessionManager load_last_session
:SessionManager load_current_dir_session
:SessionManager delete_session
:SessionManager save_current_session
:SessionManager load_last_session
```

You can save all the current open files at once (being or not a part of a session), which is not recommended, by loading another session (which closes the current session). Neovim will open a dialog and you have to decide if you are going to save everything and close or just close without saving the changes on file(s).

```vim
:SessionManager load_sessions
```

To load the complete sessions list using **Telescope** you need to install **telescope-ui-select.nvim**.

If you wan t to delete all the sessions file:

File path: **~/.local/share/nvim/sessions**.

Does a nvim session store change history?

Neovim's built-in session management feature primarily focuses on saving and restoring the state of your editing environment, including the layout of your windows, opened files, and various settings. However, it does not inherently store the change history or undo/redo information.

The change history (undo tree) is a separate aspect of editing sessions in Neovim. Neovim keeps an undo tree that tracks changes made to the text, allowing you to undo or redo these changes. This information is not directly stored in a session file but in the undo directory (by default, this is the ~/.vimundo/ directory).

If you want to persist the undo information and have it included when restoring a session, you might need to ensure that the undofile option is set. You can do this by adding the following line to your Neovim configuration:

```vim
set undofile
```

##### Install Lua plugins: telescope-ui-select.nvim



Web: <https://github.com/nvim-telescope/telescope-ui-select.nvim>

Installation:

Add the code to the file: ~/config/,vim/init.lua.

```vim
    ----------------------------------------------------------------------------
    -- Lua Plugins / Finder / telescope-ui-select.nvim
    ----------------------------------------------------------------------------
    -- It sets vim.ui.select to telescope
    use {'nvim-telescope/telescope-ui-select.nvim' }

```

Add the next code to the extensions section  of the plugin Telescope options:

```lua
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  },

```

This goes after the closing curly brace of the Telescope setup function:

```lua
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function.
require("telescope").load_extension("ui-select")

```

To use this plugin, check out the plugin **neovim-session-manager**.

##### Install Lua plugins: llm.nvim

Web: <https://github.com/gsuuon/llm.nvim>

Web: <https://github.com/gsuuon/llm.nvim/blob/main/lua/llm/prompts/starters.lua>

##### Install Lua plugins: nvim-dev-container

TODO:

Developing inside a Container.

Goal of this plugin is to provide functionality similar to VSCode's remote container development plugin and other functionality that enables development in docker container. This plugin is inspired by jamestthompson3/nvim-remote-containers, but aims to enable having neovim embedded in docker container.

Web: <https://github.com/esensar/nvim-dev-container>

Alternatives to nvim-dev-container:

TODO:

NVIM-Remote-Containers:

This plugin aims to give you the functionality of VSCode's remote container development plugin. It will allow you to spawn and develop in docker containers and pulls config information from a devcontainer.json file.

Web: <https://github.com/jamestthompson3/nvim-remote-containers>

Do everything manually:

As an alternative, you can:
Read the file devcontainer.json.
"ssh" or "it" (use the Docker interactive terminal) the container.
Create the Docker image with Neovim installation, its plugins and dependencies, and other Development Environment requirements (VS Code?), or manually install more packages or make changes to "disk" after the image is created, using a container volume.
Finally, start developing with Neovim in the terminal (ssh or it).

Example of a typical VS Code file devcontainer.json:

```json
// devcontainer.json
{
  "name": "YourProjectName",
  "image": "your-docker-image:latest",
  "settings": {
    "terminal.integrated.shell.linux": "/bin/bash"
  },
  "extensions": [
    "ms-vscode.vscode-typescript-tslint-plugin"
    // Add other extensions as needed
  ],
  "forwardPorts": [3000, 5000],
  "postCreateCommand": "yarn install",
  "postStartCommand": "yarn start",
  "workspaceFolder": "/workspace"
}

```

Please replace "YourProjectName" with your desired project name, "your-docker-image:latest" with the Docker image you want to use, and update the extensions, forwardPorts, and commands accordingly based on your project's requirements.

To install Neovim in a Visual Studio Code development container, you can modify the devcontainer.json file to include a post-create command that installs Neovim. Here's an example:

```json
// devcontainer.json
{
  "name": "YourProjectName",
  "image": "your-docker-image:latest",
  "settings": {
    "terminal.integrated.shell.linux": "/bin/bash"
  },
  "extensions": [
    "ms-vscode.vscode-typescript-tslint-plugin"
    // Add other extensions as needed
  ],
  "forwardPorts": [3000, 5000],
  "postCreateCommand": "apt-get update && apt-get install -y neovim",
  "postStartCommand": "yarn install",
  "workspaceFolder": "/workspace"
}

```

To show the dependencies of a package:

```shell
apt depends <package-name>
apt depends neovim
```

This helps to know what is inside of the Docker image. Install only the required packages to do not have conflicts when building an image for another environment such as testing, or production.

Document the separate packages for Neovim VS the App(s) or micro services you  are working on, so you can exclude the packages exclusive for Neovim before create an image for an environment or production.

Probably Neovim and its dependencies require less disk space than Visual Studio Code and its dependencies.

Rebuild the container:
After making the changes to the devcontainer.json file, Visual Studio Code will prompt you to rebuild the container. Alternatively, you can use the "Remote-Containers: Rebuild Container" command from the Command Palette.

Open a terminal in VS Code and verify the installation:

```shell
nvim --version
```

Install Neovim in a docker image:

Use a Dockerfile to specify the necessary commands for installation.

```docker
# Use a base image with the desired operating system
FROM ubuntu:20.04

# Install Neovim and other dependencies
RUN apt-get update && \
    apt-get install -y neovim

# Set the default command to run when the container starts
CMD ["/bin/bash"]

```

Build the Docker image using the following command in the directory containing your Dockerfile:

```shell
docker build -t your-docker-image-name:tag .
```

Replace your-docker-image-name and tag with your desired image name and tag.

After building the image, you can run a container based on it:

```shell
docker run -it your-docker-image-name:tag
```

This will start a container and drop you into a bash shell where you can verify that Neovim is installed:

```shell
nvim --version
```

To access Neovim in the terminal:

Build the Docker Image:

```shell
docker build -t your-docker-image-name:tag .
```

Run a Container:

docker run -it your-docker-image-name:tag

This command starts a container and opens an interactive terminal (-it).

Access Neovim:

Inside the container's terminal, you can run Neovim by simply typing:

```shell
nvim
nvim file_name
```

Save changes made to the file in the Docker container:

1. Commit Changes to a New Image:

After making changes in the running container, you can commit those changes to a new image. This creates a new Docker image with the modifications applied. However, this is not a recommended practice for persistent data, and it's usually better suited for development or debugging purposes.

```shell
docker commit container_id your-new-image:tag
```

2. Use Volumes:

To persist data between container runs, you should consider using **Docker volumes**. Docker volumes allow you to share data between your host machine and the container or between multiple containers.

For example, you can mount a volume when running the container:

```shell
docker run -it -v /path/on/host:/path/in/container your-docker-image-name:tag
```

3. Docker Compose:

If you're working with more complex setups, Docker Compose is a tool that allows you to define multi-container Docker applications. You can use it to manage volumes and easily configure data persistence.

References:

Build a custom Linux Desktop in Docker!
Web: <https://www.youtube.com/watch?v=YesDodQ2Y7o>

##### More Lua plugins

Web: <https://github.com/rockerBOO/awesome-neovim>

##### Install Neovide

This is a simple graphical user interface for Neovim (an aggressively refactored and updated Vim editor). Where possible there are some graphical improvements, but functionally it should act like the terminal UI.
https://github.com/neovide/neovide
https://github.com/neovide/neovide/wiki/Configuration

Notes:
Try to install from source. Otherwise install as snap pack.
<br />If already installed Alacritty, you have rust install on your system, so there is no use re-installing it.

References:
Neovide Is A Graphical Neovim Client Written In Rust:
https://m.youtube.com/watch?v=Vd5AACp6GG0

##### Complete neovim keymapping cheet sheet

Make it as a Gnumeric datasheet file.

##### Neovim keymap image

Also create a keymap image to be used as visual reference.
Is has to include qwerty keyboard, and Neovim command shortcuts and key bindings with little explanations.

##### PacVim

PacVim – A Game That Teaches You Vim Commands:
https://www.tecmint.com/learn-vi-commands-with-pacvim-game/

##### Input Remapper

An easy to use tool to change the mapping of your input device buttons. It's kind of a Linux alternative to the popular Karabiner for MacOS.
<br />Supports mice, keyboards, gamepads, X11, Wayland, combined buttons and programmable macros.
<br />Allows mapping non-keyboard events (click, joystick, wheel) to keys of keyboard devices.
<br />Web: <https://github.com/sezanzeb/input-remapper>

This application can help other Apps such as the AI Assitant "Commbase" execute voice commands based on Commbase script that run custom keyboard shortcuts created with Input Remapper instead of Cinnamon which can make Commbase independant of Gnome/Cinnamon, but still dependent of the powerful Gnome terminal.

##### Create a Virtual Machine for Development

It can be virtualized in KVM or VirtualBox. Both are recommeded for faster devel envinronment rescueing based on backup restoration compared to re-installation, and hardware portability.
VirtualBox is recommended to be able to use GPU rendering and acceleration, and Platform compatibility (Windows and MacOS). It seems the best option to choose from, currently, just for portability!
<br />KVM is recommended to create a non graphical Virtual Machine and native kernel virtualization for velocity and less usage of the system resources.

A good installation would be a Minimal GNU/Debian Linux with Cinnamon for Gnome Terminal, and use Awesome as the Window Manager in order for the system to save resources. A minimun graphical environment is a requirement for Commbase. Ligatures and Tranaparency cannot be used from Gnome Terminal + Commbase, but they are not required and would be a step onto a next level. However, gpu is required for the Copilots plugins to work. A solution to more or less ceed the GPU power to the VM would be use a light Window Manager rather than Desktop Environments.

##### References in Spanish

References in Spanish:
<br />Topic: Porque dejé de utilizar VS Code y ahora utilizo VIM.
<br />Web: <https://www.youtube.com/watch?v=EYaPvgXjFXo>
<br />Topic: Schurmann course.
<br />Web: <https://www.udemy.com/course/vim-aumenta-tu-velocidad-de-desarrollo/?couponCode=WEBSALE>
<br />Topic: Schurmann config for Neovim (MacOS).
<br />Web: <https://github.com/nschurmann/configs>
<br />Topic: Como armar el mejor teclado para programar | Corne Keyboard.
<br />Web: <https://www.youtube.com/watch?v=lDqJR9b6w7s>
<br />Title: Cómo Configurar VIM como VS Code
<br />Web: https://www.youtube.com/watch?v=XgQFzi3VkC8&t=6s
<br />Web: https://github.com/nschurmann/configs/blob/master/.vimrc
<br />Topic: Cómo Configurar VIM como VS Code.
<br />Web: <https://www.youtube.com/watch?v=XgQFzi3VkC8&t=6s>
<br />GUÍA PARA CONFIGURAR NEO VIM DESDE CERO - Temas, plugins y autocompletado.
<br />**** Verify Kite compatibility.
<br />Web: <https://www.youtube.com/watch?v=2dG_Nl_r6s0>

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension
