FROM gcc:12.2

RUN apt-get update
RUN apt-get install -y cmake 

WORKDIR /test
ADD ./PreTest.sh /test
RUN chmod +x PreTest.sh
# RUN git clone https://github.com/google/googletest.git --depth 1


CMD [ "./PreTest.sh"]
# CMD mkdir build && cd build && cmake ../ && make && ctest

