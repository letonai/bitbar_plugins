#!/usr/bin/env bash

# <bitbar.title>Easy Open Firefox Profiles</bitbar.title>
# <bitbar.version>v0.1</bitbar.version>
# <bitbar.author>Ricardo Letonai</bitbar.author>
# <bitbar.author.github>Letonai</bitbar.author.github>
# <bitbar.desc>Run Firefox</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/letonai/bitbar_plugins/master/preview.png</bitbar.image>
# <bitbar.dependencies>bash</bitbar.dependencies>

FF="/Applications/Firefox.app/Contents/MacOS/firefox"

# Run Firefox
echo "|templateImage=iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAaVBMVEUAAAAKADACADALADELADEMADQLADIKADEMADQIADAOAC0MADULADILADILADILADIMADQLADMLADMLADIMADQLADELADMHAC0LADUMADILADQKADIKADIOAC4NADULADIHADIKADENADYmMwn1AAAAIXRSTlMA+gReKKv0QqZKC+LMvnJu29eekmVINh/prpVVPRezhjB9nKjwAAAA2klEQVQY0z2PiXLDIAxEhcDgM46PxDnbSv//kV2pNDsMgseuRtBHTO+vF/HnWsukU8//l7pmzboRqLO90MHEZwlBT9UX9bnf+eeUVYKEeDVvusmIZvOzzKOKnO8XWFe8S/BYakRybpgOtDK6IhanDMeQqKi4tEH/VgS0o2hpWfbyJqarwwiI9HKQK+U/2BkcewwN56vG04BaZ6ZW0euWcPCRZvy6/3YjRqICBo1ru6CAXuybm2X8xao+gIAbleACVQublTezQNgfTJVSaQeBhsb7mbymLsYuVdsvJO0TO2608koAAAAASUVORK5CYII="
echo "---"
cat ${HOME}/Library/Application\ Support/Firefox/profiles.ini | grep Name | cut -d= -f2 | grep -v default$ | while read profile; 
do
    echo "Run Firefox ${profile} | bash=$FF terminal=false param1=-P param2=${profile}"
done

