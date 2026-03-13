ubuntu@ip-172-31-42-247:~$ sudo apt install docker-compose -y
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  python3-compose python3-docker python3-dockerpty python3-docopt python3-dotenv python3-texttable python3-websocket
The following NEW packages will be installed:
  docker-compose python3-compose python3-docker python3-dockerpty python3-docopt python3-dotenv python3-texttable python3-websocket
0 upgraded, 8 newly installed, 0 to remove and 0 not upgraded.
Need to get 297 kB of archives.
After this operation, 1589 kB of additional disk space will be used.
Get:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-websocket all 1.7.0-1 [38.1 kB]
Get:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 python3-docker all 5.0.3-1ubuntu1.1 [89.1 kB]
Get:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-dockerpty all 0.4.1-5 [11.4 kB]
Get:4 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-docopt all 0.6.2-6 [26.1 kB]
Get:5 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-dotenv all 1.0.1-1 [22.3 kB]
Get:6 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-texttable all 1.6.7-1 [11.0 kB]
Get:7 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 python3-compose all 1.29.2-6ubuntu1 [84.6 kB]
Get:8 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 docker-compose all 1.29.2-6ubuntu1 [14.0 kB]
Fetched 297 kB in 0s (8435 kB/s)           
Selecting previously unselected package python3-websocket.
(Reading database ... 104590 files and directories currently installed.)
Preparing to unpack .../0-python3-websocket_1.7.0-1_all.deb ...
Unpacking python3-websocket (1.7.0-1) ...
Selecting previously unselected package python3-docker.
Preparing to unpack .../1-python3-docker_5.0.3-1ubuntu1.1_all.deb ...
Unpacking python3-docker (5.0.3-1ubuntu1.1) ...
Selecting previously unselected package python3-dockerpty.
Preparing to unpack .../2-python3-dockerpty_0.4.1-5_all.deb ...
Unpacking python3-dockerpty (0.4.1-5) ...
Selecting previously unselected package python3-docopt.
Preparing to unpack .../3-python3-docopt_0.6.2-6_all.deb ...
Unpacking python3-docopt (0.6.2-6) ...
Selecting previously unselected package python3-dotenv.
Preparing to unpack .../4-python3-dotenv_1.0.1-1_all.deb ...
Unpacking python3-dotenv (1.0.1-1) ...
Selecting previously unselected package python3-texttable.
Preparing to unpack .../5-python3-texttable_1.6.7-1_all.deb ...
Unpacking python3-texttable (1.6.7-1) ...
Selecting previously unselected package python3-compose.
Preparing to unpack .../6-python3-compose_1.29.2-6ubuntu1_all.deb ...
Unpacking python3-compose (1.29.2-6ubuntu1) ...
Selecting previously unselected package docker-compose.
Preparing to unpack .../7-docker-compose_1.29.2-6ubuntu1_all.deb ...
Unpacking docker-compose (1.29.2-6ubuntu1) ...
Setting up python3-dotenv (1.0.1-1) ...
Setting up python3-texttable (1.6.7-1) ...
Setting up python3-docopt (0.6.2-6) ...
Setting up python3-websocket (1.7.0-1) ...
Setting up python3-dockerpty (0.4.1-5) ...
Setting up python3-docker (5.0.3-1ubuntu1.1) ...
Setting up python3-compose (1.29.2-6ubuntu1) ...
Setting up docker-compose (1.29.2-6ubuntu1) ...
Processing triggers for man-db (2.12.0-4build2) ...
Scanning processes...                                                                                                                                                                                       
Scanning candidates...                                                                                                                                                                                      
Scanning linux images...                                                                                                                                                                                    

Pending kernel upgrade!
Running kernel version:
  6.14.0-1018-aws
Diagnostics:
  The currently running kernel version is not the expected kernel version 6.17.0-1007-aws.

Restarting the system to load the new kernel will not be handled automatically, so you should consider rebooting.

Restarting services...

Service restarts being deferred:
 /etc/needrestart/restart.d/dbus.service
 systemctl restart getty@tty1.service
 systemctl restart networkd-dispatcher.service
 systemctl restart serial-getty@ttyS0.service
 systemctl restart systemd-logind.service
 systemctl restart unattended-upgrades.service

No containers need to be restarted.

User sessions running outdated binaries:
 ubuntu @ session #2: sshd[1056,1170]
 ubuntu @ user manager service: systemd[1063]

No VM guests are running outdated hypervisor (qemu) binaries on this host.
ubuntu@ip-172-31-42-247:~$ 
ubuntu@ip-172-31-42-247:~$ 
ubuntu@ip-172-31-42-247:~$ 
ubuntu@ip-172-31-42-247:~$ 
ubuntu@ip-172-31-42-247:~$ docker-compose --version
docker-compose version 1.29.2, build unknown
ubuntu@ip-172-31-42-247:~$ 
ubuntu@ip-172-31-42-247:~$ 
ubuntu@ip-172-31-42-247:~$ mkdir custom-nginx
ubuntu@ip-172-31-42-247:~$ 
ubuntu@ip-172-31-42-247:~$ cd custom-nginx/
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ vi index.html
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ vi Dockerfile
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ cat Dockerfile 
FROM nginx:latest

RUN mkdir -p /var/opt/nginx

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker build -t <dockerhub-username>/custom-nginx:v1 .
bash: dockerhub-username: No such file or directory
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker build -t rexgladson/custom-nginx:v1 .
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
            Install the buildx component to build images with BuildKit:
            https://docs.docker.com/go/buildx/

