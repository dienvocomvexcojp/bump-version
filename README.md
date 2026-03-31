# bump-version

A simple CLI tool for bumping semantic versions in your project. Supports `app.yml`, `package.yml`, and `package.json`.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/dienvocomvexcojp/bump-version/main/install.sh | bash
```

Or install to a custom directory:

```bash
INSTALL_DIR=/usr/local/bin curl -fsSL https://raw.githubusercontent.com/dienvocomvexcojp/bump-version/main/install.sh | bash
```

### Manual Install

```bash
curl -fsSL https://raw.githubusercontent.com/dienvocomvexcojp/bump-version/main/bump-version -o ~/.local/bin/bump-version
chmod +x ~/.local/bin/bump-version
```

## Usage

Run inside a project directory that contains `app.yml`, `package.yml`, or `package.json` with a `version` field.

```bash
# Bump minor version (default): 1.2.3 -> 1.3.0
bump-version

# Bump patch version: 1.2.3 -> 1.2.4
bump-version --patch

# Bump major version: 1.2.3 -> 2.0.0
bump-version --major

# Show help
bump-version --help
```

## What it does

1. Switches to `develop` or `dev` branch if one exists
2. Detects the version file (`app.yml` > `package.yml` > `package.json`)
3. Reads the current version (`X.Y.Z` format)
4. Bumps the version based on the flag (`--patch`, `--minor`, `--major`)
5. Updates the version file
6. Commits the change with message `chore: Bump <file> to <version>`

## Supported Files

| File | Format |
|------|--------|
| `app.yml` | `version: X.Y.Z` |
| `package.yml` | `version: X.Y.Z` |
| `package.json` | `"version": "X.Y.Z"` |

## Uninstall

```bash
rm ~/.local/bin/bump-version
```

## License

MIT
