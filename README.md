My Vim Configuration
====================

Using vundle of gmarik

Installation
-------------

1. Backup of your vim configuration

        $ mv ~/.vim ~/.vimold

2. Clone repo

        $ git clone git@github.com:javaguirre/dotvim.git ~/.vim

3. Create symlinks

        $ ln -s ~/.vim/vimrc ~/.vimrc

4. Install vundle

        $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

5. Install vim bundles (defined in .vimrc file as Bundle "git_repo")

        $ vim

        (Inside vim)
        :BundleInstall

6. Enjoy!
