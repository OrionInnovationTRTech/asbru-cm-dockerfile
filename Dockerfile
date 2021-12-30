FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y \
                    curl gnupg apt-transport-https \
                    papirus-icon-theme gnome-themes-extra \
                    cpanminus libglib2.0-dev build-essential \
                    libcanberra-gtk-module libcanberra-gtk3-module
RUN curl -1sLf 'https://dl.cloudsmith.io/public/asbru-cm/release/cfg/setup/bash.deb.sh' | bash
RUN apt install -y asbru-cm
RUN cpanm -i Glib

CMD \
    xauth add $MY_XAUTH ; \
    env GDK_BACKEND=x11 GTK_THEME="Adwaita-dark" LC_ALL=C NO_AT_BRIDGE=1 asbru-cm

# To run on Linux:
# run.sh

# To run on Windows:
# Install VcXsrv Windows X Server: https://sourceforge.net/projects/vcxsrv/
# Double click config.xlaunch file
# firstrun.bat
# Modify run.bat