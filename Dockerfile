FROM itzg/minecraft-server:latest

RUN mkdir /data/plugins

RUN mkdir /data/plugins/floodgate

RUN mkdir /data/plugins/Geyser-Spigot

RUN apt update && apt install curl -y

RUN curl -L -o /data/plugins/Geyser-Spigot.jar https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/spigot --keepalive-time 60

RUN curl -L -o /data/plugins/floodgate-spigot.jar https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/downloads/spigot --keepalive-time 60

RUN cd /data/plugins && ln -s ../floodgate/key.pem Geyser-Spigot/key.pem
