#! /bin/sh

echo "===== Mail sending ... ====="
echo "TO             : ${TO}"
echo "SENDER         : ${SENDER}"
echo "GMAIL          : ${GMAIL}"
echo "GMAIL_PASSWORD : `echo "${GMAIL_PASSWORD}" | sed "s/./*/g"`"
echo "SUBJECT        : ${SUBJECT}"
echo "BODY is follow"
echo "${BODY}"

perl /swaks \
  -t ${TO} \
  -f ${SENDER} \
  -a -tls \
  -au ${GMAIL} \
  -ap ${GMAIL_PASSWORD} \
  -s smtp.gmail.com \
  -p 587 \
  --h-Subject "${SUBJECT}" \
  --body "${BODY}"
