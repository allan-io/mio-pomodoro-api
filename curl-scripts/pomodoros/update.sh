curl "http://localhost:4741/pomodoros/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "pomodoro": {
      "work_time": "'"${WORK}"'",
      "break_time": "'"${BREAK}"'",
      "work_percent_complete": "'"${WORK_PERCENT}"'",
      "break_percent_complete": "'"${BREAK_PERCENT}"'",
      "theme": "'"${THEME}"'"
    }
  }'

echo
