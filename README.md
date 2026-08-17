# Five Questions for Debriefing Simulation Games

**Version 1.0 · Open Educational Resource · German and English editions**

This repository contains a compact, evidence-informed open educational resource (OER) for debriefing simulation games in higher education and professional training. It adapts the **Five Questions** facilitation model described by Micah Jacobson and Mari Ruddy in the second edition of *Open to Outcome* (2015) to simulation-game debriefing.

The guide is deliberately generic and can be used with digital serious games, business simulations, board-based simulations, role-based games, and comparable experiential formats. It does not claim that the Five Questions model is empirically superior to other debriefing frameworks. Instead, it combines the model's practical facilitation logic with research on structured debriefing and simulation-based learning.

The German version consistently uses the formal **Sie** form.

## Contents

The guide has three main sections:

1. Why debrief simulation games?
2. The Five Questions model, including facilitator guidance and optional follow-up questions.
3. Two worked examples: a short-notice project requirement and the Beer Distribution Game.

Both language editions are designed as three-page A4 PDFs.

## Download

Version 1.0 is available as publication-ready PDF editions:

- [Deutsch – Leitfaden für Debriefings in Planspielen](https://github.com/AndreNitze/simulation-game-debriefing-five-questions/releases/download/v1.0/five-questions-debriefing-de.pdf)
- [English – Guide to Debriefing Simulation Games](https://github.com/AndreNitze/simulation-game-debriefing-five-questions/releases/download/v1.0/five-questions-debriefing-en.pdf)
- [GitHub Release v1.0](https://github.com/AndreNitze/simulation-game-debriefing-five-questions/releases/tag/v1.0)

## Files

- `de/five-questions-debriefing.qmd` — German source
- `en/five-questions-debriefing.qmd` — English source
- `debriefing-theme.typ` — German Typst layout
- `debriefing-theme-en.typ` — English Typst layout
- `references.bib` — shared bibliography
- `_quarto.yml` — Quarto/Typst build configuration
- `metadata.yml` — schema.org/AMB metadata for OER discovery and OERSI harvesting
- `CITATION.cff` — machine-readable citation metadata for GitHub
- `.zenodo.json` — metadata for Zenodo release archiving

Generated PDFs and DOCX files are intentionally excluded from Git. Publication PDFs are attached to the corresponding GitHub release and can be reproduced from the source files.

## Build

Requirements:

- Quarto with Typst support

From the repository root:

```bash
quarto render
```

The configured output directory is `_output/`.

## OER discovery

The repository contains `metadata.yml` using schema.org-compatible educational-resource metadata. The resource is marked as published and is intended to be harvested by OER discovery services such as OERSI.

## Source and attribution

The Five Questions structure is adapted from:

> Jacobson, M., & Ruddy, M. (2015). *Open to Outcome: A Practical Guide for Facilitating & Teaching Experiential Reflection* (2nd ed.). Wood N Barnes Publishing.

The German and English guides are attributed, simulation-game-oriented adaptations of the sequence and facilitation logic described in the second edition, with original explanatory text and examples.

## License

Original text, examples, layout, and source files created for this OER are licensed under **Creative Commons Attribution 4.0 International (CC BY 4.0)**. See [`LICENSE`](./LICENSE).

Third-party publications, names, models, trademarks, and quoted material remain subject to their respective rights and are not relicensed under CC BY 4.0.

## Author

**André Nitze**  
Technische Hochschule Brandenburg  
ORCID: https://orcid.org/0000-0003-0752-917X  
ROR: https://ror.org/04qj3gf68  
Related project: https://thatsoftwaregame.com/
