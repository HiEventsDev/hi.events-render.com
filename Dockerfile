FROM daveearley/hi.events-all-in-one

COPY render-start.sh /render-start.sh
RUN chmod +x /render-start.sh
RUN /render-start.sh
