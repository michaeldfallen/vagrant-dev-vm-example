#IER Development VM

Simple dev vm for the IER projects.

##Requirements

- Locally checked out versions of the IER repos
- [Vagrant installed](http://docs.vagrantup.com/v2/installation/)
- [Virtualbox installed](https://www.virtualbox.org/manual/ch02.html)

##Usage

- Clone the various IER repos into your local environment e.g. ier-frontend, ier-api, etc
- Set environment variables in your shell to point to those locations e.g. 
```
export IER_FRONTEND=~/Projects/gds/ier/ier-frontend
export IER_API=~/Projects/gds/ier/ier-api
export IER_SMOKETESTS=~/Projects/gds/ier/ier-smoke-tests
```
- vagrant up
- vagrant ssh
