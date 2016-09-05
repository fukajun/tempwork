# tempwork

Execute a command in a temporary directory.

## Usage

```
Usage: tempwork command...
```

```sh
$ tempwork bash -c 'pwd; date > tmp.txt; ls ; cat tmp.txt'
/private/var/folders/xc/phct0zx57cgc4z07mkt7pp8w0000gp/T/tempwork859985632
tmp.txt
Sat Sep  3 18:38:24 JST 2016

$ ls /private/var/folders/xc/phct0zx57cgc4z07mkt7pp8w0000gp/T/tempwork859985632
ls: /private/var/folders/xc/phct0zx57cgc4z07mkt7pp8w0000gp/T/tempwork859985632: No such file or directory

$ echo -e '#!/bin/sh\npwd\necho hello' > tmp.sh
$ chmod +x tmp.sh
$ tempwork ./tmp.sh
/private/var/folders/xc/phct0zx57cgc4z07mkt7pp8w0000gp/T/tempwork037699548
hello

$ pwd
/Users/winebarrel/work

$ tempwork bash -c 'echo $TW_ORIG_DIR; echo $TW_TEMP_DIR'
/Users/winebarrel/work
/var/folders/xs/_d_q1znn5897kgxx1l8d14vr0000gn/T/tempwork121369379
```

```sh
$ cat ./tmp.sh
#!/usr/bin/tempwork /bin/bash
echo hello
pwd

$ ./tmp.sh
hello
/private/var/folders/xc/phct0zx57cgc4z07mkt7pp8w0000gp/T/tempwork708816166
```
