#This sends files in the specified lab folder 'srcdir' to the 'destdir' in home
#The backup saves as a .TAR file for memory efficiency 
#!/bin/bash
 SRCDIR="/home/aetienne/04-introduction-to-linux-os-aetienne93/Lab04"
 DESTDIR="/home/aetienne/Backups/"
 FILENAME=ug-$(date +%-Y%-m%-d)-$(date +%-T).tgz
 tar --create --gzip --file=$DESTDIR$FILENAME $SRCDIR
