Distressed Emacs Color Theme
============================

Installation
------------

First, be sure that the Emacs color theme package is
installed. Activate the color theme package by placing the following
in your Emacs configuration:

    (require 'color-theme)
    (color-theme-initialize)

Next, place color-theme-distressed.el in a directory accessible to
Emacs; you can tell Emacs where to find the theme with the
configuration line:

    (add-to-list 'load-path "/path/to/color-theme-distressed/")

Finally, enable the theme with

    (color-theme-distressed)