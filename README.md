# GNU Stow as a Website Management Tool

This repository shows you how to use [GNU Stow](https://www.gnu.org/software/stow/)
and any [DVCS](https://en.wikipedia.org/wiki/Distributed_version_control) to
manage multiple websites. It's intended to serve as a tutorial and example.

* Package-management-like control over your web-sites. Cleanly "install" and
"uninstall" them with simple commands.
* Easily deploy updates via the DVCS of your choice.
* Maintain a history of changes via DVCS.
* Have the ability to rollback your changes easily.
* Easily backup your sites using DVCS.

## Requirements

* Unix-like system that supports [symlinks](https://en.wikipedia.org/wiki/Symbolic_link)
* Bash
* [GNU Stow](https://www.gnu.org/software/stow/) (available as a package in
most, modern Linux systems)
* A DVCS (such as [git](https://git-scm.com/), [Mercurial](https://www.mercurial-scm.org/),
[bzr](http://bazaar.canonical.com/en/), [Fossil](http://www.fossil-scm.org/),
[Monotone](http://www.monotone.ca/), [Darcs](http://darcs.net/), etc.

## What is GNU Stow?

For an overview of GNU Stow, please see their [website](https://www.gnu.org/software/stow/)
for documentation, or see my overview [here](WHAT_IS_STOW.md).

