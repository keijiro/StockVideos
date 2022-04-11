#!/bin/sh
ffmpeg -i Temp.mov -vcodec copy -ss 4 -t 8 Room.mov
