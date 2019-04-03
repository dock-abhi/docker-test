FROM phx.ocir.io/intcgbuconsulting/brmbase:v1

COPY fm_cust_pol_config.c /opt/pin/BRM/source/sys/fm_cust_pol
COPY build.sh /opt/pin/BRM/
RUN cd /opt/bin/BRM
RUN ./build.sh
