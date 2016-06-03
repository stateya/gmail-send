FROM alpine

RUN apk update
RUN apk add perl
RUN apk add perl-net-ssleay
RUN wget http://www.jetmore.org/john/code/swaks/files/swaks-20130209.0/swaks
ADD mail.sh /mail

CMD /bin/sh /mail



