#!/bin/bash

rsync -avr /usr/src/wordpress_bak/ /usr/src/wordpress/

echo "files copied"

#Ecexute CMD input as commands
exec "$@"
