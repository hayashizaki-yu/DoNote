# DoNote

"DoNote" is a highly functional and expandable notebook container for programmers.

## Features

| Features |    |
| ---- | ---- |
| Charge | Competely free |
| Saved in |  github repository |
|  Auto Save & Update |  〇  |
| Capacity  | 10GB |
| Programming Enviroment| Ubuntu-22.07<br> Python<br>Jupyter Notebook |
| Template  | 〇<br>Using VScode's code-snippets function |
| Device | All Docker and VScode-enabled devices |
| Markdown | 〇 |
| Media | All<br>Codes, Audio, Video, Image etc... |
| Security | △<br>If you keep the repository 'private', you don't have to worry about other people seeing it |
| Simultaneous Access | ×<br>Making changes from multiple terminals at the same time causes conflicts |

## Requirement

* Docker>=20.10.16
* Docker-Compose>=2.6.0
* VScode>=1.73.1
* Dev Container>=0.264.0
* git

## Installation

1. Download [Docker-Desktop](https://www.docker.com/products/docker-desktop/) and setup
2. Download [VScode](https://azure.microsoft.com/ja-jp/products/visual-studio-code/) and setup
3. Download [Remote Development](https://code.visualstudio.com/docs/remote/remote-overview#_getting-started) in VScode
4. Download [Git](https://git-scm.com/downloads) and setup

5. Clone this repository

```bash
git clone https://github.com/hayashizaki-yu/DoNote.git
```

6. Open this folder with VScode
   * Click "files" in the upper left corner of VScode screen
   * Click "Open folder"
   * Select this folder

7. Open Container with Dev container
   * Click "><" icon in the lower left corner of VScode screen
   * Select "Reopen in container"
   * Initially it takes a while to start up

8. Execute 'setup' command
   * Open terminal and type 'setup'
   * Then you follow the instruction

```bash
setup
```

9. restart VScode
   * Initially, VScode extention for python will not be installed
   * You can resolve this problem by restarting VScode

## Usage

### Auto Save

  * You can save notes to github repository automatically by typing 'login'
  * You can also do this manually

```bash
login
save "message"
```

### Update

  * You can pull notes from github repository at login by typing 'login'
  * You can also do this manually

```bash
login
update "message"
```

### Template

  * 'template' directory is special.
  * Files stored in this directory can be recalled at any time as templates.
  * After saving the file in template directory, type 'template' to update the settings.
  * Then, you can use ctrl+space to recall the template at any time.

```bash
template
```

## License
"DoNote" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
