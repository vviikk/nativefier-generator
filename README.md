# A collection of Apps generated by Nativefier

Check the Makefile for more info. Feel free to create PRs :) I use [Velja][velja] for my daily work, which is a browser chooser.
This is a collection of apps I use on a daily basis. e.g. JIRA, YouTube.
Velja will open the respective links in the respective apps.

## Apps supported

1. [YouTube][yt] - Maintains single Window / Tab, & supports Sign-in
2. [JIRA][jira] - Opens each ticket in separate tabs

## How to use

Clone this repository and use `make`. All Nativefier applications will be in `~/Applications`.

```shell
git clone https://github.com/vviikk/nativefier-generator.git
```

```shell
$ make youtube
App built to /Users/vik/Applications/YouTube Native-darwin-arm64, move to wherever it makes sense for you and run the app bundle.
```

[yt]: https://youtube.com
[velja]: https://sindresorhus.com/velja.html
[jira]: https://atlassian.com/software/jira
