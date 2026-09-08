# Writing the thesis through the engineering process

This guide uses Górka p.90’s baseline, not a generic literature/method/results replacement. Chapters 3-8 may be adapted with the supervisor for the actual topic. Write alongside the work (p.87). Keep the focus on development through verification (p.92). The compact PDF teaches formatting; real sections need sustained argument and evidence.

Suggested writing order: draft hypothesis and scope; record literature and requirements; write concepts/development/simulation/prototype as the work occurs; document verification immediately; revise the introduction; write the conclusion and abstract last. Keep citations and measurement records from the first day.

## 1. Introduction

**Purpose:** Establish the problem and a measurable research hypothesis.

**Questions:** What is unknown, why does it matter, and what will be tested?

**Include:** Context, scope, objective, hypothesis and roadmap. **Leave elsewhere:** Detailed results or a long textbook introduction.

**Writing order:** Draft early and revise after verification.

**Example outline:** Context; hypothesis; scope; chapter roadmap.

**Common mistake:** Treating a routine implementation task as research novelty.

**Connection:** The state-of-the-art review tests whether the claimed gap exists.

Source: `02_latex_source/chapters/ch1_introduction.tex` in either project.

```latex
\chapter{Introduction}
\label{chap:introduction}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## 2. State of the Art

**Purpose:** Position the work against credible prior research.

**Questions:** What has been demonstrated already, under which conditions, and what remains unresolved?

**Include:** Critical comparisons, definitions needed later, and traceable citations. **Leave elsewhere:** Unrelated history, uncited claims, or a list of products without analysis.

**Writing order:** Write when this engineering phase is performed; revise after the following phase reveals missing evidence.

**Example outline:** Search scope; relevant approaches; comparison; research gap.

**Common mistake:** Assuming websites alone establish the state of research.

**Connection:** The gap becomes specific, testable requirements.

Source: `02_latex_source/chapters/ch2_state_of_the_art.tex` in either project.

```latex
\chapter{State of the Art}
\label{chap:state_of_the_art}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## 3. Requirement Management

**Purpose:** Translate the objective into verifiable requirements.

**Questions:** What must the solution achieve, under what conditions, and how will each item be tested?

**Include:** SMART targets, identifiers, priorities, acceptance criteria and verification links. **Leave elsewhere:** Unjustified design commitments or requirements written after seeing results.

**Writing order:** Write when this engineering phase is performed; revise after the following phase reveals missing evidence.

**Example outline:** Stakeholder needs; requirements; acceptance criteria; traceability.

**Common mistake:** Using words such as fast or reliable without a measurable threshold.

**Connection:** Requirements supply criteria for selecting a concept.

Source: `02_latex_source/chapters/ch3_requirement_management.tex` in either project.

```latex
\chapter{Requirement Management}
\label{chap:requirement_management}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## 4. Development of Concepts

**Purpose:** Generate alternatives and justify a selection.

**Questions:** Which concepts are plausible and why is the chosen one preferable?

**Include:** Alternative designs, criteria, evidence, tradeoffs and selection rationale. **Leave elsewhere:** Only the final design, or arbitrary scores presented as objective evidence.

**Writing order:** Write when this engineering phase is performed; revise after the following phase reveals missing evidence.

**Example outline:** Alternatives; criteria; comparison; selection and sensitivity.

**Common mistake:** Choosing first and inventing a decision matrix afterwards.

**Connection:** The selected concept becomes a detailed product design.

Source: `02_latex_source/chapters/ch4_development_of_concepts.tex` in either project.

```latex
\chapter{Development of Concepts}
\label{chap:development_of_concepts}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## 5. Development of Product

**Purpose:** Explain the detailed technical development.

**Questions:** How does the design work, and what is needed to reproduce it?

**Include:** Architecture, interfaces, calculations, drawings, software design and relevant risk assessment. **Leave elsewhere:** Repetition of discarded concepts or unexplained source-code dumps.

**Writing order:** Write when this engineering phase is performed; revise after the following phase reveals missing evidence.

**Example outline:** Architecture; components/interfaces; detailed design; risks.

**Common mistake:** Naming a component without explaining its role or selection evidence.

**Connection:** The design defines the model and inputs for simulation.

Source: `02_latex_source/chapters/ch5_development_of_product.tex` in either project.

```latex
\chapter{Development of Product}
\label{chap:development_of_product}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## 6. Simulation

**Purpose:** Analyse predicted behaviour with explicit assumptions.

**Questions:** What does the model predict, how was it checked, and where is it unreliable?

**Include:** Model equations, parameters, boundary conditions, solver/version details and verification. **Leave elsewhere:** Unlabelled plots or simulated outputs described as physical measurements.

**Writing order:** Write when this engineering phase is performed; revise after the following phase reveals missing evidence.

**Example outline:** Model; assumptions; numerical method; checks; predicted behaviour.

**Common mistake:** Omitting convergence checks or confusing calibration with independent validation.

**Connection:** Predictions guide prototype realization and experimental checks.

Source: `02_latex_source/chapters/ch6_simulation.tex` in either project.

```latex
\chapter{Simulation}
\label{chap:simulation}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## 7. Realization of Prototype

