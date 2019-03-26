FROM phx.ocir.io/intcgbuconsulting/brmbaseimage:v2

RUN cp fm_cust_pol /opt/pin/BRM/source/sys/fm_cust_pol
RUN cd /opt/pin/BRM
RUN source source.me.sh
RUN cd /opt/pin/BRM/source/sys/fm_cust_pol
RUN make clean
RUN make
RUN cp fm_cust_pol_custom.so /opt/pin/BRM/lib/fm_cust_pol_custom.so
