#!/bin/bash

while true
do
 # Use curl to send a request to the Nginx server and get the HTTP status code
 http_status=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:80)

 if [[ $http_status == "200" ]]; then
     echo "Nginx server is running and accessible"
 else
     echo "Nginx server is not running or not accessible"
 fi

 # Sleep for 1 second before checking the status again
 sleep 1
done