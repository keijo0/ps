# RootDO [![AUR](https://img.shields.io/aur/version/rdo.svg)](https://aur.archlinux.org/packages/rdo/)

This project aims to be a very slim alternative to both sudo and doas.

### Installation

If you are on Arch Linux, you can download the package via the [AUR](https://aur.archlinux.org/packages/rdo/).

You can clone and build rdo with the following set of commands:

```sh
git clone https://codeberg.org/sw1tchbl4d3/rdo
cd rdo
make
sudo make install
```

After that, you'll have to configure rdo to allow you to use it.
To do this, edit `/etc/rdo.conf`, and set the group variable to the admin group you are in.

Then you're good to go!

To uninstall:
```sh
sudo make uninstall
```

### Usage

```sh
rdo [command]
```

The configuration file has the following variables:
```
group=wheel
wrong_pw_sleep=1000
session_ttl=5
```

- `group`: The group of users that is allowed to execute rdo.
- `wrong_pw_sleep`: The amount of milliseconds to sleep at a wrong password attempt. Must be a positive integer. Set to 0 to disable.
- `session_ttl`: The amount of minutes a session lasts. Must be a positive integer. Set to 0 to disable.

### Benchmarks

The benchmark: Execute `whoami` (GNU coreutils 8.32) 1000 times.

Yes, this is a silly benchmark. Yes, the performance gain in real world application is close to nothing.

But it's fun!

|Program|Time|
--- | --- 
sudo 1.9.9 | 22.12s
opendoas 6.8.2 | 13.5s
rdo 1.4 | 3.5s
Baseline | 2.1s

Baseline here is how long it took without any wrapper to make it root.

These benchmarks were done on a single core of an `AMD FX-8350` processor, on Artix Linux version `5.16.12-zen1-1-zen`.

`sudo` and `opendoas` were pulled from the pacman repos, rdo via AUR.

All configs were kept as default, except allow the `wheel` group on both + enable `persist` on doas.

Script used:
```sh
#!/bin/sh

$1 whoami

current=$(date +%s.%N)
for i in {1..1000}; do
	$1 whoami 2>&1 >/dev/null
done
done=$(date +%s.%N)

echo $done - $current | bc
```

The script requires `bc` to be installed, for floating point arithmetics.
