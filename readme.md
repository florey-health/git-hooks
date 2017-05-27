# Git Hooks

A collection of Git hooks to make your development life easier.

The collection includes:

- `post-commit`: automatically creates version tags based on the `package.json` version. Great for helping to ensure you're importing and reporting the correct package version. 


# Install

## Via NPM

```
npm i florey-health/git-hooks --save
```

Add to `package.json`:

```
scripts: {
    "postinstall": "init-git-hooks"
}



## Via Git submodules

For new:

```
git submodule add https://github.com/florey-health/git-hooks.git hooks
```

For existing:
```
git submodule update --init --recursive
```

Install:
```
hooks/bin/install.sh
```

*Please note:* it is important to use the HTTPS version of the module, as Heroku will otherwise be unable to import it.
