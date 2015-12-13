# emoji-cli

Saw [@zzak](https://github.com/zzak) & [@hone](https://github.com/hone)'s talk at #rubykaigi 2015, now playing with [hone/mruby-cli](https://github.com/hone/mruby-cli). Don't mind me.

## installation, for macs only (at your own risk! :warning:)

Head to [releases](https://github.com/muan/emoji-cli/releases), download the ZIP, extract it, and place it in your `$PATH`.

## what does this do?

![image](https://cloud.githubusercontent.com/assets/1153134/11766088/a080f2d6-a1b9-11e5-8033-b80c028ad9f8.png)

```
$ emoji-cli angry
choose:
1. 👿
2. 😠
3. 😡
4. 👊
5. 💢
-> 3
copied 😡 ‼️

$ emoji-cli poop
copied 💩 ‼️

$ emoji-cli sushi
copied 🍣 ‼️

$ 🍣 🍣 🍣 🍣 🍣 🍣 🍣 🍣 🍣 🍣
```

## todo

- cross platform
- fix the tests
- better emojilib integration
- `--feeling-lucky`
- pagination?!
- the exact much for a keyword should come first
