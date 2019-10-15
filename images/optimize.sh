#! /bin/bash 


for i in {1..15}
do 
	echo number: "$i"
	# ffmpeg -y -i pediatric_dentistry_retro_"$i".webm -c:v libvpx-vp9 -b:v 0 -crf 30 -pass 1 -an -f webm /dev/null 
	# ffmpeg -y -i pediatric_dentistry_retro_"$i".webm -c:v libvpx-vp9 -b:v 0 -crf 30 -pass 2 -c:a libopus pediatric_dentistry_retro_"$i"_2pass_q30.webm
	# ffmpeg -y -i pediatric_dentistry_retro_"$i"_2pass_q30.webm -c:v libx264 -b:v 300k -pass 1 -f mp4 /dev/null 
        # ffmpeg -y -i pediatric_dentistry_retro_"$i"_2pass_q30.webm -c:v libx264 -b:v 300k -pass 2 -movflags +faststart pediatric_dentistry_retro_"$i"_2pass_300k.mp4
	ffmpeg -i pediatric_dentistry_retro_"$i"_2pass_q30.webm -c:v libx264 -preset veryslow -crf 35 pediatric_dentistry_retro_"$i"_crf35.mp4
done
