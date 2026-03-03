[ec2-user@ip-172-31-34-140 ~]$ sudo yum update -y
Last metadata expiration check: 2:31:32 ago on Tue Mar  3 06:40:53 2026.
Dependencies resolved.
Nothing to do.
Complete!
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ sudo yum install docker -y
Last metadata expiration check: 2:31:40 ago on Tue Mar  3 06:40:53 2026.
Dependencies resolved.
============================================================================================================================================================
 Package                                     Architecture                Version                                     Repository                        Size
============================================================================================================================================================
Installing:
 docker                                      x86_64                      25.0.14-1.amzn2023.0.2                      amazonlinux                       46 M
Installing dependencies:
 container-selinux                           noarch                      4:2.242.0-1.amzn2023                        amazonlinux                       58 k
 containerd                                  x86_64                      2.2.1-1.amzn2023.0.1                        amazonlinux                       24 M
 iptables-libs                               x86_64                      1.8.8-3.amzn2023.0.2                        amazonlinux                      401 k
 iptables-nft                                x86_64                      1.8.8-3.amzn2023.0.2                        amazonlinux                      183 k
 libcgroup                                   x86_64                      3.0-1.amzn2023.0.1                          amazonlinux                       75 k
 libnetfilter_conntrack                      x86_64                      1.0.8-2.amzn2023.0.2                        amazonlinux                       58 k
 libnfnetlink                                x86_64                      1.0.1-19.amzn2023.0.2                       amazonlinux                       30 k
 libnftnl                                    x86_64                      1.2.2-2.amzn2023.0.2                        amazonlinux                       84 k
 pigz                                        x86_64                      2.5-1.amzn2023.0.3                          amazonlinux                       83 k
 runc                                        x86_64                      1.3.4-1.amzn2023.0.2                        amazonlinux                      3.9 M

Transaction Summary
============================================================================================================================================================
Install  11 Packages

Total download size: 75 M
Installed size: 282 M
Downloading Packages:
(1/11): container-selinux-2.242.0-1.amzn2023.noarch.rpm                                                                     1.5 MB/s |  58 kB     00:00
(2/11): iptables-libs-1.8.8-3.amzn2023.0.2.x86_64.rpm                                                                        12 MB/s | 401 kB     00:00
(3/11): iptables-nft-1.8.8-3.amzn2023.0.2.x86_64.rpm                                                                        7.1 MB/s | 183 kB     00:00
(4/11): libcgroup-3.0-1.amzn2023.0.1.x86_64.rpm                                                                             2.8 MB/s |  75 kB     00:00
(5/11): libnetfilter_conntrack-1.0.8-2.amzn2023.0.2.x86_64.rpm                                                              2.1 MB/s |  58 kB     00:00
(6/11): libnfnetlink-1.0.1-19.amzn2023.0.2.x86_64.rpm                                                                       1.1 MB/s |  30 kB     00:00
(7/11): libnftnl-1.2.2-2.amzn2023.0.2.x86_64.rpm                                                                            2.7 MB/s |  84 kB     00:00
(8/11): pigz-2.5-1.amzn2023.0.3.x86_64.rpm                                                                                  4.5 MB/s |  83 kB     00:00
(9/11): containerd-2.2.1-1.amzn2023.0.1.x86_64.rpm                                                                           68 MB/s |  24 MB     00:00
(10/11): runc-1.3.4-1.amzn2023.0.2.x86_64.rpm                                                                                27 MB/s | 3.9 MB     00:00
(11/11): docker-25.0.14-1.amzn2023.0.2.x86_64.rpm                                                                            69 MB/s |  46 MB     00:00
------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                       106 MB/s |  75 MB     00:00
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                    1/1
  Installing       : runc-1.3.4-1.amzn2023.0.2.x86_64                                                                                                  1/11
  Installing       : containerd-2.2.1-1.amzn2023.0.1.x86_64                                                                                            2/11
  Running scriptlet: containerd-2.2.1-1.amzn2023.0.1.x86_64                                                                                            2/11
  Installing       : pigz-2.5-1.amzn2023.0.3.x86_64                                                                                                    3/11
  Installing       : libnftnl-1.2.2-2.amzn2023.0.2.x86_64                                                                                              4/11
  Installing       : libnfnetlink-1.0.1-19.amzn2023.0.2.x86_64                                                                                         5/11
  Installing       : libnetfilter_conntrack-1.0.8-2.amzn2023.0.2.x86_64                                                                                6/11
  Installing       : iptables-libs-1.8.8-3.amzn2023.0.2.x86_64                                                                                         7/11
  Installing       : iptables-nft-1.8.8-3.amzn2023.0.2.x86_64                                                                                          8/11
  Running scriptlet: iptables-nft-1.8.8-3.amzn2023.0.2.x86_64                                                                                          8/11
  Installing       : libcgroup-3.0-1.amzn2023.0.1.x86_64                                                                                               9/11
  Running scriptlet: container-selinux-4:2.242.0-1.amzn2023.noarch                                                                                    10/11
  Installing       : container-selinux-4:2.242.0-1.amzn2023.noarch                                                                                    10/11
  Running scriptlet: container-selinux-4:2.242.0-1.amzn2023.noarch                                                                                    10/11
  Running scriptlet: docker-25.0.14-1.amzn2023.0.2.x86_64                                                                                             11/11
  Installing       : docker-25.0.14-1.amzn2023.0.2.x86_64                                                                                             11/11
  Running scriptlet: docker-25.0.14-1.amzn2023.0.2.x86_64                                                                                             11/11
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /usr/lib/systemd/system/docker.socket.

  Running scriptlet: container-selinux-4:2.242.0-1.amzn2023.noarch                                                                                    11/11
  Running scriptlet: docker-25.0.14-1.amzn2023.0.2.x86_64                                                                                             11/11
  Verifying        : container-selinux-4:2.242.0-1.amzn2023.noarch                                                                                     1/11
  Verifying        : containerd-2.2.1-1.amzn2023.0.1.x86_64                                                                                            2/11
  Verifying        : docker-25.0.14-1.amzn2023.0.2.x86_64                                                                                              3/11
  Verifying        : iptables-libs-1.8.8-3.amzn2023.0.2.x86_64                                                                                         4/11
  Verifying        : iptables-nft-1.8.8-3.amzn2023.0.2.x86_64                                                                                          5/11
  Verifying        : libcgroup-3.0-1.amzn2023.0.1.x86_64                                                                                               6/11
  Verifying        : libnetfilter_conntrack-1.0.8-2.amzn2023.0.2.x86_64                                                                                7/11
  Verifying        : libnfnetlink-1.0.1-19.amzn2023.0.2.x86_64                                                                                         8/11
  Verifying        : libnftnl-1.2.2-2.amzn2023.0.2.x86_64                                                                                              9/11
  Verifying        : pigz-2.5-1.amzn2023.0.3.x86_64                                                                                                   10/11
  Verifying        : runc-1.3.4-1.amzn2023.0.2.x86_64                                                                                                 11/11

