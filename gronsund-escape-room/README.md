# The Grønsund Casket

A self-contained outdoor escape room for **Grønsund**, the sound between Falster,
Bogø and Møn in Denmark. History- and mystery-driven, 30–45 minutes, five stops,
one phone per group.

Open `index.html` in a phone browser. It is a single file with no build step, no
dependencies and no back end. Load it once with signal and it runs offline;
progress is kept in `localStorage`, so a locked phone does not lose the game.

**Turn the volume up.** A narrator tells the story at every stop.

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

## The narrator

Every screen is narrated aloud — the opening, each stop, each solve, the ending.
The voice is the device's own speech synthesis (Web Speech API), so it needs no
network, no audio files and no permission prompt.

- **Danish is spelled phonetically for the voice.** The caption reads `Grønsund`,
  the narrator is handed `Gruhn-soon`; likewise `Møllen`/`Muh-len`,
  `Bavnen`/`Bow-nen`, `Diget`/`Dee-yet`, `Skrin`/`Skreen`, and
  `Jeg har det bedre nu`/`Yai har deh beh-dreh noo`. Years are spelled out
  (`seventeen eleven`) so the voice does not read them as cardinal numbers.
- **Live captions.** The line being spoken shows in a strip under the header, so
  the game still works in wind, on a bad speaker, or for anyone who would rather
  read it. The strip holds a fixed height so the page does not jump.
- **Controls.** The speaker in the top corner silences and restores the narrator;
  `stop` cuts the current line, `replay` runs the screen again. Voice, pace and
  sound effects are in ☰ → The narrator. Speech stops when the phone is pocketed
  or the player switches app.
- **Pacing is authored per line** — rate, pitch and the length of the silence after
  it — so the delivery can land a pause where the story needs one.
- **Sound effects** are synthesised with the Web Audio API: oak splitting when a
  splinter comes away, a dull knock on a wrong answer, a hinge and three rising
  tones when the casket opens.
- Browsers without speech synthesis get the game silently, with a note in the
  setup screen; nothing else changes.

## Running it

The suggested route sits on the Falster shore around Næs, east of Stubbekøbing —
Grønsund Færgegård, the old ferry bridge, the site of Borrehuset, high ground, and
the dike. Stop names are editable in the app (☰ → Set up the route), and the
puzzles do not depend on finding anything in the real world, so the game also works
from a single bench, a garden or indoors. Turn off walking mode for that.

**Open in maps** tries `window.open`. Sandboxed embeds (and some in-app browsers)
block that silently, so the button detects the block and falls back to showing the
place name as selectable text with a copy button, rather than doing nothing.

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
