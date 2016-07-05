==================
docker-clojure-vim
==================

Opinionated example setup for using Clojure with Vim.  This is not about good practices of
Docker or about Linux (please don't use a root account for coding).

Build and run the container (see the `Makefile` for instructions).


Vim plugins
===========

TODO


Lein plugins
============

TODO


Possible workflow
=================

Run the container::

    # create a new lein project
    lein new xxx
    cd xxx

    # start a new tmux session
    tmux new

    # start vim (will take short while to read the project)
    vim

In Vim start a console (this will download the deps)::

    :Console

Switch back to Vim in Tmux (e.g. `CTRL-B,n`); open the core file
(Tab-Completion works here)::

    :Emain xxx/core

Open a new Tmux window (e.g. `CTRL-B,c`); start::

    lein test-refresh

You should now see a short notification about the failed test.  Go back to
your Vim window.  Go to the test namespace::

    :A

Fix the test and save the file.
