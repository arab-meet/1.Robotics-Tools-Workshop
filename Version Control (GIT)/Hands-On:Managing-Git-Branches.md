# Hands-On: Managing Git Branches

#### Step 1: Listing Branches

Open your terminal or command prompt and navigate to your Git repository directory. Then, list all branches using the following command:

```bash
git branch
```

This will display a list of all branches in your repository.

#### Step 2: Creating a New Branch

To create a new branch called `branching-test-branch`, execute the following command:

```bash
git branch branching-test-branch
```

You can verify that the branch has been created by listing branches again.

#### Step 3: Switching to the New Branch

Switch to the newly created branch using the `checkout` command:

```bash
git checkout branching-test-branch
```

Or, alternatively, you can use the `switch` command:

```bash
git switch branching-test-branch
```

This command will move your working directory to the `branching-test-branch` branch.

#### Step 4: Making Changes in the Branch

Create a new file called `branchingTest.txt` and add some content to it:

```bash
touch branchingTest.txt
echo "test git branching commands from git tutorial" >> branchingTest.txt
```

Then, add the file to the staging area and commit the changes:

```bash
git add branchingTest.txt
git commit -m "Testing the branching"
```

#### Step 5: Merging Branches

Switch back to the `main` branch (or any other branch you want to merge into) using the `checkout` or `switch` command:

```bash
git checkout main
```

Merge the changes from the `branching-test-branch` branch into the current branch (e.g., `main`):

```bash
git merge branching-test-branch
```

Resolve any merge conflicts if they occur.

#### Step 6: Deleting Branches

Once the changes have been merged successfully, you can delete the `branching-test-branch` branch. First, ensure you are on a different branch (e.g., `main`), then execute the following command to delete the branch:

```bash
git branch -d branching-test-branch
```

If you have unmerged changes and still want to force delete the branch, you can use:

```bash
git branch -D branching-test-branch
```

That's it! You've now gone through the process of managing branches in a Git repository hands-on. Feel free to explore more Git commands and branch management techniques as you continue your journey with Git. If you have any questions or encounter any issues, feel free to ask for further assistance!
