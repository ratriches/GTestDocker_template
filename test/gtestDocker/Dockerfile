FROM gcc:12.2

RUN apt-get update
RUN apt-get install -y cmake 

WORKDIR /test
ADD ./PreTest.sh /test
RUN chmod +x PreTest.sh

CMD [ "./PreTest.sh"]
