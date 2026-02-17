### VS Code

#### VS Code Installation

TODO:

#### Keyboard Shortcuts

##### Open the editor

Open VS Code Workspace Directory file in the current directory:

```shell
$ code-insiders proj-name.workspace --disable-gpu
```

Open VS Code in the current directory:

```shell
$ code-insiders . --disable-gpu
```

```shell
$ code .
```

##### Run commands

Open command palette:
<br />```F1``` or ```CTRL``` + ```SHIFT``` + ```P```.

##### Run a file, for example JS app, using the default run configuration

Press ```F5```.
<br />When you press F5 to start debugging, you can **Select Environment** or **Install** one as **Extension** from the **dropdown list**.
<br />Note: This hotkey is not going to run the JS file when the VS Code Terminal is set to **Zsh**. Check out the section **JavasScript** to learn to use the **Debugger** Shortcuts and Commands.

##### Reload configuration changes

Reload window:
<br />```F1```, ```Reload Window```.

##### Come up format suggestions

Get a context specific list of suggestions:
<br />```CTRL``` + ```SPACE```.
<br />You can also add user defined snippets.

##### Format documents manually

Search files by name: (append: to go to line or @ to go to symbol):
<br />```CTRL``` + ```P```.

Extend the cursor to many lines:
<br />```CTRL``` + ```SHIFT``` + ```UP/DOWN``` arrows.

##### Auto format documents

Format document with Prettier:
<br />```F1```, ```Format document with...```, select option ```Prettier```.

Format selection with Prettier:
<br />Highlight text, Make ```Right Click```, select option ```Prettier```.
<br />
<br />Languages supported: TODO
<br />
<br /> Note:
<br /> It Requires Prettier installed.

Format document (with the default, checker, commonly Emmet in VS Code):
<br />```F1```, ```Format document```.
<br />Languages supported: TODO

Expand the Emmet abbreviation:
<br />Start typing in **words** and then press ```TAB```.
<br />You can verify that configuration in the menu Edit:
<br />You will see **Emmet: Expand Abbreviation    Tab**.

Word Wrap:
<br />Text finder: Word Wrap.

##### Install extensions

Launch VS Code Quick Open ```Ctrl``` + ```P```, **paste** the following **command**, and press `enter`:

```code
ext install goessner.mdmath
```

Some extensions require a VS Code reload to start working:
<br />```F1```, type: ```Reload Window```, Press ```Enter```.
<br />Or:
<br />```CTRL``` + ```SHIFT``` + ```P```, type: ```Reload Window```, Press ```Enter```.

##### Open or close the Terminal Window

Open the Terminal Windows:
<br />```CTRL``` + ``` ` ```
<br />Or use:
<br />Go to ```Menu```, select ```View```, select option ```Terminal```.

##### Work on tasks

Add keyword highlighted task as comment among texts with (TODO: EXT NAMES HERE):
<br />Type in one of the following keywords:

```code
// TODO: Description ...
// FIXME: Description ...
// BUG: Description ...

```

##### Close the files Side Bar

Close Files Side Bar:
<br />```CTRL``` + ```B``` (in Windows.)
<br />```CMD``` + ```B``` (in MacOS.)

##### Go directly to the Explorer

Go directly to the Explorer:
<br />```CTRL``` + ```SHIFT``` + ```E```.

TODO: Verify this shortcut. It enters a mode where I can't use **SPACE BAR**, and have to press the **shortcut keys** to exit that mode.

##### Go directly to the Finder

Go directly to the Finder:
<br />```CTRL``` + ```SHIFT``` + ```F```.

##### Go directly to the Source Control

Go directly to the Source Control:
<br />```CTRL``` + ```SHIFT``` + ```G```.

##### Open the Command Palette

Open the Command Palette:
<br />```CTRL``` + ```SHIFT``` + ```P```.
<br />Or use:
<br />```F1```.

##### Zen Mode

Zen Mode:
<br />```F1```, ```Zen Mode```.

##### Minimap

Minimap:
<br />It is in the right side of the document.

##### Copy text

Copy text:
<br />Highlight the text, press ```CTRL``` + ```C```.

##### Paste text from the clipboard

Paste any copied text from the clipboard:
<br />```CTRL``` + ```V```.

##### Find Text

Find Text:
<br />```CTRL``` + ```F``` and then type in the text.

##### Replace text

Replace text:
<br />Find the text ```CTRL``` + ```F```, type in **the text**, click on the ```dropdown``` icon, type in the **replacement string**.
<br />Or:
<br />```CTRL``` + ```F```, type in **the text**, go to the ```finder``` icon section, click on the ```dropdown``` icon, type in the **replacement string**.

##### Close a file

Close a file:
<br />```CTRL``` + ```W```.

##### Switch through files in tabs

Switch through files in tabs:
<br />```CTRL``` + ```TAB``` + ```RIGHT ARROW``` / ```LEFT ARROW```.

##### Search files to open them

Search for files you want to open:
<br />```CTRL``` + ```P```, ```file-name.js```.

##### Code Outline navigation options

Open the pop up window to search for files:
<br />```CTRL``` + ```P```, and then you have three options to choose from:
<br /> A. Type any symbol to find it out across files. E.g.: "#" 0r "."
<br /> B. Press ```@```, and then ```UP/DOWN``` to navigate the Outline sections by name. Those section can be classes, properties, methods, functions, variables, constants, and so on. You can filter the results, by typing additional characters.
<br /> C. Press ```@:``` to order the Outline sections by type rather than by name.

##### Navigate a line of text / code word by word

Navigate a line of text / code word by word:
<br />```CTRL``` + ```L``` / ```R``` arrows.

##### Go to the beginning of the current file

```CTRL``` + ```HOME``` key.
<br />Or, in Mac:
<br />Keep ```CMD``` key pressed a while to toggle between beginning and end.

##### Go to the end of the current file

```CTRL``` + ```END```.
<br />Or in Mac:
<br />Keep ```CMD``` key pressed a while to toggle between beginning and end.

##### Undo changes

Undo changes:
<br />```CTRL``` + ```Z```.

##### Select the word that you are on

Select the word that you are on:
<br />```DOUBLE CLICK``` on the word.

##### Select a word from the end or the beginning of that word

Select a word from the end or the beginning of that word:
<br />```CTRL``` + ```SHIFT``` + ```L ARROW``` / ```R ARROW```.

##### Comment blocks of CSS in VS Code

Toggle uncomment/comment code block, e.g: css "/* CODE */":

Hold ```CTRL``` + ```/```
<br />```CTRL``` + ```k``` + ```c```

Checkout the Extension: Nest Comments.

##### Insert HTML boilerplate (snippet)

Insert HTML boilerplate (snippet):
<br />In any HTML file, type in ```!``` (the bang character), and then press ```ENTER```.
<br />This is thanks to the Emmet Intellisense.

To select options or add HTML tags:
<br />Once in the HTML file, type in ```!``` (the bang character), select an option, or type in the beginning of an option, for example, a tag, for example, ```body``` from the dropdown box and then press ```ENTER```.

##### Insert HTML tags

Insert HTML tags:
<br />In any HTML file, type in the tag name, e.g.: ```ht```, select ```html```, Press ```ENTER```

##### Insert 3 li tags inside a ul tag

Insert 3 li tags inside a ul tag:
<br />Type in inside the ul tags ```l*3```.
<br />Example of the completion:

```html
<ul>
  <li></li>
  <li></li>
  <li></li>
</ul>
```

##### Change the Editor font

Change the Editor font:
<br />Download a new font **Cascadia Code**.
<br />Click on the ```Cogwheel``` icon, select ```Settings```, Type in: ```Font```, select ```Font```, under 'text editor'.
<br />Type in the new font name that you want to use, for example: ```'Cascadia Code'```.

Reload the VS Code Window to reflect the changes in the editor:
<br />```F1```, ```Reload Window```

I use Cascadia Code to be able to:
<br />Activate the use of **Ligature characters**.
<br />Activate the use of the **Fira Code font** in the built-in terminal, which allows me to show the Zsh shell with powerline (**Oh my ZSh!**) foobar characters like the Git three emoticon.

References:
<br />Topic: Download and install the font Cascadia Code.
<br />Web: <https://github.com/microsoft/cascadia-code/release>
<br />Text finder: Turn on the Ligature Font characters

##### Turn on the Ligature Font characters

Turn on the Ligature Font characters:
<br />Click on the ```Cogwheel``` icon, Select ```Settings```, open the VS Code ```settings``` json file, Look for the line:

```json
"editor.FontLigatures": true
```

Or, include the comma if it is not at the end of the json file:

```json
"editor.FontLigatures": true,
```

Save changes:
<br />Reload the VS Code Window to reflect the changes in the editor:
<br />```F1```, ```Reload Window```

A list on how to make ligatures:

```rb
equal, equal: ==
equal, equal, equal: === 
equal, forward slash, equal: =/= 
exclamation point, equal: !=
equal, greater than: =>
greater than,  equal: >=
less than, equal: <=
greater than, equal, greater than: >=>
less than, equal, less than: <=<
hyphen, greater than: ->
less than, hyphen: <-
asterisk, asterisk, asterisk: ***
period, equal: .= 

```

New Ligatures added to the font Cascadia Code:
!:
!.
/\  <- To create this type in a fordward slash and a back slash
\/  <- To create this type in a back slash and a forward slash
??=
<:> 
... and other variants implemented via the `calt` refactoring (`calt` feature)

React Fragments:
less than, pipe: <|
less than, greater than, pipe: <>|

##### Change Zoom

Change Zoom:
<br />```CTRL``` + ```+```.
<br />```CTRL``` + ```-```.

##### Change Zoom permanently

To change the Zoom permanently:
<br />Go click on the ```Cogwheel``` icon, select ```Settings```, Type in: ```Zoom```.
<br />Next, default the Zoom through the setting options.

##### Word Wrap

Go to menu ```View```, and select the option ```Word Wrap```, or press ```ALT``` + ```z```.

##### Toggle ON/OFF Word Wrap permanently

Toggle ON/OFF Word Wrap permanently:
<br />Click on the ```Cogwheel``` icon, select ```Settings```, type in: ```Word Wrap```.

##### Open Markdown Side by Side Preview

To open Markdown Side by Side Preview:
<br />```F1,```, ```Markdown```, select ```Open Preview side by side```.

Note:
<br />The keyword shortcut: ```CTRL``` + ```K```, ```V``` does not work by default, but you can set it up.

##### Customize Keyboard Shortcuts

Hit the Settings ```cogWheel``` over there in the bottom left, click on ```Command Palette...```, type in: ```Preferences```, choose the option ``` Preferences: Open Keyboard Shortcuts```.
<br />Note: Some extensions have their own Keyboard Shortcuts or commands that you can add Keyboard Shortcuts to as well. Some extensions won't have Key Bindings set up. So you have to go into the command palette to check for those out.
<br />E.g:
<br />Assign a Keyboard Shortcut ```CTRL``` + ```N``` to the extension 'Advance New File'. This will work to create the new file and then to assign it to a proper directory by using just one Keyboard Shortcut.
<br />References:
<br />Text Finder: 'new file.'

##### Use snippets built into VS Code in the editor window

<br />A snippet appears every time a predefined prefix is typed in.

Example:
<br />Display a snippet list for the word/prefix **"document"**. It shows more options to choose from, such as document.getElementById();:
<br />Just type in: ```document``` on an HTML or javascript file.

To modify a snippet's json file:
<br />```F1```, ```snippets```, select ```Configure User Snippets```, select the Programing Language you are working with, for example ```html```. It opens the json file of that language for editon.
<br />
<br />Eample:
<br />Add the snippet **"clg"** to **html.json**:

```json
"Print to console": {
	"prefix": "clg",
	"body": [
		"console.log('$1');",
		"$2"
	],
	"description": "Log output to console"
}

// More alternatives to : "console.log()", for autocompletion like behaviors:
// : "console.log($1)",
// : ["console.log($1);","$2"],
// Go to the end of the line and return the to the next one, when ENTER key is pressed.
// : ["console.log($1);","$0"],

