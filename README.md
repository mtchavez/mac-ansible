# mac-ansible

Personal mac setup provisioned through Ansible

## Requirements

* Latest Xcode
* Pip (installed in setup script if missing)
* Ansible (installed in setup script if missing)
* Homebrew (installed in setup script if missing)

## Installation

Simply cloning this repository and running `make` is all that is required.
Doing so will install pip, ansible, and homebrew as they are all required
to provision.

The `mac-osx.yml` playbook is then ran to provision everything.

## Roles

Some roles are tied directly to my personal setup. If you are using this you could
remove these roles from the `mac-osx.yml` playbook or override variables to get
your own personal setup.

### Vimfiles

Currently this role pulls my vimfiles repository and runs an install command. You
could override specific variables here to point to your own vim repo and run a
different install command to get your own setup.

### Dotfiles

Same thing here as with the vimfiles role. It will pull from a repository and run
an install command to setup any dotfiles or profile specific files.

### Docker

This role will take the liberty of installing a view essential docker tools such
as machine, compose and swarm. It will also set up a default `dev` machine using
virtualbox to use where the swarm image will also be pulled.

## Caveats

* Certain apps do not like being symlinked and ran from outside of `/Applications`
  so this requires removing the symlink and copying the cask install `.app` file
  to the `/Applications` directory.

* I've seen the docker-machine creation of the dev machine hang on the install script
  so this may be an issue when first provisioning a fresh machine.
