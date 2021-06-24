FROM nextcloud:latest

RUN apt-get update
RUN apt-get install -y ffmpeg imagemagick ghostscript wget apt-transport-https

RUN echo "deb https://downloads.plex.tv/repo/deb public main" > /etc/apt/sources.list.d/plexmediaserver.list
RUN wget -q https://downloads.plex.tv/plex-keys/PlexSign.key -O - | apt-key add -

RUN apt-get update
RUN apt-get install -y plexmediaserver
