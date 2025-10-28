# Talk: Analysis of Tetris Ballistic Deposition and the Robustness of the KPZ Universality Class

Banff workshop: Emerging Synergies between Stochastic Analysis and Statistical Mechanics  
Dates: 2025-10-27 — 2025-10-31

## Slides
- PDF: [Talk-LeChen-Banff_20251028.pdf](./Talk-LeChen-Banff_20251028.pdf)
- Source: [Talk-LeChen-Banff_20251028.tex](./Talk-LeChen-Banff_20251028.tex)

Build locally (requires TeX Live + biber):

```bash
latexmk -pdf -interaction=nonstopmode Talk-LeChen-Banff_20251028.tex
```

## Interactive Media
- Images gallery (GitHub Pages): https://chenle02.github.io/2025-10-28_Emerging_Synergies_Banff_Le/exp13/images_display.html
- Videos + images (GitHub Pages): https://chenle02.github.io/2025-10-28_Emerging_Synergies_Banff_Le/exp13/videos_and_images_display.html
  - If Pages isn’t enabled yet: Settings → Pages → Deploy from branch → `master` (root).

## Abstract

The Central Limit Theorem's robustness invites an analogous question for the Kardar–Parisi–Zhang (KPZ) universality class. In this talk, we report some recent Monte Carlo simulations of Tetris-style ballistic deposition using 40 particle types (sticky/non-sticky tetrominoes in all orientations plus single-site pieces) sampled from configurable “jars”. This setup interpolates between random deposition (Gaussian, with $t^{1/2}$ growth rate) and ballistic deposition (KPZ, with $t^{1/3}$ growth rate). We want to see (i) how geometry and stickiness influence observed scaling, and (ii) whether mixtures exhibit crossover between Gaussian and KPZ behavior or a phase-transition phenomenon. Theoretical analysis is expected to be extremely challenging, so we rely on simulations in the hope of forming some key conjectures. A fundamental methodological issue—choosing a reliable time window to estimate the growth exponent from log–log slopes—will be highlighted, as it critically affects inferred universality. The project also yields an open simulation toolkit supporting teaching and student training in scientific computing, and outreach activities.

## Acknowledgments
Support from NSF 2443823, NSF 2246850, and the Simons Foundation Travel Grant (2022–2027) is gratefully acknowledged.
