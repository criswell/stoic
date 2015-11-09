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

I'm always surprised more people haven't heard of GNU Stow, it's so terribly
useful. If you need an introduction to it, please see the GNU Stow
[website](https://www.gnu.org/software/stow/) for documentation, or see my
overview [here](WHAT_IS_STOW.md).

# Managing your Website with Stow and a DVCS

This example/tutorial uses the files in this repo and their layout. In order
to follow along, you probably want to clone it locally so you can peruse the
files more easily.

## Init your site repo

To start, you will want to initialize your site's repo using whatever DVCS you
choose. For example, if I were wanting to use the directory name `sites` for
my repo, and I were using Mercurial, I'd use the following command:

```
$ hg init sites
```

Next, you will want to add the `deploy` and `undeploy` scripts. They can be
found in the root of this tutorial's repository. These scripts manage the
deployment and undeployment (respectively) of the sites in your site repo.

```
$ cd sites/
$ cp ~/stoic/deploy .
$ cp ~/stoic/undeploy .
$ hg add .
$ hg commit -m "Adding deploy/undeploy scripts"
```

`deploy` and `undeploy` are simple convenience scripts which wrap the GNU Stow
commands as well as allow for custom, site-specific, code execution on startup
and shutdown. We'll return to this in a bit.

## Create basic layout of your sites

Now, you want to create the basic layout for your site or sites. You do this
in the base of your repository. For example, let's assume we wanted to create
a site called "sample", that our server ran [Apache](http://www.apache.org/),
and that we wanted our site's files to go to subdirectories under `/var/sites`.
We would create the following layout inside our repository:

```
sites/sample/
sites/sample/etc
sites/sample/etc/apache2
sites/sample/etc/apache2/sites-enabled
sites/sample/usr
sites/sample/usr/local
sites/sample/usr/local/bin
sites/sample/var
sites/sample/var/sites
sites/sample/var/sites/sample
sites/sample/var/sites/sample/www
```

This layout could be created with the following three commands run from the
root of our repository:

```
$ mkdir -p sample/etc/apache2/sites-enabled
$ mkdir -p sample/usr/local/bin
$ mkdir -p sample/var/sites/sample/www
```

You'll notice we have three, basic, locations for things:

* `etc/apache2/sites-enabled` is where we will place our configuration file
for this site.
* `usr/local/bin` is where we will place the startup/shutdown scripts for this
site.
* `var/sites/sample/www` is where we will place the site's HTML/CSS and other
files.

## Configure your site

Again, assuming we're using Apache, our configuration might look something
like the sample config included in this tutorial's repo:

* [sample.foo.bar.conf](sample/etc/apache2/sites-enabled/sample.foo.bar.conf)

sites/sample/etc/apache2/sites-enabled/sample.foo.bar.conf
sites/sample/etc/apache2/sites-enabled/sample.foo.bar.conf
