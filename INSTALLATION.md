# Install LaTeX and Write Your Thesis in VS Code

**Author: Sooraj Sudhakaran**

Follow this walkthrough from installation to your first edited thesis PDF. Choose the instructions for your operating system, then continue with the shared steps. This is an unofficial educational template; obtain your programme's approved forms before submission.

## 1. Understand what you need

| Component | What it does | Required? |
|---|---|---|
| A full LaTeX distribution | Installs the compiler, packages and fonts | Yes |
| XeLaTeX | Converts this project's LaTeX source into typeset output | Included in the distribution |
| latexmk | Runs the build tools in the correct sequence | Included in a full installation |
| Biber | Processes citations and the bibliography | Included in a full installation |
| Visual Studio Code desktop | Edits your thesis source | Yes for this workflow |
| LaTeX Workshop by James Yu | Adds build commands and PDF preview to VS Code | Yes for this workflow |
| Git | Tracks changes and optionally downloads the repository | Optional |

Allow time and several gigabytes of disk space for a full TeX installation; check the installer for its actual requirements. Internet access is needed for downloads. After installation, the included project can compile offline.

You do not need an Overleaf subscription, Microsoft Word, Python, an AI extension, or a GitHub account to compile this template. The Python example is printed as a code listing, not executed.

## 2. Install the software for your operating system

Install one LaTeX distribution. If you already have one, try the version checks in section 4 before installing another.

### Windows: TeX Live and VS Code

