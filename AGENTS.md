Smart Contract Metadata Registry — repository for storing ABI contracts.
Before making changes, always read README.md.

## File Structure
- Contract data stored as JSON files named by contract address
- Organized in chain-specific directories (ethereum/, bsc/, polygon/, etc.)
- Each file requires: name, chainId, address, metadata (with output.abi), version
- Optional: checkPoints, isProxy, principalAddress
- For proxy contracts: use origin contract ABI, set isProxy=true, set principalAddress

## Validation
- Pre-commit hooks run automatically on commit (check-json, end-of-file-fixer, etc.)
- Validate JSON with: `python3 check_file.py <file.json>`
- Manifests: only include abi in metadata.output (exclude userdoc/devdoc)
- Always add newline at end of files (LF, \n)

## Git & GitHub
- Push to fork using SSH: `git push evgkrsk <branch-name>`
- Create PRs ONLY in your fork (evgkrsk/Smart-Contract-Metadata-Registry)
- For PRs targeting your fork: `gh pr create --repo evgkrsk/Smart-Contract-Metadata-Registry --head <branch-name> --base main`
- After commit, check for hook modifications: `git status`
- If files modified by hooks: `git add <file>` and `git commit -m "Fix after pre-commit hooks"`
- Never use `--amend` after pushing to remote
- Use descriptive branch names: feature/<description>, fix/<description>
