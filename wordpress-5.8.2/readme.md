# Wordpress 5.8.2  CVE-2022-21661 Vuln enviroment

This is a fork of project https://github.com/magichk/OWASP-TOP10-Labs.git 

This enviroment is setup with the Elementor Custom Skin, plugin 
to test the CVE-2022-21661. 

to start the enviroment

`console
wp-lab$ ./start.sh                                   
`
To get the admin password get the log from the running container, a new pwd is
generated every time the container is booted.

`console
$wp-lab$ docker logs test
[*] user admin pwd: inpJbxn+mhWWNSgEAlsU2A== localip: 172.17.0.2
`

to run the exploit, replace \<payloadid\> with:
1. dump db name
2. dump users table.

``
python3 sploit.py http://<target-ip>/wp-admin/admin-ajax.php <payload-id> 
``