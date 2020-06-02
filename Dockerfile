FROM arm32v7/python

RUN apt-get update
RUN apt-get install -y --no-install-recommends cron
RUN pip --no-cache-dir install subgrab

ADD entrypoint.sh run.sh /
RUN chmod +x /entrypoint.sh /run.sh
ENTRYPOINT ["/entrypoint.sh"]
