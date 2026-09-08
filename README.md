# LaTeX Thesis Template

**Author: Sooraj Sudhakaran**

A LaTeX thesis template for THD Campus Cham students, with a complete fictional demo, structured chapters, automated references, and an editable starter project.

> **Unofficial educational project:** This repository is not an official THD,
> Campus Cham, degree-programme or supervisor-approved thesis template.

**Start by opening [the complete demo thesis PDF](demo-thesis.pdf).**

See a binding cover, THD Campus Cham title page, declaration placeholder, abstract, acknowledgements, automatic contents and lists, nine engineering chapters, citations, references, a vector figure, a table, an equation, a code listing and an appendix. Then inspect the source that creates them.

This educational repository follows the structure in Prof. Górka's *Road to Thesis*, inspected v045, while preserving useful architecture from an existing working LaTeX setup. All demo prose, numbers and diagrams were independently created. It is not an official university template or a submission-ready thesis. Programme-specific title and declaration forms must be obtained separately.

## Start here

1. Open [demo-thesis.pdf](demo-thesis.pdf).
2. Use [PDF-to-source map](docs/pdf-to-source.md) to find each feature.
3. Follow [installation and first build](docs/getting-started.md).
4. Read [how this demo works](docs/how-this-demo-works.md).
5. Copy the **whole `starter/` folder** into a separate private location and open that folder in VS Code. Its numbered directories must stay together.
6. Replace its prompts using [the chapter writing guide](docs/writing-guide.md).
7. Check [guideline decisions](docs/guideline-decisions.md) and [submission checklist](docs/submission.md).

## Choose the right files

| Location | Purpose |
|---|---|
| `demo-thesis.pdf` | Included, compiled example; open before editing |
| `demo/` | Complete fictional project; study its source |
| `starter/` | Independent editable starting point; chapter prompts plus retained example assets |
| `docs/` | Beginner instructions, decisions and validation |
| `scripts/build-demo.sh` | Rebuilds the demo and refreshes the included PDF |

Both projects preserve `01_appendix/`, `02_latex_source/`, `03_figures_and_diagrams/` and `04_raw_data/`. Each has its own portable `.vscode/` settings. Bibliography entries live beside `main.tex`, as in the inspected setup. No shared parent source files are needed when copying the starter.

## How source becomes a PDF

```text
chapter .tex files + front matter + references.bib + figure files
                             |
                  02_latex_source/main.tex
                             |
                  latexmk: XeLaTeX + Biber
                             |
                         main.pdf
```

Edit the text source, save it, then build. Do not edit the PDF directly. `main.tex` is the root document: it loads the preamble and puts the parts in order. `preamble.tex` controls packages and formatting; `frontmatter/thesis_metadata.tex` holds fictional title information.

From the repository root, the tested command is:

```sh
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error demo/02_latex_source/main.tex
```

It creates `demo/02_latex_source/main.pdf`. The vector figure is included already. If its source changes, build `demo/03_figures_and_diagrams/workflow.tex` with the same command first. On macOS/Linux or Git Bash, `sh scripts/build-demo.sh` builds both and refreshes `demo-thesis.pdf`. On Windows PowerShell, after the build run:

```powershell
Copy-Item demo/02_latex_source/main.pdf demo-thesis.pdf
```

In VS Code open `demo/02_latex_source/main.tex`, open the Command Palette, choose **LaTeX Workshop: Build LaTeX project**, and then **LaTeX Workshop: View LaTeX PDF file**. Build after changing citations too: latexmk runs Biber and repeats LaTeX as needed.

**Never type table-of-contents page numbers yourself.** LaTeX generates them from chapter and section commands. Lists of figures/tables, bibliography numbering and cross-references are generated too.

## What is deliberately different from a submitted thesis

The demo is short; it does not meet full-thesis page-count or section-length expectations. Blank reverse pages preserve double-sided, right-hand chapter starts. The title fields and declaration are educational placeholders, the references illustrate citation types, and every observation is invented. The THD logo is included only for the title-page demonstration and remains the property/trademark of its owner. No confidential report, other institutional supporting file or proprietary font is redistributed. See [decisions and limitations](docs/guideline-decisions.md).

# Before You Push to GitHub

Always run:

```sh
git status
```

and inspect every file that will be committed.

Never commit confidential research, NDA-protected reports, private datasets, credentials, company information, internal documents, API keys, tokens, passwords, or personal information to a public GitHub repository.

**Open a terminal inside this public folder only. Never run `git add .` in a parent thesis workspace.** Check `git rev-parse --show-toplevel` before staging. It must identify this isolated repository. Follow [Git and GitHub safely](docs/git-safety.md). A private student thesis should be kept outside this public repository.

## Documentation

- [First installation and build](docs/getting-started.md)
- [PDF to source map](docs/pdf-to-source.md)
- [Feature walkthrough](docs/how-this-demo-works.md)
- [Writing each chapter](docs/writing-guide.md)
- [Guideline analysis and architecture decisions](docs/guideline-decisions.md)
- [Submission preparation](docs/submission.md)
- [Git safety](docs/git-safety.md)
- [Build and security validation](docs/validation.md)

Copyright © 2026 Sooraj Sudhakaran. Original template source, documentation, and fictional examples are available under the [MIT License](LICENSE). You may use and adapt the template for your thesis; retain the copyright and license notices when sharing template source. Your original thesis writing remains your own. The THD name and logo are excluded from this license and remain subject to their owner's rights and usage rules.
