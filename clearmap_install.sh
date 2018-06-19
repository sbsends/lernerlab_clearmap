#!/bin/bash
# Sam Sendelbach (ssendelbach.luc.edu)
# June 2018
cd ~/
module load git
module load python
module load gcc/6.4.0
mkdir clearmap
cd clearmap
wget https://idiscodotinfo.files.wordpress.com/2016/05/clearmap_ressources_mouse_brain.zip
zip -d clearmap_ressources_mouse_brain.zip
rm clearmap_ressources_mouse_brain.zip
git clone https://github.com/ChristophKirst/ClearMap.git
wget https://github.com/SuperElastix/elastix/releases/download/4.9.0/elastix-4.9.0-linux.tar.bz2
tar xvjf elastix-4.9.0-linux.tar.bz2
rm elastix-4.9.0-linux.tar.bz2
mkdir -p ~/.local/bin
mkdir -p ~/.local/lib
mv bin/* ~/.local/bin
mv lib/* ~/.local/lib
rm -r bin && rm -r lib
