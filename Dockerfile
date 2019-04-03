FROM phx.ocir.io/intcgbuconsulting/brmbase:v1

ADD fm_cust_pol_config.c /opt/pin/BRM/source/sys/fm_cust_pol/fm_cust_pol_config.c
ADD build.sh /opt/pin/BRM/build.sh
RUN cd /opt/pin/BRM
RUN chmod +x build.sh
RUN build.sh
