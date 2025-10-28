# Tetromino Assets

This folder contains PNG assets for all tetromino pieces plus a 1x1 single-site piece. Two visual variants are provided for each shape:

- Non-bordered: sticky pieces (use for “sticky” jars/particles).
- Bordered: non-sticky pieces (use for “non-sticky” jars/particles).

## Naming Scheme
- Sticky (no border): `Tetromino_<Type>_<Orientation>.png`
- Non-sticky (bordered): `Tetromino_<Type>_<Orientation>_bordered.png`

Types: `I, J, L, O, S, T, Z, 1x1`

Orientations by type:
- `I`: `Horizontal`, `Vertical`
- `J, L, T`: `Up`, `Right`, `Down`, `Left`
- `S, Z`: `Horizontal`, `Vertical`
- `O`: `Single` (2×2 square)
- `1x1`: `Single` (extra single-site particle)

Examples:
- Sticky T up: `Tetromino_T_Up.png`
- Non-sticky T up: `Tetromino_T_Up_bordered.png`
- Sticky 1x1: `Tetromino_1x1_Single.png`
- Non-sticky I vertical: `Tetromino_I_Vertical_bordered.png`

## Usage
- LaTeX slides: `\includegraphics[height=1cm]{tetromino/Tetromino_T_Up.png}`
- Simulation configs: map sticky pieces to non-bordered filenames; map non-sticky pieces to `_bordered` filenames.

## Contributing
- Keep the naming scheme and exact casing.
- Provide both bordered and non-bordered variants for new shapes/orientations.
- Use transparent backgrounds and consistent padding so pieces align visually.
