FROM phx.ocir.io/intcgbuconsulting/brmbase:v1

ADD fm_cust_pol_config.c /opt/pin/BRM/source/sys/fm_cust_pol
ADD build.sh /opt/pin/BRM/
RUN cd /opt/pin/BRM
RUN chmod +x build.sh
RUN build.sh
