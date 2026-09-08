# Learn one feature at a time

All paths below are relative to `demo/02_latex_source/` unless noted. A line starting with `%` is a comment: it explains the source but does not print.

## Binding cover, title page and declaration

`frontmatter/coverpage.tex` creates the logo-free outer binding cover used by the inspected thesis. `frontmatter/titlepage.tex` creates the inner title page and uses the grey THD Campus Cham logo. Górka permits that logo only on the first institutional title page, not on the binding cover or elsewhere in the thesis.

Both pages use values from `frontmatter/thesis_metadata.tex`. For example, `\newcommand{\StudentName}{Sooraj Sudhakaran}` defines a reusable value. The demonstration shows `XXX` for the matriculation number, second supervisor and submission date. Replace and verify these values in one place before submission. The thesis title remains fictional. The layout demonstrates the inspected working project, but students must compare it with their current programme-specific approved title form.

`frontmatter/declaration.tex` uses `\frontchapter{Declaration of Authorship}` to create an unnumbered page heading with a contents entry. It demonstrates where an authorship statement appears. It is **not approved wording**. Górka's guidance directs students to programme-specific forms; Campus Cham section 4.1.4 says to complete, sign and include the applicable statement. Obtain that form from the university. Insert only fields it requests, such as name, date, place and signature; do not sign the demonstration. A separate AI declaration is not established as mandatory by the inspected guidance; actual tool/model/prompt documentation is required for the uses described there.

## Chapters, sections and subsections

```latex
\chapter{Introduction}
\label{chap:introduction}
\section{Background and objective}
\label{sec:background}
\subsection{Illustrative hypothesis}
\label{sec:hypothesis}
```

In the PDF these become 1, 1.1 and 1.1.1. `report` numbers them automatically. The label is a private identifier for a document element, not visible prose. Give each label a unique, meaningful name. In a real thesis, avoid fragmenting the argument into tiny sections merely because the demo does so.

## Automatic contents and lists

`main.tex` calls `\tableofcontents`, `\listoffigures`, `\listoftables` and `\lstlistoflistings`. Chapter/section commands supply contents entries; captions supply figure, table and code-listing entries. Never type page numbers manually. LaTeX writes auxiliary files and reads them on subsequent passes; latexmk repeats compilation until stable.

Starred headings such as `\chapter*{Abstract}` are unnumbered and do not enter the contents automatically. The helper `\frontchapter` adds the contents entry and hyperlink target. The bibliography uses `heading=bibintoc` for the same purpose.

## Citations and bibliography

A **citation key** is a short identifier for one `.bib` entry, for example `knuth1984`. It is not a page number. Entries live in `references.bib`.

```latex
\textcite{knuth1984} provides a book example.
A journal article is another example~\cite{shannon1948}.
An online example appears here~\parencite{web1991}.
Two sources can appear together~\cite{knuth1984,shannon1948}.
```

The PDF shows numeric bracketed citations and a narrative author-plus-number form for `\textcite`. `\parencite` uses the selected numeric style; its name does not turn the thesis into an author-date system. The citation numbers link to the bibliography. `sorting=none` orders entries by first citation, matching Górka's instruction. IEEE is the retained implementation choice, not a claim that Górka mandates a particular biblatex package.

To add a source, obtain accurate bibliographic information from the publication or publisher, add an entry with a unique key, cite the key, then rebuild with latexmk. Biber reads `references.bib`; `\printbibliography` prints cited entries. Do not type the reference list manually. `\cite[23]{knuth1984}` demonstrates a page locator; use a page you actually consulted.

```bibtex
@article{yourArticleKey,
  author = {Family, Given},
  title = {Replace with the actual article title},
  journaltitle = {Journal title},
  date = {2026},
  volume = {1}, number = {2}, pages = {10--20},
  doi = {Replace with the actual DOI}
}
@book{yourBookKey,
  author = {Family, Given},
  title = {Actual book title},
  date = {2026}, publisher = {Actual publisher}
}
@online{yourWebKey,
  author = {{Organisation Name}},
  title = {Actual page title},
  date = {2026-01-01},
  url = {https://example.org/replace-this},
  urldate = {2026-09-07}
}
```

These snippets are field examples, not real references. Replace every field with verified metadata; do not invent a publication date if missing. Record that absence and ask how it should be handled. Górka permits web sources with publication/access dates, link and online indication, but expects appropriate scholarly literature beyond websites. The included web example has a documented publication date. Braces protect organisation names. Separate multiple authors using `and`.