Installed:
  container-selinux-4:2.242.0-1.amzn2023.noarch              containerd-2.2.1-1.amzn2023.0.1.x86_64            docker-25.0.14-1.amzn2023.0.2.x86_64
  iptables-libs-1.8.8-3.amzn2023.0.2.x86_64                  iptables-nft-1.8.8-3.amzn2023.0.2.x86_64          libcgroup-3.0-1.amzn2023.0.1.x86_64
  libnetfilter_conntrack-1.0.8-2.amzn2023.0.2.x86_64         libnfnetlink-1.0.1-19.amzn2023.0.2.x86_64         libnftnl-1.2.2-2.amzn2023.0.2.x86_64
  pigz-2.5-1.amzn2023.0.3.x86_64                             runc-1.3.4-1.amzn2023.0.2.x86_64

Complete!
[ec2-user@ip-172-31-34-140 ~]$ sudo systemctl start docker
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ sudo systemctl enable docker
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /usr/lib/systemd/system/docker.service.
[ec2-user@ip-172-31-34-140 ~]$ sudo usermod -aG docker ec2-user
[ec2-user@ip-172-31-34-140 ~]$ docker --version
Docker version 25.0.14, build 0bab007
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker run hello-world
docker: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied.
See 'docker run --help'.
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ sudo usermod -aG docker ec2-user
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ exit
logout
Connection to 13.127.209.193 closed.
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads> ssh -i "win.pem" ec2-user@ec2-13-127-209-193.ap-south-1.compute.amazonaws.com
The authenticity of host 'ec2-13-127-209-193.ap-south-1.compute.amazonaws.com (13.127.209.193)' can't be established.
ED25519 key fingerprint is SHA256:MWtOzzHLK1TvAGwcnjl8IZyifX+lxwxp/dKUeLbI+7A.
This host key is known by the following other names/addresses:
    C:\Users\Abhinath O/.ssh/known_hosts:1: 13.127.209.193
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'ec2-13-127-209-193.ap-south-1.compute.amazonaws.com' (ED25519) to the list of known hosts.
   ,     #_
   ~\_  ####_        Amazon Linux 2023
  ~~  \_#####\
  ~~     \###|
  ~~       \#/ ___   https://aws.amazon.com/linux/amazon-linux-2023
   ~~       V~' '->
    ~~~         /
      ~~._.   _/
         _/ _/
       _/m/'
