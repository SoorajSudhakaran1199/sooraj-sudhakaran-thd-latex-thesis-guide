# Your first build

LaTeX is a document typesetting system. A `.tex` file is plain text containing writing and layout commands. A compiler reads those instructions and produces a PDF. VS Code is the editor, not the compiler. Git saves snapshots locally; GitHub hosts repositories online. Neither Git nor a GitHub account is needed to build this project.

## Install

1. Obtain a LaTeX distribution using the [LaTeX project's download guide](https://www.latex-project.org/get/): MacTeX on macOS, TeX Live on Linux or Windows, or MiKTeX on Windows. A full installation avoids most missing-package problems. This project needs XeLaTeX, latexmk and Biber.
2. Install [Visual Studio Code](https://code.visualstudio.com/).
3. In VS Code's Extensions panel, search for **LaTeX Workshop**, published by James Yu, and install it. Its [installation documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install) describes distribution and PATH requirements. MiKTeX users may also need Perl for latexmk.
4. Restart VS Code after installation. From Terminal > New Terminal, run `xelatex --version`, `latexmk -v` and `biber --version`. Each must print a version. A command-not-found error means the distribution is missing or its executable directory is not on PATH.
5. Download this repository through GitHub's Code > Download ZIP and extract it, or clone it with Git. Open the extracted repository folder with File > Open Folder.

The repository needs no login, network service, credentials or shell escape to compile. Verdana is used if installed; otherwise TeX Gyre Heros supplies a portable sans-serif fallback. Fira Math (included in full TeX Live) supplies sans-serif mathematics. No font file is bundled. For matching pagination across computers, use the same font and TeX distribution.

## Build in VS Code

Open `demo/02_latex_source/main.tex`. Save any edits. Open the Command Palette with Ctrl+Shift+P (Cmd+Shift+P on macOS), select **LaTeX Workshop: Build LaTeX project**, and use the configured XeLaTeX + Biber recipe. Then select **LaTeX Workshop: View LaTeX PDF file**. The output is `main.pdf` next to `main.tex`.

Automatic building is disabled so you choose when to compile. The root hint in each chapter points back to `main.tex`; when learning, build with `main.tex` open.

## Build in a terminal

From the public repository root:

```sh
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error demo/02_latex_source/main.tex
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error starter/02_latex_source/main.tex
```

Alternatively change into either `02_latex_source/` directory and run:

```sh
xelatex -interaction=nonstopmode -halt-on-error main.tex
biber main
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

The manual sequence is shown for understanding; latexmk handles additional passes automatically. XeLaTeX reads the source and records citations and references. Biber formats the bibliography. Further LaTeX passes resolve numbers, page locations and acronym lists.

## Begin your own thesis

Copy all of `starter/` to a separate private location and open it as a folder. Build before editing, then change `02_latex_source/frontmatter/thesis_metadata.tex`. Replace the declaration/title placeholder using current programme forms. Write one chapter at a time in `02_latex_source/chapters/` and build after each small change. The starter retains sample bibliography, symbols, appendix, figure and dataset for learning: replace or remove them coherently before submission. A citation, figure, equation and fictional table remain as working examples inside the chapter prompts. Replace them with your own work.

## Fix common errors

| Symptom | Action |
|---|---|
| `fontspec` requires XeTeX | Select the provided XeLaTeX recipe, not pdfLaTeX |
| Package `.sty` not found | Install that package using your distribution's package manager |
| Biber version mismatch | Update Biber and biblatex together through the same distribution |
| `??` or a citation key | Check the label/key spelling and run latexmk again; inspect the first error |
| Image not found | Check its filename and relative location; keep numbered folders together |
| `Undefined control sequence` | Check spelling and whether the relevant package is loaded |
| Build fails after a special character | Use `\%`, `\&`, `\_`, `\#` for literal characters in ordinary text |
| Many cascading errors | Read the first error in `main.log`; later messages may be consequences |
| Stale contents | Save files and rebuild; use `latexmk -c main.tex` inside the source folder if necessary |

Do not delete unknown files to fix a build. Temporary files are ignored by Git. The included demo PDF is intentionally trackable.
