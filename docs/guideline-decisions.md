# Inspection, authority and design decisions

## Sources inspected

The primary source was the locally available *Road to Thesis*, Prof. Matthias Górka, package v045 (filename dated 2025-06-05; internal page footer dated 2025-10-27). References below use its printed page numbers. That filename/date mismatch is recorded, not interpreted as proof of a later edition. The general Campus Cham guideline, version 2.0 dated 2023-01-13, was available as a historical text extraction in the workspace's Git history. Its public PDF was also checked via the [official Campus Cham guideline URL](https://th-deg.de/Studierende/Antraege-und-Organisatorisches/NuW/campus_cham_leitfaden_abschlussarbeiten_en.pdf). The `www` variant of the historical link returned 404 during inspection. Access date: 2026-09-07.

Górka p.8 ranks programme regulations first, his guidance second, and general Campus Cham guidance third. This repository implements the inspected guidance; it does not certify future or programme-specific submission compliance. Get current forms and regulations via [DIT Documents & Organisation](https://th-deg.de/en/students/documents).

No guideline PDF, lecture slide, institutional template or other supplied teaching file is redistributed. The requested THD logo is the sole institutional graphic and is confined to the title page. Page 27 restricts sharing supplied university files, so the logo must be reviewed against THD's current branding permission before publishing. This repository contains independently written educational explanations and configuration.

## What the working project taught

Read-only inspection covered the document entry point, preamble, build recipe, safe front-matter layout commands, file inventory, package configuration, parent ignore file and documentation headings/build instructions. No chapter prose, bibliography contents, raw data or confidential figures were used as source material.

| Area | Observed architecture | Public decision |
|---|---|---|
| Workspace | Numbered appendix/source/figure/data/result/documentation and delivery areas | Preserve four useful numbered areas inside each independent example; put learning docs at repository root |
| Class | Standard `report`, 11pt A4, `twoside,openright` | Retain tested class; Górka p.80 recommends KOMA-Script but does not mandate it |
| Root | `main.tex`, preamble and metadata separated; chapter files loaded via `input` | Keep separation; direct inputs fail clearly if a required file is missing |
| Chapters | Seven topic-specific chapters | Adopt Górka p.90's nine-chapter baseline; p.90 allows variation for chapters 3-8, so the observed difference is not automatically an error |
| Front matter | Separate logo-free binding cover and THD-logo title page, declaration, AI declaration, acknowledgements before abstract | Preserve cover/title separation; then declaration, abstract, acknowledgements, contents and lists, per p.90 |
| Appendix | Sibling `01_appendix` directory | Retain with separate divider and alphabetic attachment numbering |
| Citations | biblatex, Biber, IEEE; `.bib` alongside root | Retain, explicitly set `sorting=none` to enforce citation order |
| Figures | Sibling figure directories and generated-result paths | One original vector asset directory; no external project paths |
| Tables | Separate inputs below chapters; booktabs/tabularx/longtable etc. | Retain separate table example and booktabs; omit multipage table machinery, given p.110 |
| Acronyms/symbols | Acro, custom list helper, manual symbols | Acro default alphabetic list plus simple three-column symbols table |
| Fonts/layout | Verdana, mirrored 3/2 cm margins, 2.5 cm top/bottom, 1.5 spacing, 14/12/11pt headings | Retain with TeX Gyre Heros fallback and sans-serif math treatment |
| Macros | Table-column and acronym helpers, metadata, listing settings | Keep only metadata and front-matter heading helper; no project-specific commands |
| Build | XeLaTeX plus Biber; latexmk configuration | Explicit `-pdfxe`, no shell escape, no SVG conversion dependency |
| VS Code | No thesis `.vscode/settings.json` available in the current inspected thesis tree; parent ignores `.vscode/` | Write fresh portable LaTeX Workshop settings; do not use unrelated software-project settings |
| Ignore rules | LaTeX auxiliaries ignored; bibliography intermediates not all covered | Add Biber/XeLaTeX auxiliaries; allow only demo PDF and two original figure PDFs |
| Extra styles | No thesis-specific class/style files found; broad package preamble | Standard distributed packages, no copied class/style assets |
| Documentation | Supporting-file package and build notes | Beginner README, feature/source map, chapter guide, explicit safe Git workflow |

## Requirements and implementation

| Source | Requirement / recommendation | Implementation or recorded limitation |
|---|---|---|
| Górka pp.80,82-83,96 | Double-sided A4, right-hand chapter starts, mirrored margins/outer page numbers | `report` options, geometry, fancyhdr; intentional empty versos |
| Campus Cham §3.2 | Sans-serif text, 11-12pt body, 14pt chapter headings, 1.5 spacing, justified text | 11pt Verdana when available; portable sans-serif fallback; heading sizes retained |
| Górka p.82 | Title unnumbered; declaration single-sided; front matter Roman; body/bibliography/appendix Arabic | Unnumbered title; declaration cleared to next recto; uppercase Roman then Arabic continuous through appendix |
| Górka pp.90,100-101 | Nine-chapter flow, hypothesis in introduction, critical conclusion and next steps | Nine dedicated chapter sources; discussion inside verification and conclusion |
| Górka p.90 | Main page, declaration, abstract, acknowledgement, contents, figure/table/acronym/symbol lists | This order in both roots |
| Górka p.98; Campus Cham §4.1 | Programme-specific title and declaration | Clear educational placeholders, unsigned; no invented official wording |
| Górka pp.98-99 | Programme requirements govern restriction notice; THD logo only on the institutional title page, never the binding cover or other pages | No restriction note for fictional public material; grey THD Campus Cham logo appears only on the inner title page |
| Górka pp.88,103-105 | Reference list in order of appearance; citations link to references; online metadata | IEEE numeric biblatex with `sorting=none`, hyperref, public book/article/web examples |
| Górka pp.108-110 | Vector diagrams, readable labels, numbered objects, captions below, text references; tables on one page | Original vector PDF, full-size typography, one-page table, text discussion and automatic lists |
| Górka pp.111-116 | Three-column symbol list; numbered explained equations; SI typesetting, decimal comma examples | Symbol/description/unit table, mean equation, siunitx comma configuration |
| Campus Cham §4.2.7 | Separate appendix divider, attachment subdivisions | Unnumbered divider, appendix A with A.1/A.2; electronic CSV |
| Górka pp.12-14 | AI usage restrictions and traceable tool/model/prompts/files for permitted assistance | Declaration notice and appendix record format; do not submit AI-written demo prose as student work |
| Górka pp.17,25-26,125,135,140 | Delivery involves PDF, supporting ZIP, naming, paper and machine-readable raw data | Documented separately in submission guide; CSV included, no private deliverables copied |

## Conflicts, uncertainties and deliberate scope limits

- The general guideline says single-sided printing; Górka explicitly overrides this. Both projects retain duplex page geometry.
- The general document gives mixed bibliography-sorting advice. Górka's order-of-appearance requirement is the deciding rule. IEEE is a technical choice compatible with numeric examples; exact departmental bibliography punctuation should be confirmed.
- Górka recommends KOMA-Script; the working project uses `report`. Retaining `report` avoids unnecessary class migration while implementing the required layout explicitly.
- There is no official thesis template in Górka p.86. The supplied IEEE article template is for the separate paper, not the thesis. None of it was copied.
- The binding cover is included because the user requested the same print/binding arrangement as the inspected thesis. It remains distinct from the institutional title page. A List of Code Listings supplements the p.90 baseline to demonstrate automatic indexing of the short code example; large source listings belong in electronic supporting files.
- Copyright © 2026 Sooraj Sudhakaran. Original project material is licensed under the MIT License. The THD name and logo are excluded from that license and remain subject to the owner's trademark and usage rules. Their inclusion does not make this an official THD template.
- The declaration is intentionally not official text: programme/form selection is unresolved for a reusable multi-programme guide. Date/signature prompts illustrate placement, not universal form wording.
- The body is deliberately far shorter than Górka p.91's master's target of 80 pages ±10% (bachelor's 50 ±10%). Short demo subsections also do not model p.96's minimum section-length guidance. The user-requested compact example demonstrates mechanics, not sufficient academic depth.
- The simulation and prototype chapters explain what belongs there; they do not pretend a real simulation or physical prototype exists. The source/data examples are all fictional.
- The font fallback is not visually identical to Verdana. Fira Math supplies sans-serif mathematical symbols; its glyphs are not identical to Verdana. Confirm acceptable mathematics typography for a real submission.
- No PDF/A requirement was established by the inspected sources. Hyperlinks, bookmarks, readable vector content and print layout are implemented; PDF/A compliance is not claimed.
- Full administrative submissions, paper, project plan, colloquium and signed forms are outside this compact teaching project. They remain explicit checklist items, not silently omitted thesis obligations.