```

Note: The prefix **"log"**, works out of the box in javascript files identified by VS Code by the file extension ".js". There is no need to edit the settings file javascript.json to add it because our **"clg"** is a copy of **"log"** taken from the JS jason file.

##### Built-in VS Code Terminal VS Operating System Terminal

Gnome Terminal:
<br />The Linux Terminal that comes in Desktop Environments like **Cinnamon** and **Gnome**.
<br />In the Gnome Terminal, change the **palette entries 2, 3, and 4** to modify the default **Zsh foobar color palette**.
<br />Do not don't change the ```Monospace``` font, due to changes like the option ```Italic``` affect the powerline font triangle symbol position so the Zsh foobar looks just less awesome.

Mac Terminals:
<br />Hyper:
<br />It is a Mac Application. It is used for Terminal.
<br />iTerm:
<br />It is another Terminal for Mac.

##### To open/close the terminal

To open/close the terminal:
<br />```CTRL``` + ``` ` ``` (tilde, or backtick character, " ` ".)

##### To fix Zsh shell without proper emoticons in the foobar

To fix Zsh shell without proper icon like symbols in the foobar:
<br />Click on the icon ```Cogwheel```.
<br />Select ```Settings``` to open the Settings in an editor windows.
<br />Choose the 'terminal' category.
<br />Scroll down until you see the option: ```Terminal > Integrated: Font Family```.
<br />Replace the current font name with ```'Fira Code'``` or ```'FiraCode'```.

VS Code displays a message that tells that it only supports the font ```'monospace'``` in the terminal. If you have problems with fonts, you can use the ```"blue button"``` within the message to reset the VS Code font to its default configuration, but instead ...
<br />Reload the VS Code Window to reflect the changes in the built-in terminal foobar:
```F1```, ```Reload Window```
The proper icon like symbols have to appear in the terminal foobar.

This is the resultant settings json file:

```json
{
    "tabnine.experimentalAutoImports": true,
    "tabnine.receiveBetaChannelUpdates": true,
    "workbench.colorTheme": "Oceanic Next",
    "liveServer.settings.donotVerifyTags": true,
    "workbench.iconTheme": "vscode-icons",
    "prettier.enableDebugLogs": true,
    "workbench.editor.untitled.hint": "hidden",
    "terminal.integrated.defaultProfile.linux": "zsh",
    "liveServer.settings.donotShowInfoMsg": true,
    "editor.fontFamily": "'Cascadia Code', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'",
    "terminal.integrated.fontFamily": "'Fira Code'",
    "terminal.integrated.fontWeight": "normal",
    "editor.fontLigatures": true
}

```

References:
<br />Topic: Download the font Fira Code you can use in VS Code.
<br />Web: <https://dev.to/solexy79/installing-a-new-font-for-vs-code-in-three-3-simple-steps-13a5>
<br />Web: <https://fonts.google.com/>

##### Change the VS Code Terminal options

Change Terminal options:
<br />Click on the icon ```Cogwheel```.
<br />Select ```Settings``` to open the Settings in an editor window.
<br />Choose the terminal category.
<br />Scroll down until you see the option: ```"Terminal ..."``` and then choose 'the option' that you are looking for.

Option 2:
<br />Use the Terminal menu ```Configure Terminal Settings```.

##### Change back the Default Terminal to Bash from Zsh

Let's suppose that you did it at the end of the environment set-up to make sure that you know how things work.
<br />To change the **Default Terminal** from **Zsh** to **Bash**, use the Terminal menu ```Configure Terminal Settings```.
<br />Once in there, follow these options:
<br />```Terminal``` > ```Integrated``` > ```Default Profile: Linux```.
<br />Change the Default Terminal shell from ```Zsh``` to ```Bash```.
<br />Press ```F1```, and then type in ```Reload Window```.

Note:
<br />You can use the shell **Fish** or **Zsh** to run **Bash scripts** inside the VS Code Terminal,  but this affirmation could be false, depending on the order of the installation of new shells, the default shell set-up, and perhaps the current shell used when the package is installed. A good approach to save time and get everything up and running can be installing in order:
<br />**Zsh**, and then **Oh my Zsh!**
<br />**Fish**, and then **Oh my Fish!**
<br />** VS Code.
<br />Change the **default VS Code Terminal shell**, but only if you need to. It is better to keep Bash as the Default shell and use new VS Code Terminals to use new shells, or activate any shell type by using commands from any VS Code Terminal with Bash, like this:
<br />`$ zsh`
<br />`$ fish`
<br />`$ bash`
<br />Return to the latest shell used:
<br />`$ exit`

##### Switch and split terminals (Bash, Tmux, Zsh, Fish, Javascript Debug Terminal, etc.)

Make click on the ```dropdown``` icon beside the ```plus``` icon in the VS Code **Terminal**.

##### Disable Terminal GPU usage

Use the Terminal menu ```Configure Terminal Settings```.
<br />Go to the option ```Terminal > Integrated: GPU Acceleration```:
<br />Change the option from ```Auto``` to ```Off``` (disabled.)
<br />Apply changes:
<br />Press ```F1```, and then type in ```Reload Window```.

##### Create a Git project directory in the VS Code Terminal

In the VS Code Terminal:
<br />```$ mkdir my-project```

Go to the directory:
<br />```$ cd my-project```

Click the ```Source Control``` icon or ```CTRL + SHIFT + G```.
<br />Click the button ```Initialize Repository```. This is the same terminal command ```$ git init```.

Some System, Git and GitHub actions are available in VS Code.

##### Git GitHub Integration: Create new files (Untracked)

VS Code Integration option: Create new files (Untracked):
<br />Action: Click button ```U```.
<br />Location: ```Source Control``` icon sections.
<br />Equivalent Git command: ```$ touch file.html```.

##### Git GitHub Integration: See file differences (changes)

VS Studio Code Integration option: See file differences (changes):
<br />Action: Click button ```M```.
<br />Location: ```Source Control``` icon sections.
<br />Equivalent Git command: ```$ git diff```. TODO: Revise whether this option diffs any file versions in the working area, staging area or both.

##### Git GitHub Integration: Add file to staging area

VS Studio Code Integration option: Add file to staging area:
<br />Action: Click button ```+```.
<br />Location: ```Source Control``` icon sections.
Equivalent Git command: ```$ git add file.html```.

##### Git GitHub Integration: Commit changes to the repository

VS Studio Code Integration option: Commit changes to the repository:
<br />Action: Type in the 'commit message' + Click on ```CHECK``` button.
<br />Location: `Source Control` icon sections.
<br />Equivalent Git command: ```$ git commit -m "Updated file.html"```.

##### Git GitHub Integration: Publish to GitHub

VS Studio Code Integration option: Publish to GitHub:
<br />Action: Press ```F1```, type in ```github```, select ```Publish to Github```.
<br />Location: ```Command Palette```.
<br />Equivalent Git command: Git and/or GitHub commands to create a repository in the command line.

##### Git GitHub Integration:  Push Code to the GitHub repository (origin)

VS Studio Code Integration option: Push Code to the GitHub repository (origin):
<br />Action: Press ```F1```, type in ```github```, select ```Push, Rename remote as "origin"```.
<br />Location: ```Command Palette```.
<br />Equivalent Git command: git GitHub commands to:1. ```"Rename remote as origin"``` and 2. Push changes to origin: ```$ git push origin main```.

##### More Git and GitHub integration options

More Git integration options:
<br />Explore the **Command Palette** results for more options in regard to Git GitHub integration with VS Code.

##### Set up the option to avoid terminal confirmation dialogs

Click on the ```Cogwheel``` icon, then on ```Settings```, type in: ```terminal confirm```, Uncheck the ```check``` button to **turn the option off**.
<br />Verify that the change has been applied.

##### Install Recommended Extensions for any Specified Workspace

Use Extension Recommendations to be able to install the extensions that correspond to a specified Workspace you are working on.
<br />After making a new Workspace, every time that you add new extensions to the Workspace, click on the ```'extension'``` you want to enable, click on the ```cogwheel``` of the extension page, choose ```Add to Workspace Recommendations```, toggle on the ```checkbox``` beside the 'Workspace' you want the Extension added to.
<br />Next time, when you ```open``` a specific project ```Workspace``` you are going to work on, you can go to your ```extensions``` list and in the text box type ```@recommended``` to show the list of all the Recommended Extensions that you can select to install or Enable (Workspace) / Disable (Workspace).

#### Enable or Disable Extensions for any Specified Workspace

The option ```'Disable (Workspace)'``` help you save computing and GPU power/resources for your project.
<br /> After creating any **new project**, use that option to disable all the unused extensions, using one of the two alternatives:
<br />Click on the ```'extension'``` you want to enable, click on the dropdown ```Disable``` of the extension page, choose the option ```Disable (Workspace)```.
<br />Right-Click on the ```'extension'``` you want to disable and then choose the option ```Disable (Worskspace)``` from the menu list.

#### Filter and list all the enabled or disabled extensions

Go to your ```extensions``` list and in the text box type:
`@enabled` or `@disabled`.

#### Enable StickyScroll

Go to ```settings```, search for ```scroll```, and activate the checkbox of the option: ```Editor > Sticky Scroll: Enabled```.

#### Node JS

##### Node JS Installation

References:
<br />Title: Web Development YouTube channel.
<br />Video: <https://m.youtube.com/channel/UCv5RcL35rF1dmCJ9HA1Lv9Q/videos>
<br />Title: 1. Let's Install Node JS.
<br />Video: <https://m.youtube.com/watch?v=no07M3Nn1xA>
<br />Topic: Official Node download for MacOS and Windows.
<br />Video: <https://nodejs.org/en/download/>
<br />Web: <https://nodejs.org/en/download/>
<br />Topic: Ubuntu Installation.
<br />Web: <https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04>
<br />Topic: I am using this for Debian, but NVM installation instead of just Node.
<br />Web: <https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-debian-10>
<br />File: How To Install Node.js on Debian 10 _ DigitalOcean.pdf

Install one of the different NVM versions from GitHub. You usually install the latest working version. Here are 2 versions to download. Besides, important notes about the installation in general.

Go to <https://github.com/nvm-sh/nvm>
<br />Verify the curl version:
<br />```$ curl --version```.
<br />
<br />Install the **NVM** version **v0.39.1**:
<br />**Download** the repository installation file from **GitHub.com**:
<br />```$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash```.
<br />
<br />Install the **NVM** version **v0.34.0**:
<br />**Download** the repository installation file from **GitHub.com**:
<br />```$ cd ~/Downloads```.
<br />```$ curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh -o install_nvm.sh```

There are two ways to install NVM: One downloads the sources and installs the program using the script **install.sh**. The second just downloads the same **bash script**, but the installation must be run manually.

To verify that nvm has been installed, do:
<br />```$ command -v nvm```.
<br />```$ nvm --version```.
<br />Note: On Linux, after running the installation script, if you get nvm: command not found or see no feedback from your terminal after you type in ```command -v nvm```, simply close your current terminal, open a new terminal, and try verifying again.

If your installation method just downloaded the **script file**:
<br />Verify the file:
<br />```$ nano install_nvm.sh```.
<br />Before installing nvm, make sure that you are using bash as your shell, instead of Zsh. Just type in 'bash' to switch to it.
<br />```$ bash```.
<br />Do it every time you need to use nvm or node commands. Anyway, any new terminal defaults to Zsh, unless you change the shell configuration.
<br />Reference:
<br />Guide: Zsh
<br />Install nvm:
<br />```$ bash install_nvm.sh```.
<br />We don’t need sudo here because nvm is not installed into any privileged system directories. It will, instead, install the software into a subdirectory of your home directory at **~/.nvm**. It will also add some configuration to your **profile** file to enable the new software.
<br />To gain access to the nvm functionality, you’ll need to either **log out** and **log back in** again or source the **profile** file so that your current session knows about the changes:
<br />```$ source ~/.profile```.

Verifying the installation:
<br />As a result of the installation, the script clones the nvm repository to **~/.nvm**, and attempts to add the source lines from the snippet below to the correct **profile** file: **~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc**. That file will contain the next piece of code:

```bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

```

With nvm installed, you can **install isolated Node.js versions**. 
<br />For information about the versions of Node.js that are available, type in:
<br />```$ nvm ls-remote | more```.
<br />The list of too so long, so I decided to install the **latest LTS version**. (From the Official website: Latest LTS Version: **14.17.5** (includes **npm 6.14.14**)):
<br />```$ nvm --help```.
<br />```$ nvm install --lts```.

OUTPUT EXAMPLE FOR THE NVM VERSION v0.39.1:

```log
Installing latest LTS version.
Downloading and installing node v16.14.2...
Downloading https://nodejs.org/dist/v16.14.2/node-v16.14.2-linux-x64.tar.xz...
######################################################################### 100.0%
Computing checksum with sha256sum
Checksums matched!
Now using node v16.14.2 (npm v8.5.0)
Creating default alias: default -> lts/* (-> v16.14.2)

```

