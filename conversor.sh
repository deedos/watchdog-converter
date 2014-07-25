#!/bin/bash


HOME=/media/dados/Encoder-mass/a-converter # Folder to Watch for files
DESTDIR=/media/dados/Encoder-mass/convertidos
MARCADAGUA=/media/dados/igarape/MarcaDagua_HD-1080-16-9.png # path to your overlay image


inotifywait  --monitor  -e create -e moved_to --format="%w%f" $HOME | while read file; do
 
        echo "O arquivo "$file" apareceu no diretório e vamos colocar marcadágua nele"
        # do something with the file
	sleep 1
	ffmpeg  -i  "$file"  -i  $MARCADAGUA  -filter_complex '[0:v][1]overlay=0:0[outv]' -map [outv]  -map 0:a -c:a aac -ab 192k -vcodec libx264 -vb 9000k -strict experimental $DESTDIR/"`basename "${file%.*}-converted"`".mp4 </dev/null ;
        done










