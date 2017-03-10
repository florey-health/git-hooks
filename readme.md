# Git Hooks

A collection of Git hooks to make your development life easier.

The collection includes:

- `post-commit`: automatically creates version tags based on the `package.json` version. Great for helping to ensure you're importing and reporting the correct package version. 


## Add to project

To add this module to a project, the author needs to run the following once:

```
git submodule add git@github.com:florey-health/git-hooks.git hooks
```

If this repo is updated, you need to update the submodule in the parent repo. You can update by doing the following:

```
cd hooks
git pull
```

Once added to a repo or updated, you will need to install it...


## Install in repo instance

Even when a project contains this submodule, it won't take effect until the scripts are copied to your `.git/hooks` folder.

To install it, run the following once:

```
# Ensure submodule is pulled down
git submodule update --init --recursive
# Copy scripts into .git/hooks
hooks/install.sh
```