OUTPUT EXAMPLE FOR THE NVM VERSION v0.34.0:

```log
Installing latest LTS version.
Downloading and installing node v14.17.5...
Downloading...https://nodejs.org/dist/v14.17.5/node-v14.17.5-linux-x64.tar.xz
##################################################################################################### 100.0%
Computing checksum with sha256sum
Checksums matched!
Now using node v14.17.5 (npm v6.14.14)
Creating default alias: default -> lts/* (-> v14.17.5)

```

Further steps:
<br />Usually, nvm will switch to use the most recently installed version. You can tell nvm to use the version you just downloaded by typing:
<br />```$ nvm use 10.16.2```.
<br />As always, you can verify the Node.js version currently being used by typing:
<br />```$ node -v```.

Output:

```log
v14.17.5
```

If you have multiple Node.js versions, you can see what is installed by typing:
<br />```$ nvm ls```.
<br />If you wish to default to one of the versions, type:
<br />```$ nvm alias default 10.16.2```.
<br />This version will be automatically selected when a new session spawns. You can also reference it by the alias like this:
<br />```$ nvm use default```.
<br />Each version of Node.js will keep track of its own packages and has npm available to manage them.

Removing Node.js:
<br />You can uninstall Node.js using apt or nvm, depending on the version you want to target. To remove versions installed from the Debian repository or from the PPA, you will need to work with the apt utility at the system level.
To remove either of these versions, type the following:
<br />```$ sudo apt remove nodejs```.
<br />This command will remove the package and the configuration files.
<br />To uninstall a version of Node.js that you have enabled using nvm, first determine whether the version you would like to remove is the current active version:
<br />```$ nvm current```.
<br />If the version you are targeting is not the current active version, you can run:
<br />```$ nvm uninstall node_version```.
<br />This command will uninstall the selected version of Node.js.
<br />If the version you would like to remove is the current active version, you must first deactivate nvm to enable your changes:
<br />```$ nvm deactivate```.
<br />You can now uninstall the current version using the above uninstall command, which will remove all the files associated with the targeted version of Node.js except the cached files that can be used for re-installation.

Update npm:
<br />```$ npm install -g npm```.

##### Keyboard Shortcuts

###### Run service and apps

Copy the file to the repository's root. Otherwise go to the file's directory.

Run App using the "app index" file:
<br />```$ bash```. <--- Exits to **Bash shell** if required!
<br />```$ node index.js```.

Run App using the "start" setup:
<br />```$ bash```. <--- Exits to **Bash shell** if required!
<br />```$ npm start```.

###### Install and manage packages

Install packages **GLOBALLY** (usually in **/usr/local/lib/node_modules**):
<br />```$ bash```.
<br />```$ npm install -g package1 package2 packagen```.
<br />```$ npm i -g package1 package2 [...]```.
<br />If the npm command doesn't work, use sudo:
<br />```$ sudo npm i -g package1 package2 [...]```.

Install packages **LOCALLY** in the **DEFAULT** section of the file **package.json** of the current project:
<br />```$ bash```.
<br />```$ npm install package1 package2 [...]```.
<br />```$ npm i package1 package2 [...]```.
<br />Old npm versions use a ```--save``` flag:
<br />```$ npm install package1 package2 [...] --save```.

Install packages in the **DEVELOPMENT** section of the file package.json of the current project:
<br />```$ bash```.
<br />```$ npm install package1 package2 [...] --save-dev```.
<br />```$ npm i package1 package2 [...] --save-dev```.

Display a package installations (global and local):
<br />For example, for a Gulp installation, type in:
<br />```$ gulp -v```.

Remove a package (also used before/to re-install it):
<br />```$ npm remove package3```.

###### Live Server

There are two alternatives: The live-server npm package and the VS Live Server Extension for VS Code.

Live Server npm installation:
<br />Topic: Information about the package:
<br />Web: https://www.npmjs.com/package/live-server
<br />Topic: Installation, usge, command line parameters:
<br />Web: https://github.com/tapio/live-server

Install it globally:

```shell
$ npm i -g live-server
```

Close and open VS Code to reload the package. Do the same with any terminal open to reload/source the configuration.

Run the live server from the VS Code Terminal like this, once in the path with index.html:

```shells
$ live-server .
```

Always type in `live-server .` in the terminal and type in the **filename url** or live-server does not work.

http://127.0.0.1:8080/ <-- It opens index.html.

http://127.0.0.1:8080/classes.html <-- It opens index.html.

More options on the GitHub resource.

Live Server Extension installation:

It's a totally independant option that adds an icon too run LIve Server on click.
This sections talk about the VS Code Extension "Live-Server":
<br />JavaScript Installation
<br />Vanilla JavaScript Debugging configuration

#### Code Runner

With COde Runner, you can run any code snippet or code file for multiple languages: C, C++, Java, JavaScript, PHP, Python, Perl, Perl 6, Ruby, Go, Lua, Groovy, PowerShell, BAT/CMD, BASH/SH, F# Script, F# (.NET Core), C# Script, C# (.NET Core), VBScript, TypeScript, CoffeeScript, Scala, Swift, Julia, Crystal, OCaml Script, R, AppleScript, Elixir, Visual Basic .NET, Clojure, Haxe, Objective-C, Rust, Racket, Scheme, AutoHotkey, AutoIt, Kotlin, Dart, Free Pascal, Haskell, Nim, D, Lisp, Kit, V, SCSS, Sass, CUDA, Less, Fortran, Ring, and custom command.

This section is a Code Runner **set-up for JavaScript**, which runs through **Node.JS**.
<br />Code Runner uses the **V8** from **Google** (Alphabet).

##### Code Runner Installation

Install the extension Code Runner, from Jun Han.

Test the node setup:
<br />After installing the extension, **verify that nodejs is installed**, to avoid any "node" error in the VS Code **OUTPUT** TAB, like this:
<br />Create a new **JS file** in the VS Code.
<br />It should work even without saving the file to the working directory.
<br />**Type in the next code** in the file:

```js
console.log("Hello World!");
```

Run the code using the ```TRIANGLE``` button **in the top right corner** of VS Code
The ```OUTPUT``` TAB should output the console message **"Hello World"**, like this:

```log
[Running] node "/home/esteban/Developer/google-homepage/tempCode-Runner-File.javascript"
Hello World!
```

Set up Node JS:
<br />OUTPUT ERROR:

```log
[Running] node "/home/esteban/Developer/JSLanguage/index.js"
/bin/sh: 1: node: not found

[Done] exited with code=127 in 0.023 seconds
```

The **extension** ```Settings```, accessed by clicking its ```Cogwheel```, has this **template** file for the **Code Runner Executor Map** config:

```json
{
    "code-runner.executorMap": {
        "javascript": "node",
        "php": "C:\\php\\php.exe",
        "python": "python",
        "perl": "perl",
        "ruby": "C:\\Ruby23-x64\\bin\\ruby.exe",
        "go": "go run",
        "html": "\"C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe\"",
        "java": "cd $dir && javac $fileName && java $fileNameWithoutExt",
        "c": "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt"
    }
}

```

That file is an internal VS Code file, named **settings.json**.
<br />The example corresponds to a MS Windows configuration.

If your VS Code file lacks the **Code Runner configuration**, you can **add the next custom basic section** to the file, **after the current last section** (that current last section will vary in every VS Code installation, depending on our specific extensions installed and settings):

```json
"code-runner.executorMap": {
  "javascript": "node",
  "typescript": "node -r ts-node/register"
},
"code-runner.clearPreviousOutput": true,

```

You require to modify the json if you want to use or stop using Code Runner with other languages or modify the option to clear the previous output.

You will also require to change the **node executable**, due to there is not any **default node** in your system, but **NVM** (read about my Node JS installation in this document).
<br />To find out the nvm node version currently running, on the terminal:
<br />```$ whereis node```.
<br />Or:
<br />Read the **Quokka.js** Extension installation (also in this document.)
<br />Remember that the **"node"** version used changes when we change the current node version with **NVM**. In particular cases, we would need to switch Node.JS back among its NVM versions, and/or come to change the **node path** in the Code Runner file **settings.json**.

This is a complete **settings.json** file version, that includes a complete custom basic **Code Runner Executor Map configuration** in the bottom of the file:

```json
{
    "tabnine.experimentalAutoImports": true,
    "tabnine.receiveBetaChannelUpdates": true,
    "liveServer.settings.donotVerifyTags": true,
    "workbench.iconTheme": "material-icon-theme",
    "prettier.enableDebugLogs": true,
    "workbench.editor.untitled.hint": "hidden",
    "terminal.integrated.defaultProfile.linux": "bash",
    "liveServer.settings.donotShowInfoMsg": true,
    "editor.fontFamily": "'Cascadia Code', 'Droid Sans Mono', 'monospace', monospace, 'Droid Sans Fallback'",
    "terminal.integrated.fontFamily": "'Fira Code'",
    "terminal.integrated.fontWeight": "normal",
    "editor.fontLigatures": true,
    "workbench.colorTheme": "Oceanic Next (dimmed bg)",
    "editor.tokenColorCustomizations": {
        "textMateRules": [
            {
                "name": "envKeys",
                "scope": "string.quoted.double.env,source.env,constant.numeric.env",
                "settings": {
                    "foreground": "#19354900"
                }
            }
        ]
    },
    "liveshare.anonymousGuestApproval": "reject",
    "liveshare.autoShareServers": false,
    "liveshare.allowGuestDebugControl": false,
    "liveshare.allowGuestTaskControl": false,
    "window.zoomLevel": 0,
    "editor.linkedEditing": true,
    "editor.suggestSelection": "first",
    "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
    "webvalidator.validateOnSave": false,
    "[javascript]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
    },
    "terminal.integrated.gpuAcceleration": "off",
    "code-runner.executorMap": {
        "javascript": "~/.nvm/versions/node/v14.17.5/bin/node",
        "typescript": "~/.nvm/versions/node/v14.17.5/bin/node -r ts-node/register"
      },
      "code-runner.clearPreviousOutput": true
}

```

Reload the VS Code to apply all the changes if it is necessary:
<br />```CTRL``` + ```ALT``` + ```P```, ```Reload Windows```

A correct **OUTPUT** will indicate that node is running, probably followed by coding errors:

Example 1, output with **"nvm"** in the tab **OUTPUT**:

```log
[Running] ~/.nvm/versions/node/v14.17.5/bin/node "/home/esteban/Developer/JSLanguage/index.js"
/home/esteban/Developer/JSLanguage/index.js:27

```

Example 2, complete output with **"node"** in the tab **OUTPUT**:

```log
[Running] node "/home/esteban/Developer/JSLanguage/Check Set-up Files/tempCodeRunnerFile.js"
Hello World
Hello World
Hello World
5

[Done] exited with code=0 in 0.088 seconds
```

Code Runner usage:
<br />Code Runner **is to run code, not to debug using breakpoints** because it skips the breakpoints. However, it **shows the code errors in the OUTPUT**.
<br />Code Runner is a must to develop JS files as fast as possible, because it **allows us to play highlighted code sections**. I will use the other tools for debugging, and we also have this website: <https://pythontutor.com/javascript.html#mode=edit>

How to play code sections:
<br />Highlight some lines, e.g. a JS log: 

```js
console.log("Prettier Test"); 
```

Run Code Runner, by using one these alternatives:
<br />A. Click on the ```Play``` button in the top right corner of the current file.
<br />B. Use shortcut ```Ctrl``` + ```Alt``` + ```N```.
<br />C. ```F1```, ```Run Code```.
<br />D. More options in the Extension information page.
<br />The output should show just **"Prettier Test"**, not all the **console.log()** logs.
<br />Stop Code Runner:
<br />A. Use shortcut ```Ctrl``` + ```Alt``` + ```M```.

How to take input from the user (JS prompt):
<br />Install prompt-sync (This is a LOCAL installation):
<br />```$ bash```.
<br />```$ npm install prompt-sync```.
<br />To test the npm package prompt-sync with Code Runner:
<br />Use this code (saved in a file ```inputprogram.js```):

```js
const prompt = require('prompt-sync')();

var fname = prompt("Enter your first name : ");
var lname = prompt("Enter your last name : ");

console.log("Your Full Name is",fname,lname);

```

