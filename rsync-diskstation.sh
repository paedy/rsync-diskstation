#!/bin/bash
##############################################################
#  Script     : rsync-diskstation.sh
#  Author     : paedy
#  Date       : 11.11.2016
#  Last Edited: 11.11.2016, paedy
#  Description: clones different directories from one to another server
##############################################################
# Purpose:
# - backup
#
# Requirements:
# - SSH-Keys deployed
#
# Syntax: rsync-diskstation

# Notes:
# - nothing variable at the time
##############################################################
	
rsync -av --progress --delete --rsh='ssh -p222' paedy@diskstation:/volume1/documents/* /media/storage/documents
rsync -av --progress --delete --rsh='ssh -p222' paedy@diskstation:/volume1/media/* /media/storage/media
