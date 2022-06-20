#!/bin/bash

# todo - git cloning the fonts repo
echo $(git clone https://github.com/swaroopRajwal/fonts.git)

# todo - creating fonts directory and zipping each font in /.local/share/fonts
files=`ls fonts/*.zip`

# * checking if the fonts directory exists in 
# * /home/user/.local/share/fonts
# * if it does then proceeding further
# * if it doesn't then creating it XD
if [[ -d "/home/$USER/.local/share/fonts/" ]]; then
  echo "fonts directory exitst"
  else 
    echo $(cd /home/$USER/.local/share/ && mkdir fonts/)
fi


for entry in $files
do
  file_name=$(basename "$entry")

  font_dir="/home/$USER/.local/share/fonts/${file_name%.*}"

  echo $(mkdir "$font_dir")
  echo $(unzip $entry -d $font_dir)
done

# deleting the cloned repo
echo $(rm -rf fonts)
