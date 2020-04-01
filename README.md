# `cbsd` host at `i.trombik.org`

This project manages a `cbsd` server at `i.trombik.org`.

The project is managed by a `Rakefile`, which provides most of common
operations, such as deploying and testing. Available targets can be shown by:

```
bundle exec rake -T
```

## Hosts

### `staging` environment

| Host                        | Description                       |
|-----------------------------|-----------------------------------|
| `cbsd.i.trombik.org`        | The `cbsd` host                   |

### `prod` environment

TBW

| Host                        | Description                       |
|-----------------------------|-----------------------------------|

## `cbsd` cheat sheet

Install `base`

```
cbsd repo action=get sources=base
```

Install different `base` from the host

```
cbsd repo action=get sources=base ver=11.3-RELEASE
```

Create a jail with dialog.

```
cbsd jconstruct-tui
```

Create a jail from a file.

```
cbsd jcreate jconf=/usr/local/jails/ftmp/j1.8961.jconf
```

## Environments

The project has two environments. To choose environment, set
`ANSIBLE_ENVIRONMENT` variable. If the environment variable is not defined, it
defaults to `virtualbox`.

### `virtualbox`

The `virtualbox` environment is a test environment on `virtualbox`. The
environment is isolated from external network, completely running on your
local machine.

### `prod`

The `prod` environment is the live, production environment.

## Usage

To deploy in an environment run `up` and `provision` targets.

```
bundle exec rake up provision
```

To perform unit tests, run `test:serverspec:all` target.

```
bundle exec rake test:serverspec:all
```

To perform integration tests, run `test:integration:all` target.

```
bundle exec rake test:integration:all
```