After that, running Code Runner is not yet well configured to allow us to type in information in the tab **OUTPUT**, so:
<br />Go to ```Cogwheel``` > VS Code ```Settings```.
<br />Type in: ```run in terminal```.
<br />Go to the option ```Code-runner: Run In Terminal```.
<br />Toggle **ON** (check) the ```Checkbox``` option: ```Whether to run code in Integrated Terminal```.
<br />Press ```F1```, type in ```Reload window```.
<br />A new line will appear in the file **settings.json**:

```json
	"code-runner.runInTerminal": true
```

After that, executing **files with input prompts** such as **input-program.js** with Code Runner runs in a new **"Code Terminal"** in the tab **TERMINAL**, which is not bad, but you miss the colored output messages in the tab **OUTPUT**, and get confused the first time.
<br /> **These files with prompts can be run with Node** or **NPM** in a Node able shell VS Code Terminal, such our Zsh or Bash:

```shell
$ node input-program.js
```

References:
<br />Topic: Issue: command **code-runner.run** not found. The issue can be resolved, by reinstalling the extension.
<br />Web: <https://github.com/formulahendry/vscode-code-runner/issues/268>

Troubleshooting:
<br />After rebooting the computer the **extension stopped working**. 
<br />A workaround is reinstall the extension, and it resolves the issue.

References:
<br />Title: How to Run Javascript in Visual Studio Code on Windows 10 2021
<br />Video: <https://www.youtube.com/watch?v=x_2sYpk75Ic>
<br />Title: How To Run JavaScript Code Using Code Runner Extension in Visual Studio Code | VS Code Extension.
<br />Video: <https://www.youtube.com/watch?v=2fwOthpmj4M>

##### Keyboard Shortcuts

Play Code Runner:
<br />```Ctrl``` + ```Alt``` + ```N```.
<br />Stop Code Runner:
<br />```Ctrl``` + ```Alt``` + ```M```.

Those key bindings can be in conflict with others in VS Code, but they can be changed in the **Code Runner ```Settings```**. Also, the default VS Code can be changed.

#### Prettier

##### Prettier Installation

References:
<br />Title: 19. Setting up Prettier in VS Code
<br />Video: <https://m.youtube.com/watch?v=sCIiukYgSlU>

Install Prettier Extension from Prettier.

Prettier can be configured to **Format the file on save or whenever I want to run it** while working on the current file.
<br />I decided to run it when I want to, because I can also want to run other format extensions such as **TypeScript** and so forth.
<br />I will create a different file for every project, based my own **template file**.
<br />I can just create the configuration file **.prettierrc** and then edit it, but I will start using the extension command for that purpose:
<br />Press ```CTRL``` + ```SHIFT``` + ```P``` or ```F1``` and then type in: ```Prettier: Create Configuration File```
<br />The file .prettier has to appear in our workspace, in our project root's directory.
<br />The following is the content of the initial config file:

```json
{
  "tabWidth": 2,
  "useTabs": false
}

```

Edit the file and save it with the next content:

```json
{
    "singleQuote": true
}

```

Now we can type a code with double quotes and test if Prettier is changing it when we run it.
<br />For example:

```diff
- const hello = "Hello World";
  console.log(hello);
+ const hello = 'Hello World';
  console.log(hello);

```

We can also leave blank spaces, and verify that Prettier removes them on save, leaving just one. If we need two spaces just write a comment line (```"//"```) without text as a workaround.
<br />The extension removes ```TAB``` spaces by default.1

To format the file:
<br />Press ```F1``` or ```CTRL``` + ```SHIFT``` + ```P```, and then type in: ```Format Document With...``` and choose ```Prettier```.
<br />The file should be a JS one, in our case (but you can check the languages available in the extension page list). If you don't see the option to run, double-check the file extension to verify that the document type is supported by the extension.

To format the selection (highlighted code):
<br />Press ```F1``` or ```CTRL``` + ```SHIFT``` + ```P```, and then type in: ```Format Selection With...``` and choose ```Prettier```.

In case that you want to add more configuration to your config file .prettierrc, from their official website:
<br />Web: <https://prettier.io/docs/en/configuration.html>
<br />Web: <https://prettier.io/docs/en/options.html>

In case that you want to automate the formatting on save:
<br />Go to ```Prettier Extension```, ```Settings``` (The cogwheel icon).
<br />Type in ```Format on save```.
<br />Toggle ON the option:
<br />```Editor: Format on save```.
<br />```Format a file on save``` [...]
<br />Or you can go to the Settings options like this:
Click on the ```Cogwheel``` icon, select ```Setting```, search for the option ```File on Save```.
<br />Make sure that your ```Editor: Default Formatter``` field is ```not null``` but rather ```esbenp.prettier-vscode``` and that **all the languages below are ticked**.
<br />It can be setup globally and for the current project:
<br />```File``` > ```Preferences``` > ```Settings``` > search for ```default formatter```.

The **NPM package Prettier** is required by the **Prettier Extension** to work. Checkout the section **"ESLint"**, that covers the installation of **ESLint and Prettier to work together**. Aftet that, check the ESLint and Prettier configurations.

References:
<br />Web: <https://stackoverflow.com/questions/52586965/why-does-prettier-not-format-code-in-vs-code>
<br />File: TODO

##### Keyboard Shortcuts

TODO

#### ESLint

##### Prepare Node for ESLint

Run Node in the VS Code Terminal to access the **REPL** (Node shell):
Change the shell from **Zsh to Bash**:
<br />```$ bash``` <--- Exits to **Bash shell** if required!
<br />```$ node```
You will see the prompt in the command line interface:
<br />``` > ```
<br />Do math operations, for example:
<br />`2` `+` `1` (Press enter).
<br />
<br />NODE JS OUTPUT:

```js
> 3
>
```

END OF OUTPUT.

Exit to Bash from Node:
<br />Press ```CTRL``` + ```C``` **two times** to cancel and exit or ```CTRL``` + ```D``` to exit (also, switches back to a previous shell).
<br />Display all the node available: global variables, method, array, and all kind of stuff that belongs to node.
<br />Press ```TAB``` key.

Example:

```js
> String    // <---- and press TAB two times
```

OUTPUT: 
<br />Consists of all the methods properties for **String**.
<br />
<br />References:
<br />Title: 3. Running Javascript Outside the Browser
<br />Video: <https://www.youtube.com/watch?v=f-LtP2QI1w0&list=PLFFFwJ3iSLz_3MLceb0fnMtg6bMuuUhO7&index=3>

Run a JS file:
<br />File **index.js**:

```javascript
const hello = 'Hello World';
console.log(hello);

```
Run it by typing in:
<br />```$ node index.js```.
<br />
<br />OUTPUT:


```log
Hello World
```

END OF OUTPUT.
<br />
<br />References:
<br />Topic: More information on modules. For example, how to add modules with 'require()' to our JS files.
<br /> Title: 4. Using Modules 1 Core Modules.
<br />Video: <https://www.youtube.com/watch?app=desktop&v=vF6yUKV5HJ4&list=PLFFFwJ3iSLz_3MLceb0fnMtg6bMuuUhO7&index=4>

Example of the file index.js that includes importing three modules:
<br />File **index.js**:

```javascript
const fs = require('fs');
const http = require('http');
const url = require('url');

const hello = 'Hello World';
console.log(hello);

```

NPM (Node Package Manager):
<br />References:
<br />Topic: Official Packages website (Currently almost 800,000 packages are there).
<br />Web: <https://www.npmjs.com/>
<br />Search for express: <https://www.npmjs.com/search?q=Express>
<br />Search for React: <https://www.npmjs.com/package/react>

Create the **package.json** file:
<br />```$ bash```. <--- Exits to **Bash shell** if required!
<br />From the root directory of the project, to initialize npm in the project directory:
<br />```$ npm init```.
<br />
<br />PROMPT OUTPUT:

``` c
This utility will walk you through creating a package.json file.
// [...]
Fill in the prompt questions with next answers to complete the creation of the config/project file:
Questions:
package name: (google-homepage) google-homepage    // <--- Type the project's name and press enter.
version: (1.0.0)    // <--- Press Enter.
description: Build your own version of Google search page    // <--- Type in a desc and press enter.
entry point: (index.js)    // <--- index.js is the default press enter.
test command:    // <--- We are not running any test so press enter.
git repository: (<https://github.com/alvaroestebanherrera/google-homepage.git>)    // < --- The git repo appears automatically. If there is no remote repository just press enter.
keywords    // <--- Press enter.
author: Esteban Herrera    // <--- I am using the value user.name from the command '$ git config --list'.
license: (ISC)    // <--- Press Enter.
// [ . . . Here the program creates the resultant file. ]
Is this OK? (yes)    // <--- Press enter to confirm.

```

END OF OUTPUT.

Note: If you run `npm init` on existent repos with previous npm packages, you can use the existent file **package.json** to install/keep those previous versions. But, if you want to upgrade to a new **package.json** file you must remove the old file version and probably all the other node/npm files such as **package-lock.json** and the directory **node_modules**. That could force you to upgrade existent code accordingly, depending on your project's type and content.

To disable and/or remove a previous version of packages.json, package-lock.json, and node_modules :

```shell
$ mv package.json OLDpackage.json
$ mv package-lock.json OLDpackage-lock.json
$ mv node_modules/ OLDnode_modules/

$ rm -rf OLDpackage.json OLDpackage-lock.json OLDnode_modules/
```

This is a copy of the new file **package.json**, created with the command `npm init`:

```json
{
  "name": "google-homepage",
  "version": "1.0.0",
  "description": "Build your own version of Google search page",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/alvaroestebanherrera/google-homepage.git"
  },
  "author": "Esteban Herrera",
  "license": "ISC",
  "bugs": {
    "url": "https://github.com/alvaroestebanherrera/google-homepage/issues"
  },
  "homepage": "https://github.com/alvaroestebanherrera/google-homepage#readme"
}
```

END OF FILE.

References:
<br />Title: 15 Introduction to NPM and the package json File
<br />Video: <https://www.youtube.com/watch?app=desktop&v=Cqo8EvTv_0s&list=PLFFFwJ3iSLz_3MLceb0fnMtg6bMuuUhO7&index=15>

Normally, there are three **types of packages in Node**: the global, the regular dependencies and the dev dependencies. Now, we are going work with the dependencies and the dev dependencies.

Install packages:
<br />Slugify. It's a small tool that you can use to make more readable URLs.
<br />Install slugify:
<br />`$ bash`  <--- Exits to Bash shell if required!
<br />```$ cd PATH-TO-PROJECT-ROOT'S-DIR```
<br />```$ npm install slugify```
<br />This package is installed as a REGULAR dependency in a (new) dependencies section of the config file **package.json**:

```json
"dependencies": {
    "slugify": "^1.6.0"
  }

```

