**Simple Watchdog encoder**

Simple automatic ffmpeg conversion using inotifywait and ffmpeg in a GNU/Linux box.
It grabs all new files in a given folder and convert it moving them to another folder 

To use it, simply set your Monitoring and destination folders in the script, change ffmpeg to your needs and run:

> ./conversor.sh

It depends on ffmpeg and codec libraries and inotify-tools (ubuntu/Debian)


