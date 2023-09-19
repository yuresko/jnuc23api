#!/bin/bash

#GET /computers
/usr/bin/curl -sku "username:password" https://instance.jamfcloud.com/JSSResource/computers

#GET /mobiledevices
/usr/bin/curl -sku "username:password" https://instance.jamfcloud.com/JSSResource/mobiledevices -X GET

#### TASK 1 ####
# Try more GET API actions on other endpoints. See what information is 
# returned and if it looks familiar to the GUI.


####################################################################################################################
####################################################################################################################


#GET /mobiledevices/id/___
/usr/bin/curl -sku "username:password" https://instance.jamfcloud.com/JSSResource/mobiledevices/id/8

#### TASK 2 ####
# Try additional endpoints with alternate IDs.
# Update the name of a policy via the GUI. Verify the name took place via API.


####################################################################################################################
####################################################################################################################


#GET - Retrieve Serial Number of /mobiledevices/id/___
/usr/bin/curl -sku "username:password" https://instance.jamfcloud.com/JSSResource/mobiledevices/id/8 | xmllint --xpath '/mobile_device/general/serial_number/text()' - 2>/dev/null

#### TASK 3 ####
# Retrieve only the name of the policy you updated in the previous task.


####################################################################################################################
####################################################################################################################


#PUT - Update Asset Tag for /mobiledevices/id/___
/usr/bin/curl -sku "username:password" https://instance.jamfcloud.com/JSSResource/mobiledevices/id/8 -H "Content-type: application/xml" -X PUT -d "<mobile_device><general><asset_tag>ASSETTAG</asset_tag></general></mobile_device>"

#### TASK 4 ####
# Assign an asset tag to a computer of your choice via API.
# Verify the asset tag was changed appropriately via the API.
# Change the name of the policy in the previous task via API.
# Retrieve only the name of the policy you updated in the previous task.