The three included sources are public metadata examples, not evidence for timer performance: [Knuth's book listing](https://www-cs-faculty.stanford.edu/~knuth/abcde.html), [Shannon's article DOI](https://doi.org/10.1002/j.1538-7305.1948.tb01338.x), and [the W3C historical posting](https://www.w3.org/People/Berners-Lee/1991/08/art-6484.txt).

## Figures

`chapters/ch4_development_of_concepts.tex` includes an original vector PDF:

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=\textwidth]{workflow.pdf}
  \caption{Requirements lead to design and verification in the fictional study.}
  \label{fig:workflow}
\end{figure}
```

Assets live in `../03_figures_and_diagrams/`, registered by `\graphicspath`. Prefer vector PDFs for diagrams; convert SVG to PDF with a suitable drawing tool before inclusion. PNG/JPEG can suit photographs when permitted, but do not replace a diagram with a screenshot. `width=0.8\textwidth` uses 80 percent of the available text width; the supplied diagram uses the full width to keep its labels readable. `[htbp]` suggests here/top/bottom/float-page placement and is not a guarantee.

The caption prints below the figure and supplies its list entry. Place `\label` after `\caption` so it captures the figure number. Refer to it in prose with `Figure~\ref{fig:workflow}` and explain what it establishes. A useful caption identifies what the figure shows, its conditions and source; cite externally sourced graphics in the caption too. The included original teaching diagram needs no external image source.

The vector source is `../03_figures_and_diagrams/workflow.tex`; compile it with XeLaTeX or latexmk before rebuilding `main.tex` after an edit. No raster screenshot or confidential image is used.

## Tables

`chapters/tables/tab_example_results.tex` separates a reusable table from chapter prose. Its `table` environment floats; `tabular` makes the grid. In `{lrrrr}`, the first column aligns left and four numeric columns align right. `&` separates columns and `\\` ends a row. `\toprule`, `\midrule` and `\bottomrule` come from booktabs.

The table caption belongs **below** the grid under Górka's convention, followed by its label. `Table~\ref{tab:results}` resolves to Table 8.1. Every table is numbered, explained in the text and kept on one page. Reduce content or split it meaningfully rather than shrinking text below legibility or allowing a table across pages. State units in the headings.

## Equations and symbols

```latex
\begin{equation}
  \bar{t}=\frac{1}{n}\sum_{i=1}^{n}t_i .
  \label{eq:mean}
\end{equation}
```

The PDF shows the mean equation with number (6.1) at the right. `Equation~\ref{eq:mean}` references its number; `\eqref{eq:mean}` adds parentheses automatically. Explain the equation's steps, assumptions, every variable and every unit in prose. Mathematical variables in text also use math mode, such as `$n$`. `\qty{2}{\second}` keeps the value and SI unit together. This configuration displays decimal commas. Do not type multiplication as `*`; use `\cdot` where appropriate.

`frontmatter/symbols.tex` lists symbol, meaning and unit; `n.u.` identifies dimensionless symbols. Keep it synchronized manually when adding equations. The mean symbol has an overbar; the individual observation carries an index.

## Source-code listing

The fictional file `code/example_mean.py` contains a small arithmetic-mean function. It has no connection to the confidential thesis or any real product. Chapter 6 includes it with:

```latex
\lstinputlisting[
  language=Python,
  caption={Fictional Python example that calculates an arithmetic mean.},
  label={lst:mean-example}
]{code/example_mean.py}
```

The `listings` package prints syntax-aware plain text, line numbers, a frame and a caption. The caption automatically creates an entry in the List of Code Listings. `Listing~\ref{lst:mean-example}` produces a resolved cross-reference. Keep only short code excerpts needed to explain the method; store complete source code in the electronic supporting files when required. Never paste confidential credentials, internal URLs or proprietary source into a public repository.

## Cross-references

```latex
Chapter~\ref{chap:verification_of_prototype}
Section~\ref{sec:methodology}
Figure~\ref{fig:workflow}
Table~\ref{tab:results}
Equation~\ref{eq:mean}
Appendix~\ref{app:example}
```

These resolve to 8, 6.1, 4.1, 8.1, 6.1 and A in the demo. The non-breaking space `~` keeps the word with its number. Never type the displayed number yourself. If you rename a label, update every reference to that label. Undefined labels produce `??`; duplicate labels can point to the wrong object.

## Acronyms and appendices

`\DeclareAcronym{pdf}{short=PDF,long=Portable Document Format}` defines an acronym. `\ac{pdf}` expands it on first use; later uses show its short form. Acro generates the alphabetic list. No separate makeglossaries command is needed for this project.

After the bibliography, `main.tex` creates an unnumbered appendix divider, calls `\appendix`, and inputs `../01_appendix/appendix_a.tex`. Its chapter becomes A rather than Chapter 10; its sections become A.1 and A.2. Use appendices for supporting details or data dictionaries. Keep the hypothesis, main method, central evidence and interpretation in the chapters. Large raw datasets and code belong in the electronic supporting package, not pages of printed code. Refer to every relevant attachment from the body.
