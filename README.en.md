# Space Shuttle System Design (SSD)

A model-based systems engineering (MBSE) package that reconstructs the system design of the Space Shuttle from publicly available documents: diagrams, design documents, and SysML v2 models that are linked to each other.

- **Browse online:** <https://kei-shima.github.io/Space_Shuttle_MBSE/>
- Revision: Rev. BR (2026-10-11)
- Contents: 190 diagrams (draw.io, exported as SVG and PNG), 322 design documents (HTML and Markdown), 41 SysML v2 text files
- Japanese README (the primary one): [README.md](README.md)

This is a study built from public sources. It is not a NASA product and is not an official description of the vehicle.

## Language

The documents, the diagram labels, and the `doc` comments in the SysML files are written in **Japanese**. Only this README is in English.

Identifiers are language-neutral and are the same everywhere: document numbers (`SSD-FD-ECL-001`), interface numbers (`IF-ORB-01`), requirement numbers (`REQ-EPS-14`), and the SysML element names that are taken from them. A browser's page translation works on the HTML documents. It does not work on the text inside the SVG diagrams.

## What is inside

| Area | Contents |
|---|---|
| Structure | Block diagrams from the whole vehicle (Orbiter, External Tank, Solid Rocket Boosters, external systems) down to the 18 Orbiter systems and their lower levels, with a functional description for each block |
| Interfaces | An interface list, N2 charts, internal block diagrams with flows and units |
| Requirements and verification | System, subsystem, and (for ECLSS) third-level requirements, verification cases, and trace coverage with the remaining gaps listed |
| Behavior | Mission phases, use cases, state machines, activity diagrams for failure responses, sequence diagrams |
| Analysis | Budgets, parametric models, consumables profiles, a dynamic model of the cabin atmosphere, EMU consumables and prebreathe |
| Safety | Failure analysis per system (based on NASA's Independent Orbiter Assessment), failure modes, fault trees, fault detection and response, hazards |
| Variants | Differences between Orbiter vehicles and flights, flight test results (STS-1, STS-3) |
| Human systems | A row-by-row comparison with NASA-STD-3001 (crew health and human factors), task analysis, crew interfaces, habitability, and medical |

The documents cite their public sources by URL, and mark the places where the package made its own judgment. [REFERENCES.md](REFERENCES.md) lists the 235 sources.

## Browse online

Open <https://kei-shima.github.io/Space_Shuttle_MBSE/>. It shows the document index, from which you can reach every diagram and document. Boxes and table rows inside the diagrams are links to the documents that describe them.

| Page | Contents |
|---|---|
| `index.html` | Entry page (title block and table of contents) |
| `index_guide.html` | How to read the package, notes on sources |
| `index_figures.html` | Diagrams, grouped by viewpoint, with thumbnails |
| `index_documents.html` | Documents, grouped by system and by topic |
| `index_interfaces.html` | Interface list |
| `index_notes.html`, `index_notes_*.html` | Notes on differences between sources and on configuration changes |
| `index_history.html` | Revision history |

On github.com, HTML files are shown as source. To read on github.com instead, start from [docs/SSD-SYS-IDX-001.md](docs/SSD-SYS-IDX-001.md), which links to the Markdown version of each document.

## Repository layout

| Path | Contents | Open with |
|---|---|---|
| `html/index.html`, `html/index_*.html` | Document index | Browser |
| `html/*.svg` | The 190 diagrams (`SSD-SYS-ARC-001_p<number>_<name>.svg`) | Browser |
| `html/preview/*.png` | PNG versions of the diagrams | Image viewer |
| `html/docs/*.html` | The 322 documents | Browser |
| `docs/*.md` | Markdown version of the same documents | github.com, VS Code |
| `SysML/*.sysml` | 41 SysML v2 text files | VS Code (see below) |
| `Draw_io/SSD-SYS-ARC-001.drawio` | Source of the diagrams (190 pages) | draw.io |
| `REFERENCES.md` | List of the public sources cited | github.com, VS Code |
| `LICENSE.md` | License text (CC BY 4.0) | github.com, VS Code |
| `index.html`, `.nojekyll` | Redirect to `html/index.html` and a marker file, both for GitHub Pages | — |
| `.vscode/` | Recommended extensions and settings for VS Code | — |

## Clone and read offline

```sh
git clone --depth 1 https://github.com/kei-Shima/Space_Shuttle_MBSE.git
cd Space_Shuttle_MBSE
```

Open `html/index.html` in a browser. All links are relative, so no web server is needed.

The working tree is about 700 MB. `--depth 1` skips the history and makes the download faster. The largest file is `html/SSD-SYS-ARC-001_p5_register.svg` (about 61 MB).

## Open the SysML v2 models in VS Code

The files in `SysML/` open with the VS Code extension **SysML v2.0 Language Support** (publisher JamieD, ID `jamied.sysml-v2-support`). They were checked with v0.55.0. The extension includes the SysML v2 standard library.

1. Install the extension. VS Code suggests it when you open this folder, or run:
   ```sh
   code --install-extension jamied.sysml-v2-support
   ```
2. Open the repository folder (`code .`), not a single file. The files refer to definitions in each other.
3. Open any `.sysml` file in `SysML/`. Highlighting, validation, go to definition (F12), and find references are available.
4. For diagrams, run one of these from the Command Palette (Ctrl+Shift+P):
   - `SysML: Show Model Explorer`
   - `SysML: Show Model Visualizer`
   - `SysML: Show Model Dashboard`

### Validation results

The 41 files load in dependency order in the OMG reference implementation, SysML v2 Pilot Implementation 0.62.0, with 0 errors and 0 warnings.

The VS Code extension applies its own rules. With v0.55.0 it reports 0 errors and the warnings below. They come from limits of the extension, and the model does not need to change. `.vscode/settings.json` already turns off two style checks (`naming-convention` and `missing-doc`), because element names follow the document identifiers.

| Warning | Count | Cause |
|---|---|---|
| `unresolved-type` | 3,733 | References to usages in other packages and to some standard-library units (`°F_abs`, `Btu_IT/h`) are not resolved |
| `unsatisfied-requirement`, `unverified-requirement` | 95 each | Requirements that are shown to be met by other means than `satisfy` and `verify` |
| `unused-definition` | 119 | Definitions kept as lists (roles, failure modes) |
| `unresolved-constraint-reference` | 76 | Unit symbols inside constraint expressions are read as names |

## Diagram source (draw.io)

`Draw_io/SSD-SYS-ARC-001.drawio` opens in draw.io Desktop or in the VS Code extension Draw.io Integration (`hediet.vscode-drawio`). It has 190 pages and is about 14 MB, so it takes a while to open. Links inside the diagrams are relative to the exported SVG files in `html/`, so they do not work inside draw.io.

## Revisions and tags

The package revision is a letter code (Rev. A, …, Rev. Z, Rev. AA, …). Each revision that was pushed to GitHub has a tag named `rev-<code>`, for example `rev-BR`. List them with `git tag -l`. The tags `rev-BP` and later use the folder layout described above. Earlier tags keep everything in the repository root.

## Line endings

`.gitattributes` turns off line-ending conversion for all files (`* -text`), so that the generated files are byte-for-byte the same on every OS.

## License

Unless noted otherwise, the content of this repository is released under [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). The full text is in [LICENSE.md](LICENSE.md).

- You may copy, redistribute, and adapt the material for any purpose. Give credit, link to the license, and say whether you made changes.
- Example credit: "Space Shuttle MBSE (https://github.com/kei-Shima/Space_Shuttle_MBSE), CC BY 4.0"
- The license covers the diagrams, documents, and SysML v2 text made in this repository. Rights in the cited public sources ([REFERENCES.md](REFERENCES.md)) remain with their publishers.