**Purpose:** Record the realized prototype and deviations from design.

**Questions:** What was built, how, and how does it differ from the plan?

**Include:** Assembly steps, configuration, software/hardware versions and deviations. **Leave elsewhere:** An ideal design described as if it had actually been built.

**Writing order:** Write when this engineering phase is performed; revise after the following phase reveals missing evidence.

**Example outline:** Realized configuration; assembly; deviations; test readiness.

**Common mistake:** Failing to distinguish planned from completed work.

**Connection:** The actual configuration determines a reproducible verification protocol.

Source: `02_latex_source/chapters/ch7_realization_of_prototype.tex` in either project.

```latex
\chapter{Realization of Prototype}
\label{chap:realization_of_prototype}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## 8. Verification of Prototype

**Purpose:** Test the hypothesis and requirements against evidence.

**Questions:** What was measured, what uncertainty exists, and which criteria passed?

**Include:** Protocol, sampling rationale, instruments/accuracy, conditions, raw-data links, results and separate discussion. **Leave elsewhere:** Cherry-picked successes or conclusions unsupported by the sample.

**Writing order:** Write when this engineering phase is performed; revise after the following phase reveals missing evidence.

**Example outline:** Method; observations; requirement checks; uncertainty; limitations.

**Common mistake:** Treating a small or biased sample as proof of general reliability.

**Connection:** The conclusion answers the original question using this evidence.

Source: `02_latex_source/chapters/ch8_verification_of_prototype.tex` in either project.

```latex
\chapter{Verification of Prototype}
\label{chap:verification_of_prototype}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## 9. Conclusion and Outlook

**Purpose:** Answer the original hypothesis and identify next steps.

**Questions:** Which parts were supported, where is the evidence, and what remains open?

**Include:** Concise synthesis, critical limits, links to supporting sections and concrete future work. **Leave elsewhere:** New results, new research claims, or a second literature review.

**Writing order:** Write after verification, then revise the abstract.

**Example outline:** Hypothesis recap; evidence-based answer; limitations; outlook.

**Common mistake:** Declaring complete success without addressing unmet requirements.

**Connection:** References and appendices allow readers to inspect sources and supporting details.

Source: `02_latex_source/chapters/ch9_conclusion_and_outlook.tex` in either project.

```latex
\chapter{Conclusion and Outlook}
\label{chap:conclusion_and_outlook}
\section{Purpose and evidence}
% Explain the question, method and evidence for this chapter.
[Replace this prompt with your own work.]
```

## Front matter and supporting sections

| Part | Purpose and questions | Include / leave out | Writing order and mistake to avoid | Outline and next connection |
|---|---|---|---|---|
| Cover and title | Identify the work and author | Logo-free binding cover; approved title fields and THD logo only on the inner title page | Finalize after title approval; do not submit unchecked placeholder fields | Cover, institutional title page, declaration |
| Declaration | Record authorship under applicable rules | Approved wording and requested fields; no invented certification | Obtain the form early, complete/sign at submission; never sign demo wording | Approved form; then abstract |
| Abstract | Convey the complete contribution in one page | Context, problem, objective, method, key result, conclusion; no unsupported new claim | Write last; do not confuse it with the separate early core-content proposal | Six-part summary; then acknowledgements |
| Acknowledgements | Credit appropriate assistance | Brief factual thanks; avoid private information in public material | Write near the end; do not use it for technical argument | Short paragraph; then contents |
| Contents and lists | Help readers locate material | Generated headings/captions; no manual page numbers | Generate throughout; check after final build | Contents, figures, tables, code listings, alphabetic abbreviations, symbols; then introduction |
| Abbreviations | Explain specialized shorthand | Short/long form, alphabetic order; omit everyday abbreviations | Define at first use and maintain throughout; do not leave stale entries | API, PDF examples; use `\ac` in text |
| Symbols | Define notation | Symbol, meaning, unit or n.u.; avoid unexplained symbols | Update while writing equations; do not use conflicting meanings | Three columns; connects notation to analysis |
| References | Identify the sources actually used | Complete verified metadata for cited sources; no uncited padding | Record as you read; never reconstruct sources from memory at the end | Automatically generated list; then appendix |
| Appendix | Preserve supporting evidence | Data dictionaries and supplemental details; essential argument stays in chapters | Assemble as work proceeds; refer from the main text | Divider, attachment A, subsections; electronic files for large data/code |

Generic commands for these parts are demonstrated in `docs/how-this-demo-works.md`. Keep a consistent language, black body text, concise objective sentences, meaningful captions and evidence for technical choices. State limitations precisely. AI-written demo content is a learning aid and must not be submitted as independently authored thesis writing.
