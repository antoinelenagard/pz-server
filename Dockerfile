FROM steamcmd/steamcmd:alpine-3

RUN mkdir -p /opt/pzserver

COPY update_zomboid.txt $HOME/update_zomboid.txt
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /opt/pzserver

ENTRYPOINT ["/entrypoint.sh"]
