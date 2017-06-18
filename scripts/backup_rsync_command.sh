#!/bin/bash
rsync -aAXH --delete --info=progress2 --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/home/*/.gvfs","/home/*/.gradle","/home/*/.thumbnails/*","/home/*/.cache/mozilla/*","/home/*/.cache/google-chrome/*","/home/*/.local/share/Trash/*","/var/tmp/*"} / /media/dawid/ExternalSpace/Backup/