Last login: Tue Mar  3 08:28:54 2026 from 27.4.244.176
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker --version
Docker version 25.0.14, build 0bab007
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
17eec7bbc9d7: Pull complete
Digest: sha256:ef54e839ef541993b4e87f25e752f7cf4238fa55f017957c2eb44077083d7a6a
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

[ec2-user@ip-172-31-34-140 ~]$ docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

[ec2-user@ip-172-31-34-140 ~]$ docker images
REPOSITORY    TAG       IMAGE ID       CREATED        SIZE
hello-world   latest    1b44b5a3e06a   6 months ago   10.1kB
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker pull nginx
Using default tag: latest
latest: Pulling from library/nginx
206356c42440: Pull complete
b47f187216b6: Pull complete
1ad233904a11: Pull complete
eedda9fd8786: Pull complete
35ff83c394d6: Pull complete
17d0911eaf62: Pull complete
df0b66c867e4: Pull complete
Digest: sha256:0236ee02dcbce00b9bd83e0f5fbc51069e7e1161bd59d99885b3ae1734f3392e
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest
[ec2-user@ip-172-31-34-140 ~]$ docker rmi image_id
Error response from daemon: No such image: image_id:latest
[ec2-user@ip-172-31-34-140 ~]$ docker rmi 1b44b5a3e06a
Error response from daemon: conflict: unable to delete 1b44b5a3e06a (must be forced) - image is being used by stopped container 491ab821fe5a
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker ps -a
CONTAINER ID   IMAGE         COMMAND    CREATED          STATUS                      PORTS     NAMES
491ab821fe5a   hello-world   "/hello"   4 minutes ago    Exited (0) 4 minutes ago              magical_hopper
f1a448c1dbe9   hello-world   "/hello"   10 minutes ago   Exited (0) 10 minutes ago             admiring_bell
[ec2-user@ip-172-31-34-140 ~]$ docker rm 491ab821fe5a
491ab821fe5a
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker ps -a
CONTAINER ID   IMAGE         COMMAND    CREATED          STATUS                      PORTS     NAMES
f1a448c1dbe9   hello-world   "/hello"   11 minutes ago   Exited (0) 11 minutes ago             admiring_bell
[ec2-user@ip-172-31-34-140 ~]$ docker run -d -p 80:80 nginx
513c822b2ddb0f44c1788f51002935398c9d00b5f6c537c0be0831cd12f774c8
docker: Error response from daemon: driver failed programming external connectivity on endpoint elated_hertz (cb9dc3c24f2ceb501889606e07db98f465d8bff3b493d8aab8672e2bdfb3748c): Error starting userland proxy: listen tcp4 0.0.0.0:80: bind: address already in use.
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ sudo netstat -tulpn | grep :80
tcp6       0      0 :::80                   :::*                    LISTEN      25574/httpd
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
[ec2-user@ip-172-31-34-140 ~]$ docker run -d -p 8080:80 nginx
6a2dcc350332e99acf699f923405cf27469ecaacd31031695c00b8f91ca9b822
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                                   NAMES
6a2dcc350332   nginx     "/docker-entrypoint.…"   4 seconds ago   Up 3 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   beautiful_goldwasser
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker run -d -p 8081:80 nginx
490feb1ca58bd153f3735975fe6578a9113851eaba84a108931fbbe96feef8f1
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker run -d -p 8082:80 nginx
7ebb4604608702b52b829a01ce595580a653167313b97c319856ee8725e06947
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                                   NAMES
7ebb46046087   nginx     "/docker-entrypoint.…"   3 seconds ago    Up 3 seconds    0.0.0.0:8082->80/tcp, :::8082->80/tcp   jovial_fermat
490feb1ca58b   nginx     "/docker-entrypoint.…"   13 seconds ago   Up 13 seconds   0.0.0.0:8081->80/tcp, :::8081->80/tcp   eager_driscoll
6a2dcc350332   nginx     "/docker-entrypoint.…"   2 minutes ago    Up 2 minutes    0.0.0.0:8080->80/tcp, :::8080->80/tcp   beautiful_goldwasser
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker stop 6a2dcc350332
6a2dcc350332
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED              STATUS              PORTS                                   NAMES
7ebb46046087   nginx     "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:8082->80/tcp, :::8082->80/tcp   jovial_fermat
490feb1ca58b   nginx     "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:8081->80/tcp, :::8081->80/tcp   eager_driscoll
[ec2-user@ip-172-31-34-140 ~]$ docker ps -a
CONTAINER ID   IMAGE         COMMAND                  CREATED              STATUS                      PORTS                                   NAMES
7ebb46046087   nginx         "/docker-entrypoint.…"   About a minute ago   Up About a minute           0.0.0.0:8082->80/tcp, :::8082->80/tcp   jovial_fermat
490feb1ca58b   nginx         "/docker-entrypoint.…"   About a minute ago   Up About a minute           0.0.0.0:8081->80/tcp, :::8081->80/tcp   eager_driscoll
6a2dcc350332   nginx         "/docker-entrypoint.…"   3 minutes ago        Exited (0) 15 seconds ago                                           beautiful_goldwasser
513c822b2ddb   nginx         "/docker-entrypoint.…"   5 minutes ago        Created                                                             elated_hertz
f1a448c1dbe9   hello-world   "/hello"                 21 minutes ago       Exited (0) 21 minutes ago                                           admiring_bell
[ec2-user@ip-172-31-34-140 ~]$ docker run -d -p 8080:80 --name Gopi nginx
e435ff38fc587142f4e9cd2df6758863288613222e06e842dcf337fe9fa50be3
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker ps -a
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS                      PORTS                                   NAMES
e435ff38fc58   nginx         "/docker-entrypoint.…"   3 seconds ago    Up 2 seconds                0.0.0.0:8080->80/tcp, :::8080->80/tcp   Gopi
7ebb46046087   nginx         "/docker-entrypoint.…"   4 minutes ago    Up 4 minutes                0.0.0.0:8082->80/tcp, :::8082->80/tcp   jovial_fermat
490feb1ca58b   nginx         "/docker-entrypoint.…"   4 minutes ago    Up 4 minutes                0.0.0.0:8081->80/tcp, :::8081->80/tcp   eager_driscoll
6a2dcc350332   nginx         "/docker-entrypoint.…"   6 minutes ago    Exited (0) 2 minutes ago                                            beautiful_goldwasser
513c822b2ddb   nginx         "/docker-entrypoint.…"   7 minutes ago    Created                                                             elated_hertz
f1a448c1dbe9   hello-world   "/hello"                 23 minutes ago   Exited (0) 23 minutes ago                                           admiring_bell
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker start 6a2dcc350332
Error response from daemon: driver failed programming external connectivity on endpoint beautiful_goldwasser (f15d4ff1c72e0997affa0a0673752d000a0da13948954e1b51748bc1c6a4d94c): Bind for 0.0.0.0:8080 failed: port is already allocated
Error: failed to start containers: 6a2dcc350332
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker start f1a448c1dbe9
f1a448c1dbe9
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                                   NAMES
e435ff38fc58   nginx     "/docker-entrypoint.…"   53 seconds ago   Up 53 seconds   0.0.0.0:8080->80/tcp, :::8080->80/tcp   Gopi
7ebb46046087   nginx     "/docker-entrypoint.…"   4 minutes ago    Up 4 minutes    0.0.0.0:8082->80/tcp, :::8082->80/tcp   jovial_fermat
490feb1ca58b   nginx     "/docker-entrypoint.…"   5 minutes ago    Up 5 minutes    0.0.0.0:8081->80/tcp, :::8081->80/tcp   eager_driscoll
[ec2-user@ip-172-31-34-140 ~]$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED              STATUS              PORTS                                   NAMES
e435ff38fc58   nginx     "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:8080->80/tcp, :::8080->80/tcp   Gopi
7ebb46046087   nginx     "/docker-entrypoint.…"   5 minutes ago        Up 5 minutes        0.0.0.0:8082->80/tcp, :::8082->80/tcp   jovial_fermat
490feb1ca58b   nginx     "/docker-entrypoint.…"   5 minutes ago        Up 5 minutes        0.0.0.0:8081->80/tcp, :::8081->80/tcp   eager_driscoll
[ec2-user@ip-172-31-34-140 ~]$ docker start f1a448c1dbe9
f1a448c1dbe9
[ec2-user@ip-172-31-34-140 ~]$ docker ps -a
CONTAINER ID   IMAGE         COMMAND                  CREATED              STATUS                       PORTS                                   NAMES
e435ff38fc58   nginx         "/docker-entrypoint.…"   About a minute ago   Up About a minute            0.0.0.0:8080->80/tcp, :::8080->80/tcp   Gopi
7ebb46046087   nginx         "/docker-entrypoint.…"   5 minutes ago        Up 5 minutes                 0.0.0.0:8082->80/tcp, :::8082->80/tcp   jovial_fermat
490feb1ca58b   nginx         "/docker-entrypoint.…"   5 minutes ago        Up 5 minutes                 0.0.0.0:8081->80/tcp, :::8081->80/tcp   eager_driscoll
6a2dcc350332   nginx         "/docker-entrypoint.…"   7 minutes ago        Exited (128) 3 minutes ago                                           beautiful_goldwasser
513c822b2ddb   nginx         "/docker-entrypoint.…"   8 minutes ago        Created                                                              elated_hertz
f1a448c1dbe9   hello-world   "/hello"                 24 minutes ago       Exited (0) 3 seconds ago                                             admiring_bell
[ec2-user@ip-172-31-34-140 ~]$