1. Open the official [TeX Live Windows page](https://tug.org/texlive/windows.html) and download its Windows installer.
2. Run the installer. Choose the full installation scheme, keep a simple installation path, and let installation finish. Do not close it while packages are downloading.
3. Download the Windows installer from [Visual Studio Code](https://code.visualstudio.com/Download). Install it and retain the option to add VS Code to PATH when offered.
4. Close and reopen VS Code and any terminals after installation. TeX Live's installer configures its executable path on Windows. See the [TeX Live installation instructions](https://tug.org/texlive/quickinstall.html).
5. Use **PowerShell** for the Windows commands below. In VS Code, open **Terminal > New Terminal**.

**If you already use MiKTeX:** you can keep it, but LaTeX Workshop's latexmk workflow also needs Perl. Install Perl using the route linked in the [LaTeX Workshop installation documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install), update packages in MiKTeX Console, and check that XeLaTeX, Biber and latexmk are available. Missing packages and fonts may need installation through MiKTeX Console. A full TeX Live installation is the primary Windows route used in this walkthrough.

### macOS: MacTeX and VS Code

1. Download the full package from the official [MacTeX download page](https://tug.org/mactex/mactex-download.html). Use full MacTeX for this walkthrough rather than the smaller BasicTeX package.
2. Open the downloaded installer and finish installation.
3. Download [Visual Studio Code for macOS](https://code.visualstudio.com/Download), install the application in **Applications**, and open it.
4. Quit and reopen VS Code after MacTeX installation. MacTeX exposes the TeX commands through `/Library/TeX/texbin`.
5. Optional: to use the `code` terminal command, press **Cmd+Shift+P**, run **Shell Command: Install 'code' command in PATH**, and open a new terminal. See [VS Code's macOS instructions](https://code.visualstudio.com/docs/setup/mac).

Use **Terminal > New Terminal** inside VS Code for the commands below. No Homebrew installation is required for this route.

### Ubuntu / Debian Linux: TeX Live and VS Code

Open your system terminal and run these commands one at a time:

```sh
sudo apt update
sudo apt install texlive-full latexmk biber
```

Enter your computer's password when prompted; terminal password input may not display characters. Review the download and disk-space totals, confirm installation, and wait for it to finish. Ubuntu's [texlive-full package](https://packages.ubuntu.com/noble/texlive-full) includes the comprehensive TeX package set.

Download the appropriate `.deb` package from [VS Code](https://code.visualstudio.com/Download). Open a terminal in the folder containing that download and install it with the command below, replacing the example filename with the actual downloaded filename:

```sh
sudo apt install ./code_VERSION_ARCH.deb
```

See Microsoft's [Linux installation documentation](https://code.visualstudio.com/docs/setup/linux) for package and architecture choices. Launch VS Code from the applications menu and open **Terminal > New Terminal**.

These `apt` commands are for Debian/Ubuntu systems. For other Linux distributions, follow [TeX Live's installation instructions](https://tug.org/texlive/quickinstall.html) and VS Code's instructions for your distribution. Keep package updates within the installation method you chose; do not mix system-managed TeX packages with an unrelated upstream TeX installation.

## 3. Install the VS Code extension

1. Open the **Extensions** icon in the left sidebar, or press **Ctrl+Shift+X** on Windows/Linux or **Cmd+Shift+X** on macOS.
2. Search for **LaTeX Workshop**.
3. Select the extension published by **James Yu**, with identifier `James-Yu.latex-workshop`, and click **Install**.
4. Reload VS Code if prompted.

Alternatively, if the `code` command is available, run:

```sh
code --install-extension James-Yu.latex-workshop
```

VS Code documents extension installation through both the UI and CLI in its [extension instructions](https://code.visualstudio.com/docs/configure/extensions/extension-marketplace). No additional PDF extension is needed: LaTeX Workshop includes the preview used by this project. The repository's `.vscode/extensions.json` recommends this extension, but a recommendation alone does not install it.

## 4. Check installation before downloading or editing

In a new VS Code terminal, run each command separately:

```sh
xelatex --version
latexmk -v
biber --version
```

**Success:** every command prints version information and returns to the terminal prompt. The three version numbers do not need to match each other. If a command is not found, go to section 10 before continuing.

This template uses Verdana when installed and TeX Gyre Heros otherwise. It also requires Fira Math. A full TeX installation supplies the TeX fonts; you do not need to buy Verdana. Different font selections can change page breaks.

## 5. Download and open the template

### Easiest route: download a ZIP

1. Open [the repository](https://github.com/SoorajSudhakaran1199/sooraj-sudhakaran-thd-latex-thesis-guide).
2. Select **Code > Download ZIP**.
3. Extract the ZIP into a folder you can find again, such as Documents. Do not work inside the compressed ZIP.
4. In VS Code, choose **File > Open Folder** and select the extracted folder containing `README.md`, `demo/`, and `starter/`.
5. If VS Code shows Workspace Trust, review the source and trust the downloaded project if you accept it; Restricted Mode can prevent extension features from running.

### Optional route: clone with Git

If Git is already installed, run this in the directory where you want the downloaded project:

```sh
git clone https://github.com/SoorajSudhakaran1199/sooraj-sudhakaran-thd-latex-thesis-guide.git
cd sooraj-sudhakaran-thd-latex-thesis-guide
code .
```

If `code .` is unavailable, use **File > Open Folder** instead. Git is optional; the ZIP route contains the same project files.

## 6. Build the demo before changing anything

First open `demo-thesis.pdf` to see the intended example. Then compile the source yourself.

### Using VS Code buttons and commands

1. In Explorer, open `demo/02_latex_source/main.tex`.
2. Open the Command Palette: **Ctrl+Shift+P** on Windows/Linux or **Cmd+Shift+P** on macOS.
3. Run **LaTeX Workshop: Build with recipe** and choose **XeLaTeX + Biber (latexmk)**. For subsequent builds, use **LaTeX Workshop: Build LaTeX project**.
4. Wait for the build to finish. The first build runs several passes.
5. Run **LaTeX Workshop: View LaTeX PDF file**.

The folder already includes the recipe in `.vscode/settings.json`. Open the whole repository folder so VS Code loads those settings. You do not need to write your own configuration. Automatic building is disabled in this project: save, then explicitly build.

### Using a terminal

With your terminal in the repository folder containing `README.md`, run:

```sh
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error demo/02_latex_source/main.tex
```

This command works in PowerShell, macOS Terminal, and Linux shells once the tools are installed. `-cd` changes to the source directory for compilation; `-pdfxe` selects XeLaTeX. latexmk runs Biber and further passes when necessary.

**Success:** `demo/02_latex_source/main.pdf` is produced, the text is readable, and citations and references do not show `??`. This generated PDF is distinct from the included root-level `demo-thesis.pdf`; ordinary builds do not overwrite that root copy. Intentional blank reverse pages support the double-sided layout.

## 7. Create your own thesis project

Copy the **entire `starter/` folder** to a separate private location and rename the copy `my-thesis`. Use your file manager, or use one of the following command blocks from the repository root. The examples create a sibling folder; choose a different destination if `my-thesis` already exists.

Windows PowerShell:

```powershell
Copy-Item -Path ./starter -Destination ../my-thesis -Recurse
Set-Location ../my-thesis
```

macOS / Linux:

```sh
cp -R starter ../my-thesis
cd ../my-thesis
```

In VS Code, use **File > Open Folder** to open `my-thesis`. Keep the hidden `.vscode` folder and all four numbered directories together:

```text
my-thesis/
  .vscode/                 Build recipe and extension recommendation
  01_appendix/             Appendix source
  02_latex_source/         main.tex, chapters, metadata and references
  03_figures_and_diagrams/ Images and diagram source
  04_raw_data/             Supporting data
```

Build the copied starter from the `my-thesis` terminal:

```sh
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error 02_latex_source/main.tex
```

The output is now **`02_latex_source/main.pdf`** inside your private project. Do not include `starter/` in this command: you are already inside its renamed copy.

## 8. Make your first edit and write the thesis

1. Open `02_latex_source/frontmatter/thesis_metadata.tex`. Replace the example name, programme, supervisors and dates with your information. Set `\ThesisTitleGerman` to your German title and `\ThesisTitle` to your English title; both print automatically on the cover and title page. The supplied robotics titles are general examples, while the short chapter content remains fictional teaching material.
2. Open `02_latex_source/chapters/ch1_introduction.tex`. Replace its bracketed writing prompt with a short paragraph about your topic. Keep the existing `\chapter`, `\section`, and `\label` commands.
3. Save with **Ctrl+S** or **Cmd+S**, then build the project again.
4. Open `02_latex_source/main.pdf` and confirm your changed paragraph appears. This completes your first edit–build–preview cycle.
5. Continue chapter by chapter using the [writing instructions](docs/writing-guide.md). Replace the fictional content and samples with your own researched material.

| What you want to change | File inside `my-thesis` |
|---|---|
| Name, thesis title and other title fields | `02_latex_source/frontmatter/thesis_metadata.tex` |
| Abstract | `02_latex_source/frontmatter/abstract.tex` |
| Main chapter writing | `02_latex_source/chapters/*.tex` |
| Bibliographic records | `02_latex_source/references.bib` |
| Chapter order or inclusion | `02_latex_source/main.tex` |
| Packages and page formatting | `02_latex_source/preamble.tex` |
| Figures | `03_figures_and_diagrams/` |
| Appendix | `01_appendix/appendix_a.tex` |

To try a citation, write `\cite{knuth1984}` in chapter prose and rebuild; that key already exists in the sample bibliography. For your actual thesis, add verified records to `references.bib` and cite their keys. Do not manually type bibliography numbers or contents page numbers.

The [feature walkthrough](docs/how-this-demo-works.md) explains figures, tables, equations, labels, citations and code listings. The [PDF-to-source map](docs/pdf-to-source.md) connects the demo pages to their files. These documentation links are in the original downloaded repository; keep that copy for reference when working in your private starter copy.

## 9. Commands for everyday writing

Run these from the root of your **private `my-thesis` folder**:

Build after editing text, references, or metadata:

```sh
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error 02_latex_source/main.tex
```

If you edit `03_figures_and_diagrams/workflow.tex`, rebuild that diagram first, then the thesis:

```sh
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error 03_figures_and_diagrams/workflow.tex
latexmk -cd -pdfxe -interaction=nonstopmode -halt-on-error 02_latex_source/main.tex
```

The diagram PDF is already included, so this extra step is only needed after changing its source. Ordinary PNG/JPEG images do not need a LaTeX compilation step.

For understanding the build sequence, the manual alternative is shown below. Run it **inside `02_latex_source/`**, rather than at the project root:

```sh
xelatex -interaction=nonstopmode -halt-on-error main.tex
biber main
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

Prefer latexmk for everyday work because it decides which passes are needed. LaTeX Workshop's [build documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki/Compile) explains recipes and root-file selection.

## 10. Troubleshooting

Read the **first error**, not only the last line of a failed build. In VS Code open **View > Output** and choose the LaTeX Workshop output channel. The compiler log is `02_latex_source/main.log` in your private project.

| Symptom | What to do |
|---|---|
| `xelatex`, `latexmk`, or `biber` not found; `spawn ... ENOENT` | Finish installation, fully restart VS Code, and run the version checks in a new terminal. Inspect PATH using the commands below. |
| `code` not found | Use File > Open Folder. On macOS, optionally install the `code` shell command as described in section 2. |
| No LaTeX Workshop commands | Install/enable the James Yu extension, open a `.tex` file, and check whether Restricted Mode is limiting the extension. |
| The named build recipe is missing | Open the whole repository or copied starter folder, including `.vscode/settings.json`, rather than only the source subfolder. |
| `fontspec` requires XeTeX or LuaTeX | Select this project's XeLaTeX recipe or use the `-pdfxe` command; pdfLaTeX cannot compile this preamble. |
| Missing `.sty` or Fira Math font | Complete the full TeX installation, or install the missing component through your chosen distribution's package manager. Do not remove packages from the template to hide the error. |
| MiKTeX cannot find Perl | Install Perl as described in the LaTeX Workshop installation documentation, restart VS Code, and check `perl --version`. |
| Biber/biblatex version mismatch | Update them together through the same distribution/package manager. Do not download an arbitrary standalone Biber version. |
| Citation appears as a key, or a reference shows `??` | Check the key/label spelling, save the files, and run latexmk. Fix any preceding compilation error. |
| Image or appendix not found | Preserve all numbered folders and exact filename capitalization. Build `main.tex`, not a chapter. |
| A literal `%`, `&`, `_`, or `#` breaks ordinary prose | Write `\%`, `\&`, `\_`, or `\#` respectively. |
| PDF still shows old text | Save your source, build, and open the generated `02_latex_source/main.pdf`, not the repository's prebuilt `demo-thesis.pdf`. |
| Build cannot overwrite a PDF | Close an external viewer that may lock it, especially on Windows, and retry. |

Locate installed commands on Windows PowerShell:

```powershell
where.exe xelatex
where.exe latexmk
where.exe biber
```

Locate installed commands on macOS / Linux:

```sh
command -v xelatex
command -v latexmk
command -v biber
```

On macOS, if MacTeX is installed but not found, test its executable directly:

```sh
/Library/TeX/texbin/xelatex --version
```

If that works, the problem is PATH. Follow the [MacTeX FAQ](https://tug.org/mactex/faq.html) for the permanent setup. On Windows, check that the installed TeX Live binary directory appears in your user/system PATH; on upstream Linux installations use the actual binary directory reported by the installer. Do not copy someone else's version-specific path blindly.

If the build still has stale auxiliary data after fixing the underlying error, run the following **inside `02_latex_source/`**, then rebuild:

```sh
latexmk -c main.tex
latexmk -pdfxe -interaction=nonstopmode -halt-on-error main.tex
```

The lowercase `-c` cleans generated intermediates. Keep your `.tex`, `.bib`, figures and data; they are your source files.

## 11. Before handing in the report

- Replace all demonstration text, sample data, bibliography examples and placeholder fields.
- Use your programme's approved title/declaration forms and required signatures.
- Rebuild and inspect the complete generated PDF, including references and appendices.
- Follow the [submission checklist](docs/submission.md) and keep a backup of the complete source folder.
- Keep private thesis material outside the public template repository. See [Git safety](docs/git-safety.md).

**Verification scope:** installation references were checked on 2026-09-08. The template's recorded build environment is TeX Live 2025 on macOS; Windows and Linux instructions are based on the official installation documentation and were not tested on fresh machines. See the [existing validation record](docs/validation.md).
