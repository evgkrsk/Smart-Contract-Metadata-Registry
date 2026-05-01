Smart Contract Metadata Registry — repository for storing ABI
contracts. Before making changes, always read README.md.
Changes must comply with documentation. For manifests,
do NOT add userdoc/devdoc to metadata.output - only abi is required.
When creating/editing any files, ALWAYS add a newline at the end (LF, \n).
Create PRs ONLY in your fork (evgkrsk/Smart-Contract-Metadata-Registry).

## Working with git and GitHub

### Pushing Changes
- To push to your fork, YOU MUST use SSH remote: `git push evgkrsk <branch-name>`
- Avoid HTTPS for pushing if you haven't configured tokens/passwords in your system
- After the first push, you can use simple `git push` if upstream is configured correctly

### Working with Pre-commit Hooks
- Hooks may automatically modify files after `git commit`
- After committing, always check status: `git status`
- If files appear modified:
  1. Re-add them: `git add <file>`
  2. Create a fix commit: `git commit -m "Fix after pre-commit hooks"`
  3. Never use `--amend` if you've already pushed changes to remote

### Creating Pull Requests via GitHub CLI
- Ensure your branch is pushed to the remote repository
- Basic command: `gh pr create --title "<title>" --body "<description>"`
- When targeting YOUR FORK (not upstream), YOU MUST use --repo:
  `gh pr create --repo evgkrsk/Smart-Contract-Metadata-Registry --head <branch-name> --base main`
- Always verify there are commits to include: `git log main..<branch-name>`

### General Recommendations
- When working with JSON files, check structure validity
- Create descriptive branch names: feature/<description>, fix/<description>
- Verify all required fields are present in contract metadata
- Ensure changes comply with current documentation
