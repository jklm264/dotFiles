First Downloads

1. [Firefox](https://www.mozilla.org/en-US/firefox/)
2. iTerm2 `$brew install iterm2 zsh`
3. Brew (will take a long time) `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
   - Permission issue: `sudo chown -R $(whoami) /usr/local/Cellar`
4. oh-my-zsh `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
5. dotfiles to zshrc
6. Install brews: `brew install $(<brews.list)`
   - and `brew install gnu-sed --default-names`
7. pyradio
    - `git clone https://github.com/coderholic/pyradio.git; cd pyradio; git fetch --all --tags --prune; git tag`
    - `git checkout tags/<latest> -v <latest>`
    - `devel/build_install_pyradio`
8. `python3 -m pip install ipython`
