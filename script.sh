audio_bitrate=128000
duration=$(ffmpeg -i ./input/VID_20240604_110233.mp4 2>&1 | grep "Duration" | cut -d ' ' -f 4 | sed s/,//)
seconds=$(echo $duration | awk -F ':' '{print($1*3600 + $2*60 + $3 +1)}' | cut -d '.' -f 1)
video_bitrate=$((((25 * 8388608 / $seconds - $audio_bitrate) / 1000)))
ffmpeg -i input.mp4 -vcodec libx264 -b:v ${video_bitrate}k -acodec aac -b:a 128k -preset slow output.mp4