The old version of the command included a parameter to **indicate the package as a regular dependency**, but it is no longer necessary:
<br />```$ npm install PACKAGE --save```.
<br />The packages are put into the new directory **node_modules/**

Install **development dependencies**:
<br />Examples: A Debugger tool, code bundler like webpack, or a testing library.
<br />**They are not needed in production**, so our code not really depends on them.

Install nodemon:
<br />```$ npm install nodemon --save-dev```.
<br />The installation adds an entry to the (new) section dev of the config file **package.json:**

```json
 "dependencies": {
    "slugify": "^1.6.0"
  },
  "devDependencies": {
    "nodemon": "^2.0.12"
  }
}

```

**Nodemon** restarts node whenever we change some files in our working directory. It **helps to avoid restarting the (node) server every time when we changed the code**.

There are two types of installs of these packages (referring to **regular dependencies** and **dev dependencies**.)
<br />So far, we have installed two packages (and their dependencies) **LOCALLY**. They are in node_modules/. They are not gonna work somewhere else (outside the project.) We can also run packages **GLOBALLY**.

Global installation.
<br />Allow a package to be available elsewhere, globally.
<br />Install Nodemon as a global dependency (so it can be used in every project):
<br />```$ npm install nodemon --global```.
<br />Or use this shorthand:
<br />```$ npm i nodemon --global```.
<br />If the command doesn't work, type it with sudo:
<br />```$ sudo npm i nodemon --global```.

Nodemon's usage:
<br />Start the node service normally:
<br />```$ node index.js```.
<br />Stop the service normally (after a change in the code):
<br />```CTRL``` + ```C```.
<br />Start the service using Nodemon:
<br />```$ nodemon index.js```.
<br />The service will be listening. It will restart **on SAVE** (```CTRL``` + ```S```).

To start the nodemon service as a script:
<br />Modify the section script of the file **package.json** from this:

```json
"scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },

```

to this:

```json
"scripts": {
    "start": "nodemon index.js"
  },

```

Now, to start the listener service **GLOBALLY**, type:
<br />```$ npm run start```.
<br />Or use this:
<br />$ npm start
<br />To stop the service use:
<br />```CTRL``` + ```C```.

Global Listener Service OUTPUT example:

```log
Debugger listening on ws://127.0.0.1:38939/c1a27e69-58e8-4efb-b2aa-005df978403d
For help, see: https://nodejs.org/en/docs/inspector
Debugger attached.

> google-homepage@1.0.0 start /home/esteban/Developer/google-homepage
> nodemon index.js

Debugger listening on ws://127.0.0.1:43811/a998621f-1a82-48fb-b709-51b27b551ba6
For help, see: https://nodejs.org/en/docs/inspector
Debugger attached.
[nodemon] 2.0.12
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,json
[nodemon] starting `node index.js`
Debugger listening on ws://127.0.0.1:34345/29c97d9a-f277-46c4-bf34-7064cb7c8b28
For help, see: https://nodejs.org/en/docs/inspector
Debugger attached.
Hello World
Waiting for the debugger to disconnect...
[nodemon] clean exit - waiting for changes before restart
^CWaiting for the debugger to disconnect...
Waiting for the debugger to disconnect...

```

References:
<br />Title: 16 Types of Packages and Installs
<br />Video: <https://www.youtube.com/watch?app=desktop&v=ct3h6Q0OAew&list=PLFFFwJ3iSLz_3MLceb0fnMtg6bMuuUhO7&index=16>

##### ESLint Installation

Install the ESLint extension.
<br />Create the ESLint config file **.eslintrc.json** and set up its content.
<br />File **.eslintrc.json**:

```json
{
  "extends": ["airbnb", "prettier", "plugin:node/recommended"],
  "plugins": ["prettier"],
  "rules": {
      "prettier/prettier": "error",
      "spaced-comment": "off",
      "no-console": "warn",
      "consistent-return": "off",
      "func-names": "off",
      "object-shorthand": "off",
      "no-process-exit": "off",
      "no-param-reassign": "off",
      "no-return-await": "off",
      "no-underscore-dangle": "off",
      "class-methods-use-this": "off",
      "prefer-destructuring": ["error", { "object": true, "array": false }],
      "no-unused-vars": ["error", {"argsIgnorePattern": "req|res|next|val" }]
  }
}

```

Install the **ESLint** packages and the **Prettier** packages to use ESlint for **scanning constantly your code** and find **potential errors** or simply **bad coding practices** that it thinks are wrong, and Prettier for **code formatting**. We have to **install the packages locally, every time for every project**. It all doesn't work globally, so we need to install these npm packages again for every project:
<br />```$ bash``` <--- Exits to **Bash shell** if required!

```shell
$ npm install eslint prettier eslint-config-prettier eslint-plugin-prettier eslint-config-airbnb eslint-plugin-node eslint-plugin-import eslint-plugin-jsx-ally eslint-plugin-react --save-dev
```

We have to make sure that the packages have been installed.
<br /> The output is going to guide us through the steps to debug the installation.
<br /> In my case I had two installation errors, so the installation stopped. I had to install those packages separately and then run the rest of the packages in a new version of the previous command and the installation worked, like this:
<br />``` $ npm i eslint-plugin-jsx-a11y --save-dev``` <--- This did not want to install together with the other packages.
<br /> ```$ npm i eslint-plugin-react-hooks --save-dev``` <--- This package was logged as a optional dependency.

```shell
$ npm install eslint prettier eslint-config-prettier eslint-plugin-prettier eslint-config-airbnb eslint-plugin-node eslint-plugin-import eslint-plugin-react --save-dev
```

In case that you installed unwanted packages, or mistakenly installed dev packages as global packages you can uninstall them by running:
<br />```$ npm remove package```.
<br />The updated version of the file **package.json** file properly created would look like this:

```json
{
  "name": "google-homepage",
  "version": "1.0.0",
  "description": "Build your own version of Google search page",
  "main": "index.js",
  "scripts": {
    "start": "nodemon index.js"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/alvaroestebanherrera/google-homepage.git"
  },
  "author": "Esteban Herrera",
  "license": "ISC",
  "bugs": {
    "url": "https://github.com/alvaroestebanherrera/google-homepage/issues"
  },
  "homepage": "https://github.com/alvaroestebanherrera/google-homepage#readme",
  "dependencies": {
    "slugify": "^1.6.0"
  },
  "devDependencies": {
    "eslint": "^7.32.0",
    "eslint-config-airbnb": "^18.2.1",
    "eslint-config-prettier": "^8.3.0",
    "eslint-plugin-import": "^2.24.0",
    "eslint-plugin-jsx-a11y": "^6.4.1",
    "eslint-plugin-node": "^11.1.0",
    "eslint-plugin-prettier": "^3.4.0",
    "eslint-plugin-react": "^7.24.0",
    "eslint-plugin-react-hooks": "^4.2.0",
    "nodemon": "^2.0.12",
    "prettier": "^2.3.2"
  }
}

```

The last step is to **test/check the complete configuration using a JavaScript file**.
<br />Write a file **server.js** to verify that ESLint works well.
<br />Save the file.
<br />Remember to add the file to the current Workspace / Project.
<br />File **server.js**:

```js
const dotenv = require('dotenv');
dotenv.conf({ path: './config.env' });

const app = require('./app');

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`App running on port ${port}...`);
});

const x = 23;
x = 66;

```

ESLint should log its problems in the **Terminal TAB "Problems"** in VS Code.

Check the **OUTLINE** section of the VS Code Panels. The Items in **RED MEAN BIG ERRORS** pending to get resolved.
<br />All the errors will appear underlined in colors in the code window, and listed in the **TAB PROBLEMS** next to the **TAB OUTPUT** in the **TERMINAL window**.

<br />It could require pressing ```F1``` or ```CTRL``` + ```SHIFT``` + ```P```, and then run: ```Reload Window``` to make ESLint work. Otherwise, close the VS Code and reopen it and ESLint should work.

All the files we don't want ESLint to verify, have to be in the file **.eslintignore**. For example:
<br />File **.eslintignore**:

```eslint
# /js/google.com.js
Developer-Environment.md
server.js
```

Finally, let's test Prettier:
<br />Open the file **index.js** with errors.
<br />Modify the file to be able to check that **the program finishes without errors**, otherwise Prettier is not going to work. Actually it starts but can't finish. You can test it, by clicking on the button `"Prettier"` in the status bar ad then verifyin the output.
<br />Select/highlight any console.log **with double quotes**.
<br />Make right click on the highlighted text.
<br />Select the option `Format Selection With...`
<br />Select the option: `Prettier - Code Formatter`
The action should replace the **double quotes** with **single ones**.
<br /> The same action can be done with the option `Format Document With...`

This is a working modified copy of the original file **index.js**. You can **use it to verify that Prettier is working**:

```js
const hello = 'Hello World';
console.log(hello);


                            console.log("Hello World");

                                        console.log("Hello World");


                                      // Ligatures   ==  === =/= <= <= >= =>

/**
 * Addition
 */ 
        let nun = 2;

        let numb = 3;
        
        let res = nun + numb;
        
        console.log(res)

/** Comment out next to run the file using node, etc **/

/*
        Bracket pair colorization:

        (((()))) ()()

        [[[[]]]] [][][]

        {{{{{{{}}}}}}}
*/

/* End of file */

```

References:
<br />Title: 60. Setting up ESLint + Prettier in VS Code
<br />Video: <https://m.youtube.com/watch?v=ilNl5RnB_tI>

<br />Topic: This is an alternative installation from Wes Bos. It implies to know the version of every package installed, and differs. I can rescue some points or steps from it. Also, make my own version to be able to replicate the exact installation in other computers using the custom installation file.
<br />Title: ESLint + Prettier + VS Code — The Perfect Setup.
<br />Video: <https://m.youtube.com/watch?v=lHAeK8t94as>

Topic: I require to adapt my basic installation to this when I work with React (bootstrapping.)
<br />Title: Add ESLint & Prettier to VS Code for a Create React App.
<br />Video: <https://m.youtube.com/watch?v=bfyI9yl3qfE>

##### Keyboard Shortcuts

TODO

#### JavaScript

##### JavaScript Installation

Visual Studio Code is built using web technologies on top of **GitHub's Electron**. Electron is an app runtime for writing native apps that uses **Chromium** (which Google **Chrome** is built on) for rendering the interface and for **Node (Node.JS)**.

**Node uses Google's V8 JavaScript engine** for language implementation. New language features in Node depend on them being implemented first in V8. The V8 project pushes forward steadily and the team releases a new version roughly every six weeks.

Also, you use V8 when you use the extension **Code Runner** (because it uses Node JS to work.)

You also use V8 when you use the **Live Server** with **Chrome** and **Edge**.

You don't require installing JS related packages individually, but here is a list
of the JS and JavaScript related **DPKG packages** currently installed on a particular system just for reference:

List for the command ```$ dpkg -l | grep "JS"```:

```js
ii  gir1.2-json-1.0:amd64                         1.6.2-1                          amd64        GLib JSON manipulation library (introspection data)
ii  libcpanel-json-xs-perl                        4.25-1+b1                        amd64        module for fast and correct serialising to JSON
ii  libijs-0.35:amd64                             0.35-15                          amd64        IJS raster image transport protocol: shared library
ii  libjansson4:amd64                             2.13.1-1.1                       amd64        C library for encoding, decoding and manipulating JSON data
ii  libjcat1:amd64                                0.1.3-2                          amd64        JSON catalog library
ii  libjson-c5:amd64                              0.15-2                           amd64        JSON manipulation library - shared library
ii  libjson-glib-1.0-0:amd64                      1.6.2-1                          amd64        GLib JSON manipulation library
ii  libjson-glib-1.0-0:i386                       1.6.2-1                          i386         GLib JSON manipulation library
ii  libjson-glib-1.0-common                       1.6.2-1                          all          GLib JSON manipulation library (common files)
ii  libjson-maybexs-perl                          1.004003-1                       all          interface to the best available JSON module
ii  libyajl2:amd64                                2.1.0-3                          amd64        Yet Another JSON Library
ii  lua-json                                      1.3.4-2                          all          JSON decoder/encoder for Lua
ii  python3-jwt                                   1.7.1-2                          all          Python 3 implementation of JSON Web Token
ii  ruby-json                                     2.3.0+dfsg-1+b3                  amd64        JSON library for Ruby

```

List for the command ```$ dpkg -l | grep "JavaScript"```:

```js
ii  gir1.2-javascriptcoregtk-4.0:amd64            2.36.0-3~deb11u1                 amd64        JavaScript engine library from WebKitGTK - GObject introspection data
ii  javascript-common                             11+nmu1                          all          Base support for JavaScript library packages
ii  libjavascriptcoregtk-4.0-18:amd64             2.36.0-3~deb11u1                 amd64        JavaScript engine library from WebKitGTK
ii  libjs-jquery                                  3.5.1+dfsg+~3.5.5-7              all          JavaScript library for dynamic web applications
ii  libjs-sphinxdoc                               3.4.3-2                          all          JavaScript support for Sphinx documentation
ii  libjs-underscore                              1.9.1~dfsg-3                     all          JavaScript's functional programming helper library
ii  libmozjs-78-0:amd64                           78.4.0-2                         amd64        SpiderMonkey JavaScript library

