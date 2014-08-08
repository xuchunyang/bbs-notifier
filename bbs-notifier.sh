#!/usr/bin/env bash

#----------------------------------------------------

SBBS_API_URL="http://bbs.seu.edu.cn/api/"

USER_NAME="xcy"
USER_PASSWORD="xxx"
USER_EMAIL="xuchunyang56@gmail.com"

# 1. get token
token=$(curl -s --data "user=${USER_NAME}&pass=${USER_PASSWORD}" ${SBBS_API_URL}token.json | jq ".token")

# my token is eGN5:==QfMFZSD71CUxQ2tKzcbZmw

# 2. get and notification and parse
## There are 3 types notifications, "mails", "ats" and "replies"
curl -s --data "token=${token}" http://bbs.seu.edu.cn/api/notifications.json | jq '.mails'

# 4. send email
echo "unread notifications" | mail -s "[BBS通知]" $USER_EMAIL