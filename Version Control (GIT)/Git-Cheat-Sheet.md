### A - **Basics command line:**

1. **`git help <command>`**: get help for a git command
2. **`git init`**: creates a new git repo, with data stored in the .git directory
3. **`git status`**: tells you what’s going on
4. **`git add <filename>`**: adds files to staging area
5. **`git commit`**: creates a new commit Write good commit messages! Even more reasons to write good commit messages!
6. **`git log`**: shows a flattened log of history
7. **`git log --all --graph --decorate`**: visualizes history as a DAG
8. **`git diff <filename>`**: show changes you made relative to the staging area
9. **`git diff <revision> <filename>`**: shows differences in a file between snapshots
10. **`git checkout <revision>`**: updates HEAD and current branch

    ***

### B - **Branching:**

1. **`git branch`**: shows branches
2. **`git branch <name>`**: creates a branch
3. **`git checkout -b <name>`**: creates a branch and switches to
4. it same as **`git branch <name>`**; **`git checkout <name>`**

   ***

### C - **Merging:**

1. **`git merge <revision>`**: merges into current branch
2. **`git mergetool`**: use a fancy tool to help resolve merge conflicts
3. **`git rebase`**: rebase set of patches onto a new base

   ***

### D - **Remotes:**

1. **`git remote`**: list remotes
2. **`git remote add <name> <url>`**: add a remote
3. **`git push <remote> <local branch>:<remote branch>`**: send objects to remote, and update remote reference
4. **`git branch --set-upstream-to=<remote>/<remote branch>`**: set up correspondence between local and remote branch
5. **`git fetch`**: retrieve objects/references from a remote
6. **`git pull`**: same as git fetch; git merge
7. **`git clone`**: download repository from remote

   ***

### E - **Undo:**

1. **`git commit --amend`:** edit a commit’s contents/message
2. **`git reset HEAD <file>`**: unstage a file
3. **`git checkout -- <file>`**: discard changes

   ***

### F - **Advanced Git:**

1. **`git config`**: Git is highly customizable
2. **`git clone --depth=1`**: shallow clone, without entire version history
3. **`git add -p`**: interactive staging
4. **`git rebase -i`**: interactive rebasing
5. **`git blame`**: show who last edited which line
6. **`git stash`**: temporarily remove modifications to working directory
7. **`git bisect`**: binary search history (e.g. for regressions)
8. **`gitignore`**: specify intentionally untracked files to ignore

## [←Back to main](README.md)
