# Heliophorus-cantliei
A docker container that simply waits for a number of seconds and then exits.

This project is named after the [Heliophorus cantliei](https://species.wikimedia.org/wiki/Heliophorus_cantliei) butterfly.

## Build

```
docker build -t cantliei .
```

## Usage

```
docker run cantliei <seconds>
```

For example:

```
docker run cantliei 10
```

would wait for 10 seconds and then exit.
