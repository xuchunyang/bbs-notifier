#!/usr/bin/env bash

#----------------------------------------------------
USER_NAME="xcy"
USER_PASSWORD="xxx"
USER_EMAIL="xuchunyang56@gmail.com"

#----------------------------------------------------
SBBS_API_URL="http://bbs.seu.edu.cn/api/"

# TODO check return status
STATUS="false"
# 1. get token
token=$(curl -s --data "user=${USER_NAME}&pass=${USER_PASSWORD}" ${SBBS_API_URL}token.json | jq ".token")

# 2. get and notification and parse
## There are 3 types notifications, "mails", "ats" and "replies"
MAIL=$(curl -s --data "token=${token}" http://bbs.seu.edu.cn/api/notifications.json | jq '.mails')

# TODO Add other two fields

# 4. send email
if [[ "$MAIL" == "null" ]]; then
	echo "no any notifications"
else
	echo "$MAIL" | mail -s "[BBS通知]" $USER_EMAIL
fi