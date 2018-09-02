# Unofficial Snap Packaging for Hunspell Dictionaries
<!--
	Use the RawGit service for easy access to in-repo pictures:
	https://rawgit.com
-->
![Placeholder icon of Hunspell Dictionaries](https://cdn.rawgit.com/Lin-Buo-Ren/snapcrafters-template-plus/bea3bc56/snap/gui/my-awesome-app.png "Placeholder icon of Hunspell Dictionaries")

**This is the unofficial snap for Hunspell Dictionaries**, *"Dictionaries for the most popular spellchecking library"*. It works on Ubuntu, Fedora, Debian, and other major Linux distributions.

This is a content-shared snap for snaps that depend on the Hunspell spellchecking dictionaries.

This snap does not provide any applications and is not meant for regular users.

Refer [The content interface - doc - snapcraft.io](https://forum.snapcraft.io/t/the-content-interface/1074/1) topic for information of using this snap.

[![Build Status Badge of the `hunspell-dictionaries` Snap](https://build.snapcraft.io/badge/Lin-Buo-Ren/hunspell-dictionaries-snap.svg "Build Status of the `hunspell-dictionaries` snap")](https://build.snapcraft.io/user/Lin-Buo-Ren/hunspell-dictionaries-snap)

<!-- Uncomment and modify this when you have a screenshot
![Screenshot of the Snapped Application](screenshots/screenshot.png "Screenshot of the Snapped Application")
-->

Published for <img src="http://anything.codes/slack-emoji-for-techies/emoji/tux.png" align="top" width="24" /> with 💝 by Snapcrafters

## Installation
([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

### In Terminal
    # Install Snap #
    sudo snap install --channel=beta hunspell-dictionaries
    #sudo snap install hunspell-dictionaries
    
    # Connect the Snap to the Mandatory Interface #
    ## hunspell-dictionaries: Providing hunspell dictionaries at $SNAP/usr/share/hunspell ##
    sudo snap connect _consumer_snap_name_:_plug_name_ hunspell-dictionaries:hunspell-dictionaries

## What is Working
* Spellchecking in consumer snap (locale tested: fr_FR)

## What is NOT Working...yet 
* Nothing as of now.

## What is NOT Tested...yet
* The launcher script that sets the DICPATH environmental variable (no known snaps depend on it yet.)

... and everything not listed in the "What is Working" section.

## Support
* Report issues regarding using this snap to the issue tracker:  
  <https://github.com/Lin-Buo-Ren/hunspell-dictionaries-snap/issues>
* You may also post on the Snapcraft Forum, under the `snap` topic category:  
  <https://forum.snapcraft.io/c/snap>

