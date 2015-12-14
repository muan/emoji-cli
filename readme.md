# emoji-cli

Saw [@zzak](https://github.com/zzak) & [@hone](https://github.com/hone)'s talk at #rubykaigi 2015, now playing with [hone/mruby-cli](https://github.com/hone/mruby-cli). Don't mind me.

## installation, for macs only (at your own risk! :warning:)

Head to [releases](https://github.com/muan/emoji-cli/releases), download the ZIP, extract it, and place it in your `$PATH`.

## what does this do?

![image](https://cloud.githubusercontent.com/assets/1153134/11781050/35ab1cce-a2aa-11e5-8cb6-af446dbc541c.png)

```
$ emoji-cli flowers --random
Copied 🌺 !

$ emoji-cli flowers --random
Copied 🌹 !

$ emoji-cli fruit --random
Copied 🍍 !

$ emoji-cli fruit --random
Copied 🍒 !

$ emoji-cli halloween
1. 👻
2. 👹
3. 🎃
4. 🏮
Choose [1~4] 3
Copied 🎃 !

$ emoji-cli noodle -r
Copied 🍜 !
```

## todo

- cross platform
- fix the tests
- pagination?!

## development

Need mruby and docker toolbox.

```bash
# edit mrblib/emoji-cli.rb
# compile
$ docker-composer run compile
# try
$ ./mruby/build/i386-apple-darwin14/bin/emoji-cli poop
```
