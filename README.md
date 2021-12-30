# asbru-cm-dockerfile

# Introduction:

Ásbrú Connection Manager is a fork of [PAC Manager](https://github.com/perseo22/pacmanager/).
See its details in its github page: https://github.com/asbru-cm/asbru-cm

I use it to manage my ssh connections. It is an alternative application to [mRemoteNG](https://mremoteng.org/) or [MobaXterm](https://mobaxterm.mobatek.net/).

Advantages of Ásbrú Connection Manager:
* It is free and open-source.
* No limitations.
* Automatic commands can be defined for each SSH connection.

Unfortunately, Ásbrú Connection Manager is a Linux-only application. So, I created this dockerfile to use it on Windows.

# Instructions:

## Windows (with WSL enabled):

* We need X server to run X server GUI applications on Windows. Install VcXsrv Windows X Server: https://sourceforge.net/projects/vcxsrv/
* Double click config.xlaunch file in this repository (This will launch VcXsrv Windows X Server)
* Edit firstrun.bat and change "1.2.3.4 IP" with your local IP
* Run firstrun.bat in this repository directory (This will create our docker container.)
* Close asbru
* Edit run.bat and change "container_name" with the name of your container
* Now you can use run.bat to run asbru faster

## Linux:

* Run run.sh (Warning: Run it in this repository directory)
