FROM alpine:3.17

RUN apk add build-base cmake 

WORKDIR /test
ADD ./PreTest.sh /test
RUN chmod +x PreTest.sh

CMD [ "./PreTest.sh"]
