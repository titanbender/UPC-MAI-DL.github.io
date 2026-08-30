# The Grønsund Casket

A self-contained outdoor escape room for **Grønsund**, the sound between Falster,
Bogø and Møn in Denmark. History- and mystery-driven, 30–45 minutes, five stops,
one phone per group.

Open `index.html` in a phone browser. It is a single file with no build step, no
dependencies and no back end. Load it once with signal and it runs offline;
progress is kept in `localStorage`, so a locked phone does not lose the game.

## The game

Players follow a fictional casket that Marie Grubbe is said to have hidden at the
Grønsund ferry house in 1711. Five stops, each anchored to a real period in the
sound's history, each yielding one splinter carrying a letter and its position in
the final word.

| Stop | Period | Puzzle | Answer | Splinter |
|---|---|---|---|---|
| 1 | c. 1231 — the king's toll | Arithmetic on a toll ledger | `35` | R (3) |
| 2 | Feb 1658 — the ice winter | Route-tracing on a 6×6 ice chart | `Møllen` | N (5) |
| 3 | 19 May 1711 — Borrehuset | Truth-teller logic, exactly one true | `Loftet` | S (1) |
| 4 | 1813 — the beacon coast | Hidden message, every fifth word | `Bavnen` | I (4) |
| 5 | 13 Nov 1872 — the storm flood | Acrostic verse | `Diget` | K (2) |

Final word: **SKRIN** (Danish for a small casket). Optional physical padlock code: **1711**.

Answers are matched case-insensitively with Danish characters folded (`ø→o`,
`æ→a`, `å→a`, and the typed digraphs `oe`/`ae`/`aa`), so both `Møllen` and
`moellen` are accepted. Each puzzle has three hint levels; the third gives the
answer away.

## Running it

The suggested route sits on the Falster shore around Næs, east of Stubbekøbing —
Grønsund Færgegård, the old ferry bridge, the site of Borrehuset, high ground, and
the dike. Stop names are editable in the app (☰ → Set up the route), and the
puzzles do not depend on finding anything in the real world, so the game also works
from a single bench, a garden or indoors. Turn off walking mode for that.

## History

Everything presented as fact in the game is fact, and the closing screen lists what
is real and what was invented for the puzzles. The real anchors:

- Grønsund is recorded in writing from around 1186 as *Gronesund*, "the green sound".
- Kong Valdemars Jordebog (1230s) recorded crown income across Falster and Møn.
- Karl X Gustav crossed the frozen Little Belt on 30 January 1658 and marched over
  Langeland, Lolland and Falster toward Zealand; a warship froze fast in Grønsund
  and the assault on Møn failed.
- Marie Grubbe, once married to Ulrik Frederik Gyldenløve, lived at Borrehuset by
  the Grønsund ferry from 1706. Her husband Søren Sørensen Møller shot a skipper
  from Dragør on 19 May 1711 and served three years in irons at Bremerholm. Ludvig
  Holberg lodged there that year, fleeing plague, and wrote her into Epistle 89.
- Grønsund Færgegård, about 5 km east of Stubbekøbing, has a main building from
  1731 and a travellers' stable from 1750, both listed in 1950.
- In 1813 the Postmaster General issued a detailed tariff for the crossing.
- The storm surge of 13 November 1872 raised the water 3.0–3.5 m, drowned close to
  100 people ashore and wrecked around 200 ships; Falster's east-coast dike
  followed.

The casket, the splinters and all five puzzle texts are invented.
