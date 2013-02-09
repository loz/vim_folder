My Vim Folder.

Has a number of submodules, so when cloning, remember to clone as so:

    git clone --recursive git://git@github.com:loz/vim_folder.git`

If you forget, and end up with empty submodule folders, then:

    git submodule init
    git submodule update
