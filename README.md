# Heliophorus-cantliei
A container that waits for a number of seconds and then exits with a configurable exit code.

This project is named after the [Heliophorus cantliei](https://species.wikimedia.org/wiki/Heliophorus_cantliei) butterfly.

## Build

```
podman build -t cantliei .
```

## Usage

```
podman run cantliei <seconds> [exit-code]
```

- `seconds` - number of seconds to wait
- `exit-code` - exit code to return (default: `0`)

### Examples

Wait 10 seconds and exit successfully:

```
podman run cantliei 10
```

Wait 5 seconds and exit with code 1 (simulating a failure):

```
podman run cantliei 5 1
```
