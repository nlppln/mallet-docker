FROM java:7

MAINTAINER "j.vanderzwaan@esciencecenter.nl"

ADD http://mallet.cs.umass.edu/dist/mallet-2.0.8.tar.gz /
RUN tar -zxf /mallet-2.0.8.tar.gz
ENV PATH="/mallet-2.0.8/bin:${PATH}"

CMD /bin/bash
