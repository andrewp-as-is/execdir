[![](https://img.shields.io/badge/OS-Unix-blue.svg?longCache=True)]()
[![](https://img.shields.io/pypi/v/execdir.svg?maxAge=3600)](https://pypi.org/project/execdir/)
[![](https://img.shields.io/npm/v/execdir.svg?maxAge=3600)](https://www.npmjs.com/package/execdir)
[![Travis](https://api.travis-ci.org/looking-for-a-job/execdir.svg?branch=master)](https://travis-ci.org/looking-for-a-job/execdir/)

<b>run command from multiple directories</b>

#### Install
```bash
$ [sudo] npm i -g execdir
```
```bash
$ [sudo] pip install execdir
```

#### How it works
1.  create list of directories
2.  run command

#### Config
`$XDG_CONFIG_HOME/execdir` by default - `~/.config/execdir`

```bash
$ export EXECDIR=~/Library/execdir
```

#### CLI
```bash
usage: execdir command [args]

Available commands:
    add                     add directories to list
    clear                   clear list
    get                     print list(s) directories
    set                     set list directories
    run                     run command from list directories
    rm                      remove directories from list

run `execdir COMMAND --help` for more infos
```

#### Examples
set directories
```bash
# ~/git/owner/repo
$ find ~/git -type d -maxdepth 2 | execdir set all
$ find ~/git -name "setup.py" -maxdepth 3 | sed 's#/[^/]*$##' | execdir set pypi
$ find ~/git -name "package.json" -maxdepth 3 | sed 's#/[^/]*$##' | execdir set npmjs
$ find ~/git -name ".travis.yml" -maxdepth 3 | sed 's#/[^/]*$##' | execdir set travis
```

run command
```bash
$ execdir run pypi python setup.py sdist upload
$ execdir run npmjs npm publish
```

<p align="center"><a href="https://pypi.org/project/readme-md/">readme-md</a> - README.md generator</p>