Sending build context to Docker daemon  3.072kB
Step 1/4 : FROM nginx:latest
latest: Pulling from library/nginx
206356c42440: Pulling fs layer
75a1d70aee50: Pulling fs layer
a9d395129dce: Pulling fs layer
df9da45c1db2: Pulling fs layer
18a071c04bd1: Pulling fs layer
79697674b897: Pulling fs layer
9eef040df109: Pulling fs layer
79697674b897: Waiting
9eef040df109: Waiting
df9da45c1db2: Waiting
18a071c04bd1: Waiting
a9d395129dce: Verifying Checksum
a9d395129dce: Download complete
75a1d70aee50: Verifying Checksum
75a1d70aee50: Download complete
206356c42440: Verifying Checksum
206356c42440: Download complete
df9da45c1db2: Verifying Checksum
df9da45c1db2: Download complete
79697674b897: Verifying Checksum
79697674b897: Download complete
18a071c04bd1: Verifying Checksum
18a071c04bd1: Download complete
206356c42440: Pull complete
9eef040df109: Verifying Checksum
9eef040df109: Download complete
75a1d70aee50: Pull complete
a9d395129dce: Pull complete
df9da45c1db2: Pull complete
18a071c04bd1: Pull complete
79697674b897: Pull complete
9eef040df109: Pull complete
Digest: sha256:bc45d248c4e1d1709321de61566eb2b64d4f0e32765239d66573666be7f13349
Status: Downloaded newer image for nginx:latest
 ---> 99133eed2307
Step 2/4 : RUN mkdir -p /var/opt/nginx
 ---> Running in 8034d4323947
 ---> Removed intermediate container 8034d4323947
 ---> 13eede982339
Step 3/4 : COPY index.html /usr/share/nginx/html/index.html
 ---> 5ec95cfeb5fc
Step 4/4 : EXPOSE 80
 ---> Running in d543e7d0bc72
 ---> Removed intermediate container d543e7d0bc72
 ---> 7f503bfc186d
Successfully built 7f503bfc186d
Successfully tagged rexgladson/custom-nginx:v1
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker images
REPOSITORY                TAG       IMAGE ID       CREATED         SIZE
rexgladson/custom-nginx   v1        7f503bfc186d   7 seconds ago   161MB
nginx                     latest    99133eed2307   2 days ago      161MB
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ mkdir nginx-data
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ vi docker-compose.yml
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker-compose up -d
Creating network "custom-nginx_default" with the default driver
Creating custom-nginx ... done
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker ps
CONTAINER ID   IMAGE                        COMMAND                  CREATED         STATUS         PORTS                                     NAMES
ec7ee1c37edf   rexgladson/custom-nginx:v1   "/docker-entrypoint.…"   6 seconds ago   Up 6 seconds   0.0.0.0:8080->80/tcp, [::]:8080->80/tcp   custom-nginx
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker login

USING WEB-BASED LOGIN

i Info → To sign in with credentials on the command line, use 'docker login -u <username>'
         

Your one-time device confirmation code is: NWDW-VGMG
Press ENTER to open your browser or submit your device code here: https://login.docker.com/activate

Waiting for authentication in the browser…

WARNING! Your credentials are stored unencrypted in '/home/ubuntu/.docker/config.json'.
Configure a credential helper to remove this warning. See
https://docs.docker.com/go/credential-store/

Login Succeeded
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker push <dockerhub-username>/custom-nginx:v1
bash: dockerhub-username: No such file or directory
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker push rexgladson/custom-nginx:v1
The push refers to repository [docker.io/rexgladson/custom-nginx]
4362b58b77a6: Preparing 
5170fb2e0ad7: Preparing 
349873755873: Preparing 
29b2c44d0fb6: Preparing 
4e1fa3adae02: Preparing 
dd02449feb6b: Waiting 
78dca4a0a512: Waiting 
3fe1b6ebcb54: Waiting 
a257f20c716c: Waiting 
denied: requested access to the resource is denied
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker images
REPOSITORY                TAG       IMAGE ID       CREATED         SIZE
rexgladson/custom-nginx   v1        7f503bfc186d   7 minutes ago   161MB
nginx                     latest    99133eed2307   2 days ago      161MB
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker login
Authenticating with existing credentials... [Username: gopinath2605]

i Info → To login with a different account, run 'docker logout' followed by 'docker login'


Login Succeeded
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker tag rexgladson/custom-nginx:v1 gopinath2605/custom-nginx:v1
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker images
REPOSITORY                  TAG       IMAGE ID       CREATED         SIZE
gopinath2605/custom-nginx   v1        7f503bfc186d   8 minutes ago   161MB
rexgladson/custom-nginx     v1        7f503bfc186d   8 minutes ago   161MB
nginx                       latest    99133eed2307   2 days ago      161MB
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
ubuntu@ip-172-31-42-247:~/custom-nginx$ docker push gopinath2605/custom-nginx:v1
The push refers to repository [docker.io/gopinath2605/custom-nginx]
4362b58b77a6: Pushed 
5170fb2e0ad7: Pushed 
349873755873: Pushed 
29b2c44d0fb6: Pushed 
4e1fa3adae02: Pushed 
dd02449feb6b: Pushed 
78dca4a0a512: Pushed 
3fe1b6ebcb54: Pushed 
a257f20c716c: Pushed 
v1: digest: sha256:a1aff9b1a019cdf8c8d9a8ef3906c8fee81ec4e812930cafad94a0c7d0bf33c2 size: 2193
ubuntu@ip-172-31-42-247:~/custom-nginx$ 
