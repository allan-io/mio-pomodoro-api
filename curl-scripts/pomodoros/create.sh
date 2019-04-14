curl "http://localhost:4741/pomodoros" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "pomodoro": {
      "work_time": "'"${WORK}"'",
      "break_time": "'"${BREAK}"'",
      "work_percent_complete": "'"${WORK_PERCENT}"'",
      "break_percent_complete": "'"${BREAK_PERCENT}"'",
      "active_theme": "'"${THEME}"'"
    }
  }'

echo
