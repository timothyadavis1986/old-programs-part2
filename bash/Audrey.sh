#!/usr/bin/env bash
date=$(sed '1q;d' bookmark.txt)
curdate=`date +"%Y-%m-%d"`
sed "s/${curdate}*//g" Audrey.txt>> Audrey.txt
sqlite3 /Users/timothydavis/Library/Messages/chat.db >>Audrey.txt <<END_SQL
select strftime("%Y-%m-%d", (date / 1000000000) + 978307200,'unixepoch'), (case when is_sent is 0 then 'Audrey' else 'Tim' end), text from message where handle_id=136 and strftime("%Y-%m-%d", (date / 1000000000) + 978307200,'unixepoch') >= '$date';
END_SQL
rm bookmark.txt
curdate=`date -j -v -1d -f "%Y-%m-%d" "$curdate" +%Y-%m-%d`
echo "$curdate"
echo "$curdate" > bookmark.txt
