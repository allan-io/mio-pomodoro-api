curl "http://localhost:4741/pomodoros/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"
echo
