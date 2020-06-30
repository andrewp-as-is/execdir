<!--
https://readme42.com
-->



[![](https://img.shields.io/badge/OS-Unix-blue.svg?longCache=True)]()
[![](https://img.shields.io/pypi/v/execdir.svg?maxAge=3600)](https://pypi.org/project/execdir/)
[![](https://img.shields.io/npm/v/execdir.svg?maxAge=3600)](https://www.npmjs.com/package/execdir)[![](https://img.shields.io/badge/License-Unlicense-blue.svg?longCache=True)](https://unlicense.org/)
[![](https://github.com/andrewp-as-is/execdir/workflows/tests42/badge.svg)](https://github.com/andrewp-as-is/execdir/actions)

### Installation
```bash
$ [sudo] pip install execdir
```

```bash
$ [sudo] npm i -g execdir
```

#### How it works
1.  create list of directories
2.  run command

#### Config
`$XDG_CONFIG_HOME/execdir` by default - `~/.config/execdir`

```bash
$ export EXECDIR=~/Library/execdir
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

<p align="center">
    <a href="https://readme42.com/">readme42.com</a>
</p>