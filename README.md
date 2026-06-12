# CavePowers 🪨⚡

> Superpowers methodology + Caveman compression. Brain big. Mouth small.

Fusion plugin for Claude Code: structured engineering workflows from [Superpowers](https://github.com/punkpeye/superpowers) + ~65% token compression from [Caveman](https://github.com/juliusbrussee/caveman). One command to activate both.

## Install

**Windows (PowerShell):**
```powershell
irm https://raw.githubusercontent.com/mateuscaldasdev/cavepowers/main/install.ps1 | iex
```

**Unix/Mac:**
```bash
curl -fsSL https://raw.githubusercontent.com/mateuscaldasdev/cavepowers/main/install.sh | bash
```

## Usage

```
/cavepowers              → activate (session-scoped)
/cavepowers off          → deactivate
normal mode              → deactivate
```

## Skills

| Command | What |
|---|---|
| `/cavepowers` | Activate compressed mode |
| `/cavepowers:brainstorming` | Design before code — no implementation until approved |
| `/cavepowers:systematic-debugging` | Root cause first — no fix without understanding why |
| `/cavepowers:tdd` | Test first, always — red → green → refactor |
| `/cavepowers:writing-plans` | Detailed plans with exact code per step |
| `/cavepowers:run-subagent` | Execute plan via fresh subagent per task (recommended) |
| `/cavepowers:run-inline` | Execute plan inline in current session with checkpoints |
| `/cavepowers:dispatch` | Multiple agents in parallel for independent problems |

## What Changes

All Superpowers iron laws stay intact. What compresses:

| Normal | CavePowers |
|---|---|
| "The reason your component re-renders is that you're creating a new object reference on each render cycle..." | "New object ref each render. Wrap in `useMemo`." |
| "Sure! I'd be happy to help. The issue is most likely caused by..." | "Bug in auth middleware. Token expiry check: use `<=` not `<`. Fix:" |

Same fix. ~65% fewer tokens.

## Credits

CavePowers combines two open source projects:

- **[Superpowers](https://github.com/punkpeye/superpowers)** by punkpeye — structured engineering skills for Claude Code
- **[Caveman](https://github.com/juliusbrussee/caveman)** by Julius Brussee — output token compression without loss of technical accuracy

All credit for the methodologies goes to the original authors. CavePowers only combines them.

## License

MIT
