# Git Hooks

A collection of Git hooks to make your development life easier.

The collection includes:

- `post-commit`: automatically creates version tags based on the `package.json` version. Great for helping to ensure you're importing and reporting the correct package version. 


## Add to project

To add this module to a project, the author needs to run the following once:

```
git submodule add git@github.com:florey-health/git-hooks.git hooks
```

If the hooks project is updated, you can update it in your own repo using the following:

Update submodule - required if this repo is updated:
```
cd hooks
git pull
```

Once added to a repo or updated, you will need to install it...


## Install in repo instance

Even when a project contain this repo as a submodule, it won't take effect until it is installed.

To install it, run the following after cloning the repo:

```
# Ensure submodule is pulled down
git submodule update --init --recursive
# Copy scripts into git repo
hooks/install.sh
```
