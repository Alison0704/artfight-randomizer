# ArtFight Randomizer

A tiny static web page that picks one of my [ArtFight](https://artfight.net) characters at random and redirects you to their profile — a fun "surprise me" link to share.

## How it works

`index.html` holds a list of characters (name + URL) and, on load, redirects the browser to a randomly chosen one. It has no dependencies and runs entirely client-side, so it can be hosted as-is (e.g. GitHub Pages).

To add or change characters, edit the `characters` array in `index.html`.

## Attack workflow

The `Makefile` scaffolds a working folder for a new drawing ("attack") from a Clip Studio Paint template:

```sh
make create-attack CHARACTER='alister' INSTA='@handle' URL='https://artfight.net/character/ID'
```

This creates `attacks/<character>/` containing a copy of `templates/Template.clip` and a `notes.txt` with the character's URL and Instagram handle.
