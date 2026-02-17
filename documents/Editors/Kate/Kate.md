### Kate

#### Kate Installation

TODO:

#### Keyboard Shortcuts

TODO:

##### VI Mode

Kate's VI mode is a project to bring Vim-like, modal editing to the Kate text editor and by extension to other KDE programs who share the same editor component.

Web: <https://www.twitch.tv/videos/1998555593>

File: VI Mode - Kate.pdf

To enable the VI input mode, go to `Settings` → `Configure` `Kate…` → `Editing` → `VI Input Mode`.

It can also be toggled with the `VI Input Mode` setting in the `Edit` menu. (The default shortcut key is `Meta` + `Ctrl` + `V` – where Meta usually is the Windows key).

Incompatibilities with Vim
<br />There are only a few features of Kate's VI mode which are incompatible with Vim (not counting things missing). They are listed in the web doc.

**Supported Commands**

**Supported normal/visual mode commands**

| Key          | Description                                   |
|--------------|-----------------------------------------------|
| a            | Enter Insert Mode and append                  |
| A            | Enter Insert Mode and append to EOL           |
| i            | Enter Insert Mode                             |
| I            | Insert before first non-blank char in line    |
| v            | Enter Visual Mode                             |
| V            | Enter Visual Line Mode                        |
| <c-v>        | Enter Visual Block Mode                       |
| gv           | Re-select Visual                              |
| o            | Open new line under                           |
| O            | Open new line over                            |
| J            | Join lines                                    |
| c            | Change                                        |
| C            | Change to EOL                                 |
| cc           | Change line                                   |
| s            | Substitute char                               |
| S            | Substitute line                               |
| dd           | Delete line                                   |
| d            | Delete                                        |
| D            | Delete to EOL                                 |
| x            | Delete char                                   |
| X            | Delete char backward                          |
| gu           | Make lowercase                                |
| guu          | Make lowercase line                           |
| gU           | Make uppercase                                |
| gUU          | Make uppercase line                           |
| y            | Yank                                          |
| yy           | Yank line                                     |
| Y            | Yank to EOL                                   |
| p            | Paste                                         |
| P            | Paste before                                  |
| r.           | Replace character                             |
| R            | Enter replace mode                            |
| :            | Switch to command line                        |
| /            | Search                                        |
| u            | Undo                                          |
| <c-r>        | Redo                                          |
| U            | Redo                                          |
| m.           | Set mark                                      |
| >>           | Indent line                                   |
| <<           | Unindent line                                 |
| >            | Indent lines                                  |
| <            | Unindent lines                                |
| <c-f>        | Scroll page down                              |
| <pagedown>   | Scroll page down                              |
| <c-b>        | Scroll page up                                |
| <pageup>     | Scroll page up                                |
| <c-u>        | Scroll half page up                           |
| <c-d>        | Scroll half page down                         |
| zz           | Centre view on cursor                         |
| ga           | Print character code                          |
| .            | Repeat last change                            |
| ==           | Align line                                    |
| =            | Align lines                                   |
| ~            | Change case                                   |
| <c-a>        | Add to number                                 |
| <c-x>        | Subtract from number                          |
| <c-o>        | Go to prev jump                               |
| <c-i>        | Go to next jump                               |
| <c-w>h       | Switch to left view                           |
| <c-w><c-h>   | Switch to left view                           |
| <c-w><left>  | Switch to left view                           |
| <c-w>j       | Switch to down view                           |
| <c-w><c-j>   | Switch to down view                           |
| <c-w><down>  | Switch to down view                           |
| <c-w>k       | Switch to up view                             |
| <c-w><c-k>   | Switch to up view                             |
| <c-w><up>    | Switch to up view                             |
| <c-w>l       | Switch to right view                          |
| <c-w><c-l>   | Switch to right view                          |
| <c-w><right> | Switch to right view                          |
| <c-w>w       | Switch to next view                           |
| <c-w><c-w>   | Switch to next view                           |
| <c-w>s       | Split horizontally                            |
| <c-w>S       | Split horizontally                            |
| <c-w><c-s>   | Split horizontally                            |
| <c-w>v       | Split vertically                              |
| <c-w><c-v>   | Split vertically                              |
| gt           | Switch to next tab                            |
| gT           | Switch to prev tab                            |
| gqq          | Format line                                   |
| gq           | Format lines                                  |
| q. / q       | Begin/finish recording macro using the named macro register. |

