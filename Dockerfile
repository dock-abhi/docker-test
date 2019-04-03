FROM phx.ocir.io/intcgbuconsulting/brmbase:v1
USER pin
ADD fm_cust_pol_config.c /opt/pin/BRM/source/sys/fm_cust_pol/fm_cust_pol_config.c
RUN cp -r /opt/pin/BRM/PortalDevKit/include /opt/pin/BRM/include
RUN . ~/.bashrc && \
    . /opt/pin/BRM/source.me.sh && \
    cd /opt/pin/BRM/source/sys/fm_cust_pol && \
    make clean && \
    make
RUN cp /opt/pin/BRM/source/sys/fm_cust_pol/fm_cust_pol_custom.so /opt/pin/BRM/lib/fm_cust_pol_custom.so
RUN . ~/.bashrc && \
    . /opt/pin/BRM/source.me.sh && \
    stop_cm && \
    start_cm 
RUN chmod +x abc

