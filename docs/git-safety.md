# Git and GitHub without exposing a thesis

Git records local snapshots called commits. A repository is the folder whose `.git` directory stores those snapshots. Staging selects the next snapshot's files. A remote is a server destination; pushing uploads commits and their history. GitHub visibility controls who can access that remote repository. A private setting is not permission to upload restricted material.

## First local repository

Use only the new educational folder. If it is physically inside a confidential workspace, its own `.git` boundary isolates its history, but opening or staging the parent can still create risk. A separate copy outside the confidential workspace is preferable for day-to-day public work.

```sh
cd /path/to/latex-thesis-guide
git init -b main
git rev-parse --show-toplevel
git status
```

If Git is already initialized here, do not initialize a parent or import the parent history. Confirm the top-level directory is exactly the public folder. Stop if it identifies the confidential workspace. Do not add the parent as a remote or submodule.

Inspect before staging:

```sh
git status --short
git ls-files --others --exclude-standard
```

Read every text file and inspect the PDF and figure assets. Then stage only explicit public paths:

```sh
git add README.md .gitignore .vscode docs scripts demo starter demo-thesis.pdf
git status
git diff --cached --stat
git diff --cached
```

Ignored build files will not be staged. Binary files do not reveal their contents in a textual diff: open each PDF separately. Check `git ls-files` too. There must be no absolute private paths, datasets, signed forms, internal URLs or secret values. A pattern scan is useful but cannot prove the absence of confidential content.

When the staged result has been reviewed, make a local commit:

```sh
git commit -m "Add fictional LaTeX thesis guide and demo"
```

This creates a snapshot locally; it does not publish. Configure a commit identity appropriate for public use before committing. Do not place tokens in commands, source files or URLs.

## Publish only after review

Create an empty GitHub repository intended for these public educational files. Do not initialize it from the confidential repository. Add the new GitHub URL as `origin`, check `git remote -v`, and inspect the complete local history before pushing. Copy the exact remote URL from your intended repository; do not reuse a thesis remote.

```sh
git log --oneline --stat
git status
git remote -v
```

Then, when ready, `git push -u origin main` uploads that reviewed history. No push is performed by the build script. Removing a secret in a later commit does not remove it from earlier history; stop and address exposure before publishing any history containing it.

## Daily writing

Keep your actual thesis in a separate private project, following your institution's and company's storage rules. Save changes, inspect `git diff`, stage selected paths and make descriptive commits. `.gitignore` helps exclude generated files; it is not a confidentiality filter and does not untrack files already committed.

**Never run `git add .` from the parent workspace containing confidential thesis material.**
