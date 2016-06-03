# Gmail 経由でメールを送る為の Container です。

こんな感じで実行できます。


```
docker run --rm \
  -e GMAIL=<あなたのGmail> \
  -e TO=<メールを送りたい人のMail> \
  -e SENDER=<あなたのGMAIL> \
  -e GMAIL_PASSWORD=<Gmailパスワード> \
  -e SUBJECT="<タイトル>" \
  -e BODY="<内容>" \
    gmail-send
```


alpine Linux を使っている為、Image のサイズは 47.56 MBになっています。
主にシステムエラー時のログ通知等が目的です。

## Gmail アカウントで"安全性の低いアプリの許可"をして下さい

ログインとセキュリティ
https://myaccount.google.com/security

から"安全性の低いアプリの許可"で許可する

## 使っているメールコマンド
Swaks - Swiss Army Knife for SMTP
http://www.jetmore.org/john/code/swaks/
