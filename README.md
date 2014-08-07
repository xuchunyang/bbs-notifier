# bbs notifier

For [东南大学虎踞龙蟠BBS](bbs.seu.edu.cn)

## Setup
I think both Linux and Mac OS X have these command line tools i.e. bash, curl, and cron, installed by default. I'm using Mac in this progress.

1. Acquire API token
  * use *curl*
2. Query notifinications
  * use bash with *curl*
3. Send email if necessary
  * parse the notifinications(json, give *jq* a try)
  * write a sh script using *mail*
4. 定期执行 
  * search *cron* for how to use it

## TODO
- [ ] 写一个 script 执行 2 ，并根据结果，条件执行 3

## Reference
* [虎踞龙蟠BBS API](http://bbs.seu.edu.cn/api-documentation/)
* http://www.anujgakhar.com/2011/12/09/using-macosx-lion-command-line-mail-with-gmail-as-smtp/