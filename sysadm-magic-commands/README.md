magic.sh script can perform the following tasks:

1. To check disk space
   
   $ ./magic.sh space-check

2. To list the files greater than 1000 MB at location /opt
    
   $ ./magic.sh file-check /opt 1000

3. To delete files older than 5 days at location /opt
   
   $ ./magic.sh delete-old-file /opt 5

4. To check a port is occupied or not e.g: 8080
   
   $ ./magic.sh port-check 8080
