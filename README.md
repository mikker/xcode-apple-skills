# Xcode Apple Skills

An agent-agnostic skill exposing the authoritative Apple guidance bundled with
Xcode through one compact meta skill. The exported skills remain out of the
system prompt until they are relevant to a task.

## Install

```sh
npx skills add mikker/xcode-apple-skills
```

The repository follows the common `SKILL.md` layout. The `extension/` directory
is only a thin Pi discovery adapter; the skill and its bundled guidance do not
depend on Pi.

Refreshing the bundle with `./bootstrap.sh` requires macOS and Xcode 27 beta.