**Supported motions**

| Key         | Description                              |
|-------------|------------------------------------------|
| h           | Left                                     |
| <left>      | Left                                     |
| <backspace> | Left                                     |
| j           | Down                                     |
| <down>      | Down                                     |
| <enter>     | Down to first non blank                  |
| k           | Up                                       |
| <up>        | Up                                       |
| –           | Up to first non blank                    |
| l           | Right                                    |
| <right>     | Right                                    |
| <space>     | Right                                    |
| $           | To EOL                                   |
| <end>       | To EOL                                   |
|             | To 0 column                              |
| <home>      | To 0 column                              |
| ^           | To first character of line               |
| f.          | Find char                                |
| F.          | Find char backward                       |
| t.          | To char                                  |
| T.          | To char backward                         |
| ;           | Repeat last t. or f. command             |
| ,           | Repeat last t. or f. command             |
| n           | Find next                                |
| N           | Find prev                                |
| gg          | To first line                            |
| G           | To last line                             |
| w           | Word forward                             |
| W           | WORD forward                             |
| b           | Word backward                            |
| B           | WORD backward                            |
| e           | To end of word                           |
| E           | To end of WORD                           |
| ge          | To end of prev word                      |
| gE          | To end of prev WORD                      |
| %           | To matching item                         |
| [BACKTICKa-zA-Z>LEFT-ANGLE-BRACKET] | To mark          |
| [SINGLE-QUOTEa-zA-Z>LEFT-ANGLE-BRACKET] | To mark line |
| [[          | To previous brace block start            |
| ]]          | To next brace block start                |
| []          | To previous brace block end              |
| ][          | To next brace block end                  |
| *           | To next occurrence of word under cursor  |
| #           | To prev occurrence of word under cursor  |
| H           | To first line of window                  |
| M           | To middle line of window                 |
| L           | To last line of window                   |
| gj          | To next visual line                      |
| gk          | To prev visual line                      |
 
**Supported text objects**

| Key | Description            |
|-----|------------------------|
| iw  | Inner word             |
| aw  | A word                 |
| iW  | Inner WORD             |
| aW  | A WORD                 |
| i"  | Inner double quote     |
| a"  | A double quote         |
| i’  | Inner single quote     |
| a’  | A single quote         |
| i`  | Inner back quote       |
| a`  | A back quote           |
| ib  | Inner paren            |
| i)  | Inner paren            |
| i(  | Inner paren            |
| ab  | A paren                |
| a)  | A paren                |
| a(  | A paren                |
| iB  | Inner curly bracket    |
| o}  | Inner curly bracket    |
| i{  | Inner curly bracket    |
| aB  | A curly bracket        |
| a}  | A curly bracket        |
| a{  | A curly bracket        |
| i<  | Inner inequality sign  |
| i>  | Inner inequality sign  |
| a<  | A inequality sign      |
| a>  | A inequality sign      |
| i[  | Inner bracket          |
| I]  | Inner bracket          |
| a[  | A bracket              |
| a]  | A bracket              |
| i,  | Inner comma            |
| a,  | A comma                |

**Supported insert mode commands**

| Key   | Description                           |
|-------|---------------------------------------|
| <c-d> | Unindent                              |
| <c-t> | Indent                                |
| <c-e> | Insert from below                     |
| <c-y> | Insert from above                     |
| <c-w> | Delete word                           |
| <c-r> | Insert content of register            |
| <c-o> | Switch to normal mode for one command |
| <c-a> | Increase number under cursor          |
| <c-x> | Decrease number under cursor          |

**The Comma Text Object**

This is something that I have been missing in Vim. The comma text object makes it easy to modify parameter lists in C-like languages and other comma separated lists. It is basically the area between two commas or between a comma and a bracket. In the line shown in the illustration to the right, the three ranges this text object can span are highlighted in red.

```vim
int f(int arg1, double arg2, char arg3);
```

Comma text object ranges. If the cursor is over, say, “arg2”, pressing `c` + `i` , (“change inner comma”) would delete “double arg2” and place the cursor between the two commas in insert mode. A very convenient way to change a function's parameters.

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension
