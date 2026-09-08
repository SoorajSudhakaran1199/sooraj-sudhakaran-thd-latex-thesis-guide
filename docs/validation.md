# Validation record

Validation was completed on 2026-09-08 with TeX Live 2025.

## Builds

- The demo and starter were built independently with `latexmk -pdfxe`.
- XeLaTeX and Biber completed successfully.
- Final logs contain no LaTeX errors, unresolved references, missing citations, overfull boxes or underfull boxes.
- The included `demo-thesis.pdf` is byte-for-byte identical to the current `demo/02_latex_source/main.pdf`.
- The demo has 45 A4 pages and 30 PDF outline entries. Its length includes intentional blank reverse pages required for the binding cover, inner title page, front-matter lists and right-hand chapter starts in a double-sided layout.

## Content checks

- The binding cover, inner THD title page, declaration placeholder, abstract, acknowledgements, contents, figure/table/code-listing/acronym/symbol lists, all nine chapters, references, appendix divider and Appendix A appear in the expected order.
- Roman front-matter and Arabic main-matter numbering are populated.
- Citations and bibliography entries resolve. Chapter, section, figure, table, equation and appendix references contain their resolved numbers; no `??` markers remain.
- The figure and fictional code listing are present and legible, the table stays within the page, and the equation and symbols render correctly.
- The demo contains only fictional observations and an original teaching diagram.

## Visual review

All 45 pages were rendered to PNG contact sheets. Representative pages were also inspected at higher resolution, including the binding cover, THD title page, declaration, contents, symbols, figure, equation, code listing, table, bibliography and appendix. No clipped or overlapping text, damaged glyphs, unexpected content pages, overflowing tables or missing images were found. Blank reverse pages are intentional and have no printed page number.

## Guideline review

The result was checked against Górka's inspected structure and writing-format pages and the general Campus Cham guideline. The implemented and unresolved items are recorded in `guideline-decisions.md`. The demo does not claim official status, full thesis length, approved declaration wording or PDF/A compliance.

## Security review

Only this public folder was scanned. The requested public student name, Sooraj Sudhakaran, is intentionally present on the cover and title page. No matriculation number, confidential project topic, company name, customer material, private URL, absolute user path, credential pattern or secret token was found. Hits for words such as "confidential", "company", "token" and "password" occur only in safety instructions or generic teaching comments. Generated prose, diagram and numerical data are independent fictional material. Pattern matching supplements manual source review; it cannot prove that arbitrary prose is non-confidential.
