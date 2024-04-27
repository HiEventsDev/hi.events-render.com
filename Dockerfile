FROM daveearley/hi.events-all-in-one

COPY setEnv.sh /setEnv.sh
RUN chmod +x /setEnv.sh
RUN ls -la
RUN /setEnv.sh