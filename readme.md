# Git Hooks

A collection of Git hooks to make your development life easier.

The collection includes:

- `post-commit`: automatically creates version tags based on the `package.json` version. Great for helping to ensure you're importing and reporting the correct package version. 


## Add to project (one time)

To add this module to a project, run the following once:

```
git submodule add https://github.com/florey-health/git-hooks.git hooks
# install it
hooks/install.sh
```

*Please note:* it is important to use the HTTPS version of the module, as Heroku will otherwise be unable to import it.


## Installing (during cloning)

When a project contains this repo as a submodule, it won't take effect until it is installed.

To install it, run the following once:

```
# Ensure submodule is pulled down
git submodule update --init --recursive
# Copy scripts into .git/hooks
hooks/install.sh
```

You will also need to install it if the repo is updated:

```
# pull down a remote change
cd hooks
git pull
cd ..

# reinstall
hooks/install.sh
```