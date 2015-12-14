# emoji-cli

Saw [@zzak](https://github.com/zzak) & [@hone](https://github.com/hone)'s talk at #rubykaigi 2015, now playing with [hone/mruby-cli](https://github.com/hone/mruby-cli). Don't mind me.

## installation, for macs only (at your own risk! :warning:)

Head to [releases](https://github.com/muan/emoji-cli/releases), download the ZIP, extract it, and place it in your `$PATH`.

## what does this do?

![image](https://cloud.githubusercontent.com/assets/1153134/11780944/439ed114-a2a9-11e5-80e3-0c05d960e78e.png)

```
$ emoji-cli angry
1. 😠
2. 👿
3. 😡
4. 👊
5. 💢
Choose [1~5] 2
Copied 👿 !

$ emoji-cli poop
Copied 💩 !

$ emoji-cli sushi
Copied 🍣 !

$ 🍣 🍣 🍣 🍣 🍣 🍣 !!!!
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
