#! /bin/sh

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

