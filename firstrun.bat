docker build -t asbru .

docker run -it --volume %cd%\root:/root --net=host -e DISPLAY=1.2.3.4:0.0 asbru

@REM After first run, modify run.bat shortcut with container name
