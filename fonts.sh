#!/bin/bash

# git cloning the fonts repo
echo $(git clone https://github.com/swaroopRajwal/fonts.git)

# creating fonts directory and zipping each font in /.local/share/fonts
files=`ls fonts/*.zip`
for entry in $files
do
  file_name=$(basename "$entry")
  font_dir="/home/swaroop/.local/share/fonts/${file_name%.*}"

  echo $(mkdir "$font_dir")
  echo $(unzip $entry -d $font_dir)
done

# deleting the cloned repo
echo $(rm -rf fonts)
