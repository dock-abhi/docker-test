FROM phx.ocir.io/intcgbuconsulting/brmbase:v1

ADD fm_cust_pol_config.c /opt/pin/BRM/source/sys/fm_cust_pol/fm_cust_pol_config.c
RUN ls -l /opt/pin/BRM
RUN chmod +x /opt/pin/BRM/build.sh
RUN /opt/pin/BRM/build.sh
RUN ls -l /opt/pin/BRM/source/sys/fm_cust_pol
