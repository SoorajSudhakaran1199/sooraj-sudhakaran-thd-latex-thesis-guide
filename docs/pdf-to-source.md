# Find the source behind the PDF

Paths below are relative to `demo/02_latex_source/`. The starter has the same architecture.

| What you see | Source |
|---|---|
| Binding cover | `frontmatter/coverpage.tex and frontmatter/thesis_metadata.tex` |
| Inner THD title page | `frontmatter/titlepage.tex`, `frontmatter/thesis_metadata.tex` and `../03_figures_and_diagrams/thd_logo.png` |
| Declaration | `frontmatter/declaration.tex` |
| Abstract | `frontmatter/abstract.tex` |
| Acknowledgements | `frontmatter/acknowledgements.tex` |
| Table of contents | `main.tex: \tableofcontents` |
| List of figures / tables | `main.tex: \listoffigures / \listoftables` |
| List of code listings | `main.tex: \lstlistoflistings` |
| Abbreviations | `frontmatter/abbreviations.tex and main.tex: \printacronyms` |
| Symbols | `frontmatter/symbols.tex` |
| Chapter 1: Introduction | `chapters/ch1_introduction.tex` |
| Chapter 2: State of the Art | `chapters/ch2_state_of_the_art.tex` |
| Chapter 3: Requirement Management | `chapters/ch3_requirement_management.tex` |
| Chapter 4: Development of Concepts | `chapters/ch4_development_of_concepts.tex` |
| Chapter 5: Development of Product | `chapters/ch5_development_of_product.tex` |
| Chapter 6: Simulation | `chapters/ch6_simulation.tex` |
| Chapter 7: Realization of Prototype | `chapters/ch7_realization_of_prototype.tex` |
| Chapter 8: Verification of Prototype | `chapters/ch8_verification_of_prototype.tex` |
| Chapter 9: Conclusion and Outlook | `chapters/ch9_conclusion_and_outlook.tex` |
| Figure | `chapters/ch4_development_of_concepts.tex and ../03_figures_and_diagrams/workflow.pdf` |
| Table | `chapters/tables/tab_example_results.tex` |
| Equation | `chapters/ch6_simulation.tex` |
| Code listing | `chapters/ch6_simulation.tex` and `code/example_mean.py` |
| Citations | `chapters/ch2_state_of_the_art.tex` |
| References | `references.bib and main.tex: \printbibliography` |
| Appendix divider | `main.tex` |
| Appendix A | `../01_appendix/appendix_a.tex` |
| Raw data | `../04_raw_data/example_durations.csv` |

`preamble.tex` controls the common layout. Change content in its dedicated file, not in the generated PDF. Numbering can change as you edit; stable labels keep references correct.