```

References:
Topic: How to check if Node.js supports ES6 language feature
<br />Web: <https://bytearcher.com/articles/how-to-check-if-node-implements-es6-language-feature/>

##### Add Debugging Breakpoints in VS Code

Add Debugging Breakpoints:
<br />**Breakpoints** are red dots I can **add next to the lines numbers** in the **editor window**.
<br />When you **click on a Chrome page element** that triggers code that goes to the line of the breakpoint, then it goes away from Chrome, comes over to VS Code and hits right at that breakpoint.
<br />The ```Debugging control``` buttons appear.

##### Vanilla JavaScript Debugging configuration

<br />Open any HTML file with JS or JS file, for example, **index.html**.
<br />Click ```Debug``` icon.
<br />Click the **BLUE** button ```Run and Debug```.
Select Environment ```Chrome```. It opens **launch.json**, a configuration file you set up to define so where this *"thing"* is going to run.
<br />Change to the current **Live Server** from **8080** to ```port=5500```.
<br />**Live Server** extension must be installed and running.
<br />Click on the little ```"Play"``` button captioned ```Launch Chrome``` in the top left corner. It is going to open the JS App in Chrome.
<br />Now, you are able to debug the JS App inside VS Code.

Note: You can remove configurations to, for example, start this configuration from from a scratch, by removing the existent setups from the **file to launch the browser** and the **workspace file**. The **BLUE** button `Run and Debug` will appear again in the *DEBUG* section of VS Code.

It is strongly recommended that you use the current active Node.JS to make sure that your debugger is working. If you don not want to use Node.js to debug, you could install a new VS Code JS Debugger Extension, such as the Microsoft's debugging extension for JavaScript. To show a list of debugging extensions, type in `@category:debuggers JavaScript` in the **extensions field**.

To make sure that the debugger is working using Node.js:
<br />Add a working modified copy of the original file **index.js** used in the set up of **Prettier**.
<br />Add **two** `debugging breakpoints` in the **first and the second lines** of the code.
<br />Click ```Debug``` icon.
<br />Click on the `dropdown` beside the **"Play" button** beside **"RUN AND DEBUG"**.
<br />Choose the option `Node.js...` and then choose `Run Current File index.js`.
<br />Again, click on the `dropdown` beside the **"Play" button** beside **"RUN AND DEBUG"**
<br />Choose the option `Run Current File` to run the application's code.
<br />Click on the `Play` **button** beside **"RUN AND DEBUG"**. The debugger should stop the execution at the first line and display the other debugger buttons and 
**highlight the first line of code** and its breakpoint.

To debug Step Over, click the ```Step Over``` button.
<br />To debug with Step Into, click the ```Step Into``` button.
<br />To inspect variables, click the ```Play``` Button.

While debugging, you can see the section **CALL STACK** for the ```Debug``` icon, which has the functions that we called. You can use the file "server.js" for that purpose.

A copy of the file **server.js** added to the root of the project.

```js
const dotenv = require('dotenv'); // <---- This will throw the first error in the DEBUG CONSOLE, and the execution will stop.
dotenv.conf({ path: './config.env' });

const app = require('./app');

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`App running on port ${port}...`);
});

const x = 23;
x = 66;

```

Go to `VS Code Terminal` > **`DEBUG CONSOLE`** to see the **errors thrown** when running the file: **server.js**

```js debug console
Uncaught Error Error: Cannot find module 'dotenv'
Require stack:
- /home/esteban/Developer/JSLanguage/server.js
    at Module._resolveFilename (node:internal/modules/cjs/loader:933:15)
    at Module._load (node:internal/modules/cjs/loader:778:27)
    at Module.require (node:internal/modules/cjs/loader:1005:19)
    at require (node:internal/modules/cjs/helpers:102:18)
    at <anonymous> (/home/esteban/Developer/JSLanguage/server.js:1:16)
    at Module._compile (node:internal/modules/cjs/loader:1105:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1159:10)
    at Module.load (node:internal/modules/cjs/loader:981:32)
    at Module._load (node:internal/modules/cjs/loader:822:12)
    at executeUserEntryPoint (node:internal/modules/run_main:77:12)
    at <anonymous> (node:internal/main/run_main_module:17:47)

```

##### To debug Step Over (Step Over Button)

To debug Step Over (Step Over Button):
<br />Once in the **breakpoint**, press the button ```Step Over```, so we can go through line by line and see what's going on.
<br />E.g.: It is used on "TRUE" debugging to debug IF statements.

##### To debug with Step Into (Step Into Button)

To debug with step into (Step Into Button):
<br />After some steps we are **at a function**.
<br />We can click on the button ```Step Into```.
<br />Step Into **will go inside that function** and go through or allow us to go through line by line here.
<br />E.g.: **reset()** <--- Function.

##### To inspect variables (Play Button)

To inspect variables (Play Button):
<br />Look for the section **SCRIPT** in the left side box of the icon ```Debug```.
<br />Actually, you can see all the different elements that you have created inside your JavaScript inside the script of the JS file.
<br />Choose one of the **variables** and click on the ```Plus``` ```(+)``` little icon next to **WATCH**, so you can watch for that "thing".
<br />In the section **WATCH**, type in the **new piece of code** that you want to watch, for example: ```toggleBtn```.
<br />Click on the Debugger button ```Play``` the times required to check out the behavior of the variable during the execution of the debugger, or in other words, the debugging of the program, under the section **WATCH**.
<br />Example of the WATCH output (after stepping over from a breakpoint):

```log
toggleBtn: not available

