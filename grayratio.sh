#!/bin/bash
CHATDB="$HOME/Library/Messages/chat.db"
DAYS=30
LIMIT=10

#TODO: check gracefully for sqlite3
#TODO: check gracefully for database

SECONDS=$((DAYS*86400))
QUERY="
 SELECT handle.id,
        COUNT(*)                                 AS 'total msgs',
        SUM(msg.is_from_me = 0)                  AS 'from them',
        SUM(msg.is_from_me = 1)                  AS 'from me',
        SUM(msg.is_from_me = 1)*100 / COUNT(*)   AS 'my percentage'
   FROM message AS msg
        INNER JOIN handle
                ON msg.handle_id = handle.ROWID
  WHERE msg.service = 'iMessage'
  AND (
    (strftime('%s','now') - strftime('%s','2001-01-01')) - msg.date < $SECONDS
  )
  GROUP BY handle_id
  ORDER BY COUNT(*) DESC
  LIMIT $LIMIT;
"

echo "💬  Your iMessage stats over last $DAYS days, top $LIMIT exchanges."
echo "$QUERY" | sqlite3 -column -header $CHATDB
