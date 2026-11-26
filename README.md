# homebrew-tap

Homebrew casks for fluffyrabbot's macOS applications.

```bash
brew install --cask fluffyrabbot/tap/icecap
```

| Cask | Application |
|---|---|
| `icecap` | [icecap](https://github.com/fluffyrabbot/icecap), a menu bar organizer that groups icons behind a chevron. |

Each cask is written by its application's release script. Applications that update
themselves declare `auto_updates true`, so `brew upgrade` leaves them to their own updater.
