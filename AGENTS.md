# Repository Guidelines

## Project Structure & Module Organization
- Main slides: `Talk-LeChen-Banff_20251028.tex` (Beamer).
- Theme/macros: `Common-White.tex`, colors in `AllColors.tex`, title block in `Title.tex`.
- Bibliography: `All.bib` (biblatex+biber).
- Figures: `figs/` (symlink to a shared figures folder). If the link breaks, replace with a local `figs/` directory or update paths.
- Travel docs: `docs/`, `eTA/` (sensitive; not part of the build).

## Build, Test, and Development Commands
- Build PDF (auto-runs biber when needed):
  - `latexmk -pdf -interaction=nonstopmode Talk-LeChen-Banff_20251028.tex`
  - Add `-shell-escape` only if TikZ/external tools require it.
- Live preview while editing:
  - `latexmk -pvc -pdf Talk-LeChen-Banff_20251028.tex`
- Clean auxiliaries: `latexmk -c`; full clean: `latexmk -CA`.
- Manual fallback (if latexmk is unavailable):
  - `pdflatex <file>` → `biber <file-base>` → `pdflatex <file>` ×2.

## Coding Style & Naming Conventions
- LaTeX: 2-space indentation; keep environments readable; wrap long TikZ lines logically.
- Frames: one topic per `frame`; always set `\frametitle{...}` and add a short `% comment` describing the frame at the start.
- Macros: prefer reusable macros in `Common-White.tex`; keep slide-specific tweaks near the top of the main `.tex` file.
- Citations: use `\myFootCite{key}` or `\BriefCite{key}`; add entries to `All.bib`.
- Figures: store under `figs/`; follow existing descriptive pattern, e.g., `Figure_1-3_Paper_Fire.png`.

## Testing Guidelines
- No automated tests. Validate by compiling without errors, ensuring:
  - All figures render (no missing `figs/` paths).
  - Bibliography resolves (biber runs; citations appear).
  - Frame numbers and overlays behave as expected.

## Commit & Pull Request Guidelines
- Sync before working:
  - `git pull --rebase` on your working branch to ensure you start from the latest remote version. Resolve any conflicts before editing.
- Git commit rule:
  - Start with a short one-liner subject summarizing the change.
  - Follow with a detailed body describing what you did and why. Be explicit about slide names, figure paths, or macros touched.
  - Then run commit and push.
  - Example:
    - `git add -A`
    - `git commit -m "slides: add KPZ background frames" -m "Add frames on DSM growth; update citations in All.bib; fix fig paths in figs/."`
    - `git push`
- Scope prefix for subjects: one of `{slides, figs, refs, theme, build}`.
  - Examples: `slides: add KPZ background frames`; `refs: add Takeuchi2011`.
- PRs: include a short description, list of affected files, and 1–2 screenshots or the compiled PDF when review is visual. Link any related issue or agenda.

## Security & Configuration Tips
- `docs/` and `eTA/` contain personal materials; avoid editing or publishing them. Exclude these when distributing slides.
- Ensure `latexmk`, `biber`, and a reasonably complete TeX distribution (TeX Live) are installed. If TikZ/Feynman diagrams fail, try enabling `-shell-escape` or install missing packages.
