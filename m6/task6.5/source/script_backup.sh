#!/bin/bash

rsync -avz --out-format="%t  %o  %n" --stats --delete  $1 $2 1>>/home/igor/epam/backup.log 

