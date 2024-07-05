# Custom Windows 11 CMD

## Setup

- Download this [github repository](https://github.com/c2y5/CustomWin11CMD/archive/refs/heads/main.zip)
- Extract it to a folder

## Install Fonts

- Open the "FONTS" folder and select all the fonts and right click, click "install"

![image]()

-

## Powershell Setup

- Open terminal and press control + , to open settings
- Click "Open JSON file" at the bottom left corner

![image]()

- Scroll down and find the "schemes" part

![image]()

- Open "settings.json" in the PS folder and copy its content

  - Paste it into the end of the schemes section as such

  ![image]()

  - Make sure there is a "," on the previous line (line 365 on the image)

- Select the Powershell profile & scroll down to find the appearance tab

![image]()

- Select "Sonokai Shusia" in the color scheme (you may have to restart terminal)

![image]()

- In the font face select "MesloLGM Nerd Font"

![image]()

- Press Save

### Powershell Setup - Install Oh-My-Posh

In a new **POWERSHELL TERMINAL** run the command:

```
winget install JanDeDobbeleer.OhMyPosh
```

Once its done run

```ps
notepad $PROFILE
```

You may be required to click create new file. Paste this line into the text:

```ps
oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/powerlevel10k_rainbow.omp.json | Invoke-Expression
```

Save the file and restart terminal

# OPTIONAL - WINFETCH

Open a new **POWERSHELL TERMINAL** and run the following command:

```ps
Install-Script -Name pwshfetch-test-1
```

then run

```ps
notepad $PROFILE
```

and paste the following at the end of the file:

```ps
Set-Alias winfetch pwshfetch-test-1
```

Restart terminal and type `winfetch`

# CMD Setup

Download the latest release of [clink](https://github.com/chrisant996/clink/releases)

Make sure you select all the components as follows:

![image]()

Navigates to the folder `C:\Program Files (x86)\clink` and paste the `oh-my-posh.lua` file from the `CMD` folder

If you do not have `winfetch` installed from above step, paste the `oh-my-posh-no-winfetch.lua` instead.

Restart cmd and it should auto inject