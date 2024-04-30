FROM daveearley/hi.events-all-in-one

COPY setEnv.sh /start.sh
RUN chmod +x /start.sh
RUN /start.sh