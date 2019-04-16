curl "http://localhost:4741/pomodoros/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"
echo
