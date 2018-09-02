# Unofficial Snap Packaging for Hunspell Dictionaries
<!--
	Use the RawGit service for easy access to in-repo pictures:
	https://rawgit.com
-->
![Placeholder icon of Hunspell Dictionaries](https://cdn.rawgit.com/Lin-Buo-Ren/snapcrafters-template-plus/bea3bc56/snap/gui/my-awesome-app.png "Placeholder icon of Hunspell Dictionaries")

**This is the unofficial snap for Hunspell Dictionaries**, *"Dictionaries for the most popular spellchecking library"*. It works on Ubuntu, Fedora, Debian, and other major Linux distributions.

[![Build Status Badge of the `hunspell-dictionaries` Snap](https://build.snapcraft.io/badge/Lin-Buo-Ren/hunspell-dictionaries-snap.svg "Build Status of the `hunspell-dictionaries` snap")](https://build.snapcraft.io/user/Lin-Buo-Ren/hunspell-dictionaries-snap)

<!-- Uncomment and modify this when you have a screenshot
![Screenshot of the Snapped Application](screenshots/screenshot.png "Screenshot of the Snapped Application")
-->

Published for <img src="http://anything.codes/slack-emoji-for-techies/emoji/tux.png" align="top" width="24" /> with 💝 by Snapcrafters

## Installation
([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

### In Terminal
    # Install Snap #
    sudo snap install --channel=edge --devmode hunspell-dictionaries
    #sudo snap install --channel=beta hunspell-dictionaries
    #sudo snap install hunspell-dictionaries
    
    # Connect the Snap to the Mandatory Interface #
    ## hunspell-dictionaries: Providing hunspell dictionaries at $SNAP/usr/share/hunspell ##
    sudo snap connect _consumer_snap_name_:_plug_name_ hunspell-dictionaries:hunspell-dictionaries
    
    # Connect the Snap to the Optional Interfaces #
    ## hunspell-launcher: Providing a launcher that sets the DICPATH environmental variable, for application that is not relocatable ##
    sudo snap connect _consumer_snap_name_:_plug_name_ hunspell-dictionaries:hunspell-launcher

<!--
## What is Working
* [A list of functionallities that are verified working]

## What is NOT Working...yet 
* [A list of functionallities that are verified not working]

## What is NOT Tested...yet
* [A list of functionallities that are not tested for any reasons.]
-->

## Support
* Report issues regarding using this snap to the issue tracker:  
  <https://github.com/Lin-Buo-Ren/hunspell-dictionaries-snap/issues>
* You may also post on the Snapcraft Forum, under the `snap` topic category:  
  <https://forum.snapcraft.io/c/snap>

