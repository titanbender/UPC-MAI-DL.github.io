# Narration audio

19 MP3 files, one per screen, 6.3 minutes total, ~2.3 MB.

Rendered offline with [Piper](https://github.com/rhasspy/piper) neural TTS
(`en-us-ryan-high`) from the `SAY` script inside `../index.html` — the same
lines, phonetic spellings and per-line pauses the app would otherwise hand to
the device's speech synthesis. Regenerating from that single source keeps the
audio and the captions from drifting apart.

`cues.json` holds each line's start and end time; the build inlines it into the
page so the caption strip can follow playback.

To re-render in a different voice, point the renderer at another Piper model —
the pipeline reads the script straight out of the HTML.
