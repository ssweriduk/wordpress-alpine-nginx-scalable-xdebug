#!/bin/bash

rsync -avr /usr/src/wordpress_bak/ /usr/src/wordpress/

#Ecexute CMD input as commands
exec "$@"
