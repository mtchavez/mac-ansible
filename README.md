# mac-ansible

Personal mac setup provisioned through Ansible

## Requirements

* Latest Xcode
* Pip (installed in setup script if missing)
* Ansible (installed in setup script if missing)
* Homebrew (installed in setup script if missing)

## Installation

- Clone repository
- Run `make` to bootstrap the dependencies needed
- Run `./script/provision mac-osx.yml`
  - Any args to script are passed to the `ansible-playbook` command
  - E.g. running only tasks tagged with `brew` `./script/provision mac-osx.yml --tags brew`

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

## Caveats

- Uses homebrew installed python, setup with bootstrap script, to run ansible commands.