```

After watching out, I can see that there is a typo in the code in the line:

```log
[...]
toggleBtn.classlist. contains('toggled')) {
[...]

```

The correction of the error would be removing the blank space after **'classlist.'**
<br />
<br />Inspecting variables like this is opposed to check for DOM elements (to see if classes are being applied) using **RIGHT-CLICK** on the HTML ```element``` and then selecting the option ```Inspect``` from the contextual menu in the Chrome Browser.

##### Debugging JavaScript file script using different methods

###### Creating a new Javascript Debug Terminal

```F1```, > ```Debug: Create Javascript Debug Terminal``` or ```Javascript Debug Terminal```.
<br />The code will not run unless your default shell is **Bash**.
<br />Set up a breakpoint next to a line number.
<br />Breakpoints appear as red dots.

You can default to **Bash** on a system's terminal and then reload the VS Code until it shows primarily Bash in its terminal. Change the Default Terminal from Zsh to Bash using the ```Terminal``` menu ```Configure Terminal Settings```.
If you don't want to change the default shell from **Zsh** to **Bash**, the only alternative is Debugging JavaScript script using **node** or **npm** in the **Terminal**.

For all the methods, let's assume that the JS App file is open in the editor and has breakpoints created.

###### The Button F5 method

Press `F5` runs what is set up for the button `"Play"` under the **"Run and Debug"** section of the side panel of VS Code. This method does not require to open the Javascript Debug Terminal, at least for the option `Run Current File`.

###### Method: Debug: Debug npm Script with a Javascript Debug Terminal

Open a new Javascript Debug Terminal
<br />```F1``` to select the way to run the debugger.
<br />Type in: > ```Debug: Debug npm Script``` to open a **Debug Terminal**.

###### Method: Run Code, with a Code Terminal

The command sequence is:
<br />```F1```, type in `Run Code` will run the code using a new **Code** Terminal instead of a **JavScript Debug Terminal**.

###### Method: node or npm in a Javascript Debug Terminal or in a Terminal

Run one of the debug commands on the current Terminal. The alternative options are:
<br />Run node (Runs and terminates the program):
<br />```$ node index.js```.
<br />Or use:
<br />Run npm (Runs and listens constantly for new changes to update):
```$ npm start```
```CTRL``` + ```C```, ```CTRL``` + ```C```. These are used to stop listening and come back to the **Bash** prompt.
Remember to use the breakpoints and the stepping pop up menu that appears, in order to debug the program.

###### Method: nodemon in a Javascript Debug Terminal or in a Terminal

It is the same node or npm, but **node will keep listening**, to react to typing changes.
<br />It also **pauses in the breakpoints**, so you can read the **PROBLEMS** and **TERMINAL** outputs and read and modify the code before press the ```play``` button to continue the script execution.
<br />```$ nodemon index.js```
<br />References:
<br />Debugging Node JS
<br />Node JS
<br />Node JS Installation
<br />Prepare Node for ESLint
<br />Or:
<br />Find out the keywords 'Install nodemon' or 'Nodemon's usage' in this document.

###### Method: Code Runner

Code Runner **is to run code, not to debug using breakpoints** because **it skips the
breakpoints**. However, **shows the code errors in the OUTPUT**.

<br />References:
<br />Sections:
<br />Code Runner
<br />Code Runner Installation

###### Method: How to Debug a minified JS files

TODO

<br />Title: VS Code tips: debugger pretty print for minified JavaScript files.
<br />References:
<br /><https://www.youtube.com/watch?app=desktop&v=ShiXsfIDAxc>

#### Babel

##### Babel Installation

Install the **vscode-language-babel** extension and follow the instructions.
<br />It is highly recommended using this syntax highlighting with a theme that supports it, for example, **Oceanic Next**.

There seems to be one other way to get the syntax highlighting working, and you can learn more about it in the Visual Studio Code docs. **The alternative is JavaScript Projects (jsconfig.json)**.

References:
<br />Web: <https://babeljs.io/docs/en/editors>

#### JavaScript Projects (jsconfig.json)

A **jsconfig.json** file defines a JavaScript project in VS Code. While jsconfig.json files are not required, you will want to create one in cases such as:

- If not all JavaScript files in your workspace should be considered part of a single JavaScript project. jsconfig.json files let you exclude some files from showing up in IntelliSense.
- To ensure that a subset of JavaScript files in your workspace is treated as a single project. This is useful if you are working with legacy code that uses implicit globals dependencies instead of imports for dependencies.
- If your workspace contains more than one project context, such as front-end and back-end JavaScript code. For multi-project workspaces, create a jsconfig.json at the root folder of each project.
- You are using the TypeScript compiler to down-level compile JavaScript source code.

To define a basic JavaScript project, add a **jsconfig.json** at the root of your workspace.

**jsconfig.json** example 1:

The use for the absolute path in your project i.e.: adding NODE_PATH in your .env will be deprecated, in favor of setting baseUrl in either **jsconfig.json** or **tsconfig.json**

To fix this, you can add **jsconfig.json** or **tsconfig.json** in your root directory and set the **baseUrl** as **src**.

```json
{
  "compilerOptions": {
    "baseUrl": "./src"
  }
}

```

**jsconfig.json** example 2:

```json
{
  "compilerOptions": {
    "module": "commonjs",
    "target": "es6"
  },
  "exclude": ["node_modules"]
}

```

More info on how to set up the file jsconfig.json:
<br />Web: <https://code.visualstudio.com/Docs/languages/javascript#_javascript-projects-jsconfigjson>

#### Markdown

##### Markdown Installation

TODO

##### Keyboard Shortcuts

<br />Open Preview next to the Editing View:
<br />```CTRL``` + ```SHIFT``` + ```V```.

View the Preview side by side with the file:
<br />```F1```, ```Markdown: Open Preview to the Side```.
<br />You will see the changes reflected in real time as you edit.

Go to a Markdown element from the Preview:
<br />```Double Click``` any ```element``` in the **Preview**.

Show snippets for Markdown:
<br />```CTRL``` + ```SPACE```.
<br />You get a context specific list of suggestions.
<br />You can also add user defined snippets.

Bold words and text:
<br />Select the word using ```double click``` or ```highlight``` the portion of text to be **bold faced**.
<br /> Press ```SHIFT``` + ```8``` ( " * " ) **two times**.
<br /> The seleted word or text will get 2 asterisks at the beginning and 2 more at the end.
<br /> The text style will be bold face.

Italicize words and text:
<br />Select the word using ```double click``` or ```highlight``` the portion of text to be **italicized**.
<br /> Press ```SHIFT``` + ```8``` ( " * " ) **three times**.
<br /> The seleted word or text will get 3 asterisks at the beginning and 3 more at the end.
<br /> The text style will be italic.

###### Install Markdown extensions

Install the VS Code extensions suitable for your project.
<br />This is a complete list or a Mardown only Workspace:
<br />Markdown Preview GitHub Styling.
<br />Markdown Preview Mermaid Support.
<br />GitHub Markdown Preview.
<br />Markdown All in One.
<br />markdownlint.
<br />LTeX - LanguageTool gramamr/spell checking (works with Markdown.)
<br />Code Spell Checker.

###### Compile Markdown into HTML

Compiling Markdown into HTML:
<br />```$ bash```.
<br />```$ npm install -g markdown-it```.
<br />... more steps ...

Notice that this is just a way to **export to HTML**. The same goal can be achieved using programming languages such as **Python** or even commands like ```$markdown```, of the DPKG package **Markdown**.

Automating the compilation of Markdown files:
<br />```$ bash```.
<br />```$ npm install -g gulp```.
<br />```$ npm install gulp gulp-markdown-it```.

Display the package Gulp installations (global and local):
<br />```$ gulp -v```.

Run the Gulp Default Task when the Task is ready:
<br />```F1```, ```Run Task```, select ```gulp: default``` from the pick list to start the task.

Make the task `gulp: default` the default build task executed when pressing `CTRL` + `SHIFT` + `B`:
<br />`F1`, `Configure Default Build Task`, select `gulp: default` from the presented list.

Terminate the `gulp: default` task:
<br />`F1`, `Terminate Task` from the global Terminal menu.

**Run tasks** have different levels of configuration automation. E.g.: You can **run the Gulp Default Task without scanning the output for compile problems**, in case of you just want to export from Markdown to HTML. Steps:

1. `Run task` from the global Terminal menu.
2. Select `gulp: default`.
3. Select `Never scan the build output`.

#### TypeScript

##### TypeScript Installation

TODO

##### Keyboard Shortcuts

TODO

References:
<br />Web: <https://code.visualstudio.com/docs/languages/typescript>

#### Advanced-new-file

`F1`, `New file`, select the `workspace's root`, Press `Enter`,
Type in the `name of the new file` or `path to and the file name`.
<br />E.g:
**<br />/path/to/file.rb**

Default Keyboard Shortcut (Modifiable in Keyboard Bindings):
<br />`CTRL` + `ALT` + `N`.

#### Angular Snippets (Version 12)

Pieces of code for Angular programming.

#### Auto Rename Tag

Automatically **renames paired HTML/XML tag**, same as Visual Studio IDE does.
<br />When you rename one HTML/XML tag, automatically rename the paired HTML/XML tag. E.g.:

```html
<diverr> 
// Lots of content here
</diverr>

```

#### AWS CLI Configure

Commands Palette:
<br />`F1`, `AWS`.

The extension adds commands for the following:

Open **'credentials'** file.
<br />Open **'config'** file.
Open **'credentials'** & **'config'** files.
<br />Browse the online docs.
<br />Show **[named]** **profile** mapped to **[default]** in **'credentials'**.
<br />Set **'credentials' [default]** **profile** to...
<br />Copy **profile** name from **'credentials'**...

#### Better Comments

Better Comments:
<br />It colors notes by putting a symbol before the comment line, like this:

```js
/**
 * My Method
 * * Important information is highlighted
 * ! Deprecated method, do not use
 * ? Should this method be exposed in the public API?
 * TODO: refactor this method so that it conforms to the API
 * @param myparam The parameter for this method
*/

```

#### Bracket Pair Colorization

The colorization exists as a extension yet, but it is also an option enabled by default from VS Code version 1.67. Go to settings and type: pair colorization and uncheck the option to disable it.

A fast way to go directly to the options is:
- Open settings
- Put this text string in the search bar:
@id:editor.bracketPairColorization.enabled @id:editor.guides.bracketPairs
- Activate of deactivate Pair Colorization.

E.g.:
<br />Highlights the pair in the code.

```html
    (((()))) ()()    
  [[[[]]]] [][][]
{{{{{{{}}}}}}}
<<<<asdf>>>> <<<<<<>>>>>> <br>

```

```javascript
    (((()))) ()()    
  [[[[]]]] [][][]
{{{{{{{}}}}}}}
<<<<asdf>>>> <<<<<<>>>>>> <br>

```

#### Character Count

TODO

#### Clean CSS for VSCode

Compress CSS files using Clean CSS optimizer.
<br />Quickly format using different presets, in the editor context menu.
<br />Use `Clean CSS: Format Document` command (Shift+Alt+F) to format using user settings.

Use:
<br />`F1`, `Clean CSS: Format Document` command (`Shift` + `Alt` + `F`) to format using user settings.
<br />Or:
<br />**Right click**, and then **choose the option to format/clean up CSS**.

#### Cloak

It will take a **.env** file, so if you use it to have your environmental variables, and they are private, and you don't want people to see those, you can ```turn on``` **Cloak**, and it will **hide those things from everybody that is watching**. It is useful if you are presenting on stage, if you are steaming on Twitch or YouTube, if you record screencast of your code.

Open a **.env** file.
<br />Press `F1` to open the command palette.
<br />Type `Cloak`.
<br />Choose `Cloak: Hide Secrets`.

#### Cobalt2 Theme Official

Another VS Code Icon Theme.
<br />Search for 'Cobalt 2 theme' in the Marketplace.
<br />`F1`, Type in: `theme`, **scroll down** to the `color theme`, for example `Shades of Purple`.

#### Code Spell Checker

TODO

#### css-auto-prefix

Auto fills selector attibutes with specific browser engines prefixes.
for example, for box-shadow.
-web-kit-...
-moz-transfor...
gecko...

#### CSS Peek

`CTRL` + `hover` to view a hover image of your CSS from within your HTML file.

Open the **CSS file**:
TODO

```css
#custom {text-color: red;
}

```

```html
<h1 id="custom">Hello World!<h1>

```

#### debian-vscode

A Visual Studio Code extension adding syntax highlighting **support for Debian packaging files**.

#### Django

Highlight that code.

#### DotUML VSCE

The **diagram generation (SVG)** from the pseudocode is handled entirely locally, without any call for web services. Thus, all your data remains local on your computer.
<br />Export to SVG or PNG images.
<br />DotUML generates the following UML diagrams:
<br />Use Case
<br />Sequence
<br />Class
<br />State
<br />Deployment
<br />Graphviz*

#### Draw.io VS Code Integration

Edit **.drawio**, **.dio**, **.drawio.svg** or **.drawio.png** files in the Draw.io editor.
<br />To **create a new diagram**, simply **create** an empty *.drawio, *.drawio.svg or *.drawio.png file and open it.
<br />If you open the draw.io editor to the right side (i.e. the second editor column) and navigate to a symbol, the diagram will stay visible.

#### EditorConfig for VS Code

Attempts to **override user/workspace settings** with settings found in **.editorconfig** files. It can be used by teams.

TODO

#### Error Lens

ErrorLens turbo-charges language diagnostic features by making diagnostics stand out more prominently, highlighting the entire line wherever a diagnostic is generated by the language and also prints the message inline.
<br />Features:
<br />Highlight lines containing diagnostics.
<br />Append diagnostic as text to the end of the line.
<br />Show icons in gutter.
<br />Show message in status bar.

#### ES7/React/Redux/GraphQL/React-Native snippets

It is one of the most powerful extensions to work with those technologies.

TODO

#### Formatting Toggle

TODO

#### GitHub Copilot

TODO

#### GitLens
GitLens supercharges Git inside VS Code and unlocks untapped knowledge within each repository. It helps you to visualize code authorship at a glance via Git blame annotations and CodeLens, seamlessly navigate and explore Git repositories, gain valuable insights via rich visualizations and powerful comparison commands, and so much more.

#### Gitmoji
Choose meaninful emojis for commits from VS Code 🎉️ 👽️ 💅️

#### heroku-cli

This is **command line help** for **developer to run heroku nodejs** command by VS Code and with **key shortcut**.

#### html tag wrapper
Highlight/Select a piece of code and press CTRL + i to put it inside
Example: <li>text to put inside tag</li>

#### Import Cost

Help you import the things you really need, in your import('...') code lines.
<br />Calculates the size of imports and requires.
<br />Supports both Javascript and Typescript.
<br />E.g.:

```JavaScript
const Func = require('utils').Func;
```

References:
<br />Topic:TODO: Verify Require.js and Common.js.
<br />Web: <https://requirejs.org/docs/node.html>

#### Indent-Rainbow

This extension colorizes the indentation in front of your text **alternating four different colors** on each step.

#### Intellisense for CSS class names in HTML

List the CSS classes available in order for a class we are working on
inside the HTML file.

#### Javascript (ES6) code snippets
Semicolon for line ends, JS snippets sucha as functions, etc.

#### Kite AutoComplete AI Code

TODO

#### Live Share

It allows me to share my code live with someone so that we can have like a live **peer programming** session **remotely**. We could be across the world, we could share code, we could talk through code, we could do all the things right with this Live Share extension.

Extension advantages:
<br />It allows to:
<br />Allow people work on code at the same time.
<br />You can see the PIN of the prompt of the other person working on code ...
<br />You can teach, walk through code, peer debugging, participate of code review sessions.

Installation:
<br />Click on `Install` on the Extension.

Setting it up:
Authorize Visual Studio Code to access GitHub.
`Sign in` using your **GitHub** account.

Start a collaboration session:
<br />Sing in with GitHub (from VS Code).
<br />`F1`, `Live Share:`, **scroll down**, select `Start Collaboration Session (Share)`.
<br />Copy the link given.
<br />Send the link to the collaborator or to another VS Code instance running in another computer system.
<br />In the remote machine:
<br />`F1`, `Live Share: Join Collaboration Session`.
<br />Sign in with the GitHub account.
<br />Authorize the auth process.
<br />`F1`, `Live Share: Join Collaboration Session` (we repeat this step because this is the first time for both VS Code editors in different computers getting to know each other.)
<br />**Paste** the **link copied/emailed**, Press `Enter` key.
<br />**Accept**, by clicking on `yes`, the dialog to **kill the terminal**:
<br />Click on the `Cogwheel` icon, then on `Settings`, type in: `terminal kill`, click on `yes`.
<br />If I want to, I can set up the option to **avoid confirmation dialogs**.
<br />
<br />Resources:
<br />Find out: Set up the option to avoid terminal confirmation dialogs.

#### Live Share Audio

Participants within a Live Share session can **automatically join the call**, and **chat amongst each other**, without needing to first coordinate which voice communication tool to use. For **certain use cases** (e.g. **online training/mentoring**, **hack-a-thons**), this can dramatically help **reduce the barriers for collaboration**.

#### Live Share Gatekeeper

**In particular**, this extension allows you to **prevent Live Share guests from joining a collaboration session that aren't members of the same domain/AAD tenant**. This prevents anonymous users, users outside your organization, or users outside **a specified** set of domains (e.g. microsoft.com) from being able to collaborating with you, regardless if they got access to the session URL.

#### Live Share Pomodoro

By default, the pomodoro uses the **standard settings**, which can be fully customized to meet your preferences.
See Extension for Details.

#### Material Icon Theme

Another VS Code Theme.

#### Multi Color Bookmarks FlowWise (MCB)

You can easily **Mark/Unmark bookmarks** on any position. You can even define Labels for each bookmark. The extension has its own **Side Bar**, with a variety of commands to **improve you productivity**.

Add a bookmark for a flow using commands:
<br />`F1` or `CTRL` + `SHIFT` + `P`, type: `Add Bookmark`, select `MCB: Add Bookmark`.

Add quick bookmarks:
<br />Press `CTRL` + `J` (Windows).
<br />`CMD` + `J` (Mac).

Edit a bookmark, like to change the flow name (Bookmark Color) or index or even bookmark name:
<br />Click on `pencil while hovering on any bookmark or any flow`.

#### MySQL

Extension's keyword: "mysql".
<br />Author: cweijan.
<br />This project is a database client for VSCode, supports manager MySQL/MariaDB, PostgreSQL, SQLite, Redis, ClickHouse, 达梦, and ElasticSearch, and works as an SSH client, boost your maximum productivity!
<br />With this, you can do almost the 90% of what you can do with tools like phpmyadmin.

To Execute a SQL Query:
<br />In the Database Explorer panel, click the Open Query button.
<br />That will open a SQL editor, which a bunch of features:
<br />IntelliSense SQL edit.
<br />Snippets: sel, del, ins,upd, joi...
<br />Run selected or current cursor SQL (Shortcut : Ctrl+Enter).
<br />Run all SQL (Shortcut : Ctrl+Shift+Enter).

Note: The extension is developed using Nodejs. Nodejs does not allow duplicate name attributes, so you need to avoid columns with the same name in your query, otherwise the results will not be displayed in full.

#### NeoVimSync

**NeoVimSync** syncs Visual Studio Code recent files to Neovim's recent list.
<br >The recent list will be updated after the files in vscode have been saved. Viewing the files won't update the recent list.

#### Nest Comments

To trigger the extension, highlight the text that should be commented/uncommented.
<br />This extension will maintain your original comments and allow you to quickly toggle comments on sections of code.
<br />Default Keybindings:
`CTRL` + `ALT` + `/`.

#### open in browser

Right click on a HTML file and select which browser to open it.

### Path Intellisense

Path autocompletion.

#### Polacode

Take "photos" of your code.
<br />`F1`, `Polacode`, press `ENTER/RETURN` key.
<br />Polaroid frame appears side by side.
<br />Select code text to take the "photo" to. Copy the code text:
`CTRL` + `C`.
<br />Paste the text copied into the Polaroid frame:
<br />`Hover over` the frame, `RIGHT CLICK`, select option `Paste`.
<br />**Stretch** the polaroid **frame** accordingly.
Press the take Polaroid button below the Polaroid frame.
<br />Give the Polaroid **file a name** and then **save it**.

#### Pomodoro

The extension creates items in:
<br />`Command Palette`: `Pomodoro Start/Pause` and `Pomodoro Reset`.
<br />**Statusbar (and its tooltip)**: with custom texts from settings.
**Notifications:** with custom texts from settings.
<br />Settings: Available settings below.

#### PurgeCSS

This requires node to work, and there is not any extension (yet?).
<br />We should install it to use it through its CLI.
<br />Installation:
<br />You can either install PurgeCSS as a dev dependency and use the CLI with npx, or you can install PurgeCSS globally.

References:
<br />Topic: I wrote a complete guide step by step for this.
<br />File: How to (methods to) clean up HTML, CSS and JS, remove comments and minify their code files.txt
<br />Section: 2.2. Remove unused CSS with PurgeCSS.

#### Python

TODO

#### Quokka Statusbar Buttons

Quokka `start` and `stop` buttons for the **status bar**.

#### Quokka.js

Quokka.js shows the results of the JS code next to the code text in the same Window, and also shows the results in the OUTPUT TAB of the Built-in Terminal.
<br />It requires **Node JS** as a prerequisite to work.
<br />First of all, install the Extension.
<br />The most common situation is that if you run a file with the default configuration, the extension won't be able to locate the Node JS.
<br />Identify the current **Node JS executable location**. In my case, I installed NVM, and know that mine is a local user installation, so I found the **.NVM/** installation directory at **home**. Otherwise, You should look for a **global, system installation**, make sure that Quokka.js works with it or look for its **executable path**.
<br />Add the custom Node executable path to default Quokka.js **configuration file**.
<br />File **~/.quokka/config.json**:

```json
{"pro":false,
"node": "~/.nvm/versions/node/v14.17.5/bin/node"
}

```

Note: 
<br />Change the file in case of that you have changed the ***CURRENT*** node version from NVM.
<br />
<br />Run a **JS file** to make sure that Quokka.js is up and working.

```js
/**
 * Addition
 */ 
let nun = 2;
let numb = 3;
let res = nun + numb;
console.log(res)

const hello = 'Hello Mom';
console.log(hello);

```

Running the Quokka.js commands:
<br />`F1`, `Quokka.js: Start on Current File`.
<br />`F1`, `Quokka.js: New JavaScript File`.
<br />`F1`, `Open Start View`.

References:
<br />Topic: Node.js configuration
<br />Web: <https://quokkajs.com/docs/configuration.html#nodejs-version>

Install and use the Quokka browser plugin:
<br />It requires the plugin **JSDOM**:
<br />`$ bash`.
<br />`$ npm install -g`.
<br />Notes:
<br />It can be installed **globally** or by project.
<br />It is used by Quokka to be able to access JS code with HTML. E.g.:

```js
// Display the sum of 5 + 10, using two variables: x and y.
var x = 5;
var y = 10;
document.getElementById('demo').innerHTML = x + y;
console.log(x + y);

```

References:
<br />Topic: Quokka.js shows the option and link to go to follow the steps to install the JSDOM:
<br />Web: <https://quokkajs.com/docs/configuration.html#jsdom>

#### Remote Development

The Remote Development extension pack allows you to **open any folder** in a **container**, on a **remote machine**, or in the **Windows Subsystem for Linux (WSL)** and take advantage of VS Code's full feature set.

Extensions:
<br />Remote - Containers.
<br />Remote - SSH.
<br />Remote - WSL.

Related Extensions:
<br />Remote - SSH: Editing Configuration Files.
<br />Remote - WSL: Recommender.

#### Remove Comments

**Remove all comments from your code at once!** Unclutter and undocument your code in one go!
<br />This extension does not 'uncomment' the comments present in the code, but removes them completely altogether.
<br />Options:
<br />Remove All Comments.
<br />Remove All Multiline Comments.
<br />Remove All Single Line Comments.
<br />Remove Line Comment.
<br />Use:
<br />Once installed, remove comments in your code by opening the command palette (Ctrl+Shift+P), entering "Remove all comments" and pressing enter.

#### SASS

https://sass-lang.com/
<br />Learn Sass guide:
<br /><https://sass-lang.com/guide>
<br />I have a directory "Sass guide" with examples in a Bootcamp docs.
<br />Install NPM:
<br />`$ node --version`
<br />`$ npm --version`
<br />Global installation (this is not only in the project):
<br />`$ npm install -g sass`
<br />`$ sass --version`
<br />Install SASS VS Code Extensions:
<br />After the installation of Sass and the VS Code Extension SASS, install the extension Live Sass Compiler. This second extension is unnecessary if you use the option watch of the command sass, so it is optional.
<br />Use live-server (terminal) or Live Server (VS Code Extension)

Steps to setup Sass properly in a project:
<br />Create the src/ directory and files:
<br />Add `<link rel="stylesheet" href="">` wiithout ref to index.html
<br />In the VS Code Terminal:
<br />`$ cd /path/to/src`
<br />`$ touch style.sass`
<br />Write a selector, e,g.:

```css2
$color: green;

h1 {
  color: $color;
  }

```
<br />Save file changes
<br />Syntax: sass --watch ORIGIN DESTINY
<br />`$ sass --watch style.sass style.css`
<br />You get the sass error due to the selector, not sass lang
<br />You get the new mapping file **style.css.map**
<br />`CTRL` + `C` to stop watching
<br />Change the **style.sass** extension to **style.scss**
<br />Watch using the scss extension in ORIGIN
<br />`$ sass --watch style.scss style.css`
<br />Add the CSS file to index.html:
<br />`<link rel="stylesheet" href="./style.css">`

Run Live Server Extension for VS Code or live-server to monitor changes, for example the <h1></h1> content in blue:
cd path/to/website/root
`$ live-server .`

Notes:
**style.sass** or **styles.scss** <-- One of this. It is the file transpiled (not compiled) into css by Sass. Use .scss to be able to use css like syntax instead of sass syntax with tabs.
Source-to-source compiler:
Web: <https://en.wikipedia.org/wiki/Source-to-source_compiler>

Watch appears as an eye icon you can activate/deactivate in the status bar in VS Code. However I am using the command line instead of the VS Code Extension.

Some Topics:
@use is equivalent to @import in css. Rename files to import with underscore, for example, **_embedding.scss**, and then add it in the **style.scss** file, in the beginning, like:
`@use 'embedding.scss';`
Save changes to make that the **_embeding.scss** is been load as a module.
Add .scss .sass and .map files to **.gitignore**

Video:
Aprende SASS en 15 Minutos
<https://www.youtube.com/watch?v=BtiiM3jeb_c>

#### Settings Sync

It saves all of the customizations that you've done inside your VS Code into a **chest inside of GitHub**. It takes all your **snippets, settings, extensions, configurations, Shortcuts**.
<br />You can **sync** your settings file with **other instances of VS Code** in other computers.
<br />Steps:

1. Install the Extension.
2. Verify that it is turned on by clicking on my (`Avatar` / `Account` icon).
3. `F1`, `settings Sync Turn Off`.  <------ You have to turn it OFF. The word **"settings"** is case-sensitive! (At least the first time you type the command.)
4. Open your **"Settings"** Window: Click on the `Cogwheel` icon, and Select **"Settings"**.
5. You will see the button ```Turn On Settings Sync```, in the **top right corner**. Its color depends on the VS Code Theme.
6. Click on the `button` to **Turn it On**.
7. The **input text bar** is going to ask what **settings** you are going to **sync**.
8. Check every `checkbox` to sync everything.
9. Click on `Sign In & Turn ON`.
10. You'll either have to `login` with your **Microsoft's or GitHub's account** (Check out the **account status** clicking on the `Account` icon).
11. You can **show your synced data** (the word **"settings"** is case-sensitive, at least the first time you type in the command): `F1`, `settings sync`, select `show Synced Data`.
<br />**A new tab** for the Account will show the **sync Activity**, and another one the **synced machines**.
12. I can **choose which machines** with instances of VS Code **sync or not**, using the button `Turn On/Off`.

Note: This extension is not required, since VS Code now has the sync to GitHub function integrated.

#### Shades of Purple

Another VS Code Theme.

#### shell-format

TODO

#### ShellCheck

TODO

#### Snippets

Snippets make it easier to enter repeating code, such as loops, complex HTML structures or reusable methods.
<br />This extension **does not use the built-in VS Code support for snippets**.

Verify that Snippets are syncing to the Cloud (MS or GitHub accounts):
<br />Click on the **Cogwheel** icon.
<br />The option `Sync is On` must be `checked`.
<br />**Right-Click** on the Snippets Extension:
<br />The option `Sync this extension` must be `checked`.

References:
Topic: VS Code Settings synchronization.
<br />Web: <https://code.visualstudio.com/docs/editor/settings-sync>

#### SQL Server (mssql)

It is an extension for developing Microsoft SQL Server, Azure SQL Database and SQL Data Warehouse everywhere with a rich set of functionalities.

TODO

#### SQLTools

Some feature provided by SQLTools:
<br />Beautifier/Formatter.
<br />Query runner, history and bookmarks.
<br />Connection explorer.
<br />Query generators (INSERT only).

Supported Drivers:
<br />Read the extension information.

#### Spanish Language Pack for Visual Studio Code

Change the VS Code Language to Spanish (Menus, settings, etc.)

#### Strip-css-comments

This package can be used in production and also out of production but using its CLI.
<br />Remove CSS comments with strip-css-comments-cli:
<br />CLI Installation:

```shell
$ npm install --global strip-css-comments-cli
```

References:
<br />Topic: I wrote a complete guide step by step for this.
<br />File: How to (methods to) clean up HTML, CSS and JS, remove comments and minify their code files.txt
<br />2.3. Remove CSS comments with strip-css-comments.

#### Tailwind CSS IntelliSense

Has code completion and suggest a list f of classes you can use
while working on classes in your HTML.

#### Thunder Client

A Lightweight Rest API Clietn Extension for VS Code, such as Postman (and
it could be used instead of it).
Also checkout: RESTED (for Firefox), and JSON Formatter (Chrome/Firefox) 
Here in this topic, mention AXIOS for used for APIs with React, and its npm installation.
AXIOS:
https://axios-http.com/docs/intro

Using npm:
$ npm install axios

#### Timer

Once you open Visual Studio Code, an element **in the bottom right of your IDE** will appear, showing the **current time that has elapsed**.

#### Todo Tree

Show TODO, FIXME, etc. comment tags in a tree view.

#### Tokyo Night

A VS Code theme.

#### Vetur

Vue tools extension

#### Visual Studio IntelliCode

The Visual Studio IntelliCode extension provides **AI-assisted development features** for **Python**, **TypeScript/JavaScript** and **Java** developers in Visual Studio Code, with insights based on understanding your code context combined with machine learning.

#### Visual Studio IntelliCode Insiders

This **Insider's extension** offers Visual Studio Code developers a chance to **try out new and experimental features first**, and give their valuable feedback.

#### VS Live Share Mob Timer

The Live Share host and guests alike can **modify the timer and keep track of driver rotation**. When the timer runs out of time all Live Share participants are focused on the timer tab to coordinate rotating out the mob driver.

#### VSCode Neovim

Neovim is a fork of VIM to allow greater extensibility and integration. It is not recommended due to the integration is not full. You can use another extension, **NeoVimSync**, to Sync Visual Studio Code recent files to Neovim's recent list.

References:
Getting Started with Vim in Visual Studio Code:
Web: <https://m.youtube.com/watch?v=h-epcklOC_g>

How to use Vim in Vscode with EasyMotion | Config File in description:
Web: <https://m.youtube.com/watch?v=1mt2f3NXR2k>

VSCode with embedded Neovim:
Web: <https://m.youtube.com/watch?v=g4dXZ0RQWdw>

VSCode extension in the marketplace:
Web: <https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim#conditional-initvim>

#### VSCode Sequence Diagrams

Turns **text into UML sequence diagrams** (which look like drawing).
<br />Topic: This page contains its simple syntax.
<br />Web: <https://bramp.github.io/js-sequence-diagrams/>

#### Vscode-fileheader-git

TODO

#### Vscode-ts-uml

Dynamically generates **TypeScript UML diagrams** to Visual Studio Code.

#### Vue Theme

VS Code then for Vue

#### Word Statistics for text

TODO

#### Zoom Bar

Can zoom via GUI in status bar.
<br />The Keyboard Shortcuts are:
<br />Zoom In:
<br />`CTRL` + `=`.
<br />Zoom out:
<br />`CTRL` + `-`.

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension

#### Technology / Extension
