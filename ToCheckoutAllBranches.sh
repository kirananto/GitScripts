 #
 # Copyright © 2015, KiranAnto
 #
 # Custom build script
 #
 # This software is licensed under the terms of the GNU General Public
 # License version 2, as published by the Free Software Foundation, and
 # may be copied, distributed, and modified under those terms.
 #
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 #
 # Please maintain this if you use this script or any part of it
 #
git checkout master ;
rem=origin ;
for brnch in `
    git branch -r | grep $rem | grep -v master | grep -v HEAD 
    | awk '{gsub(/^[^\/]+\//,"",$1); print $1}'
`; do
    git branch -D $brnch ;
    git checkout -b $brnch $rem/$brnch ;
done ;
git checkout master
