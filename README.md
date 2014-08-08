# bbs notifier

For [东南大学虎踞龙蟠BBS](http://bbs.seu.edu.cn)

## Required tools

* curl (pre-installed)
* mail (pre-installed)
* jq (use `brew install jq` to install, for more information see [jq](https://github.com/stedolan/jq))


## Usage
1. Setup `mail` to send mail from the command line
  - for example, [Using MacOSX Lion command line mail with Gmail as SMTP](http://www.anujgakhar.com/2011/12/09/using-macosx-lion-command-line-mail-with-gmail-as-smtp/)
2. Change *USER_NAME* and *USER_PASSWORD* in `bbs-notifier.sh`to yours
3. Setup 'cron' to evluate `bbs-notifier.sh` regularly
  - e.g. run `crontab -e` and enter `*/15 * * * *  /usr/bin/local/bbs-notifier.sh`

## TODO
- [x] Write `bbs-notifier.sh`
- [ ] Donot send twice

## Reference
* [虎踞龙蟠BBS API 文档](http://bbs.seu.edu.cn/api-documentation/)