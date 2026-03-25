Welcome to Ubuntu 24.04.4 LTS (GNU/Linux 6.6.87.2-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Mar 25 08:52:55 UTC 2026

  System load:  0.46                Processes:             53
  Usage of /:   0.2% of 1006.85GB   Users logged in:       0
  Memory usage: 11%                 IPv4 address for eth0: 172.30.131.231
  Swap usage:   0%


This message is shown once a day. To disable it please create the
/home/sathish_kumar/.hushlogin file.
sathish_kumar@LAPTOP-RNN75O0I:~$ wsl --install
Command 'wsl' not found, but can be installed with:
sudo apt install wsl
sathish_kumar@LAPTOP-RNN75O0I:~$ sudo apt install wsl
[sudo] password for sathish_kumar:
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libxml2-utils libxslt1.1 xsltproc
The following NEW packages will be installed:
  libxml2-utils libxslt1.1 wsl xsltproc
0 upgraded, 4 newly installed, 0 to remove and 14 not upgraded.
Need to get 241 kB of archives.
After this operation, 808 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libxml2-utils amd64 2.9.14+dfsg-1.3ubuntu3.7 [39.4 kB]
Get:2 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 libxslt1.1 amd64 1.1.39-0exp1ubuntu0.24.04.3 [168 kB]
Get:3 http://archive.ubuntu.com/ubuntu noble/universe amd64 wsl all 0.2.1-3 [18.7 kB]
Get:4 http://archive.ubuntu.com/ubuntu noble-updates/main amd64 xsltproc amd64 1.1.39-0exp1ubuntu0.24.04.3 [15.0 kB]
Fetched 241 kB in 4s (68.0 kB/s)
Selecting previously unselected package libxml2-utils.
(Reading database ... 40805 files and directories currently installed.)
Preparing to unpack .../libxml2-utils_2.9.14+dfsg-1.3ubuntu3.7_amd64.deb ...
Unpacking libxml2-utils (2.9.14+dfsg-1.3ubuntu3.7) ...
Selecting previously unselected package libxslt1.1:amd64.
Preparing to unpack .../libxslt1.1_1.1.39-0exp1ubuntu0.24.04.3_amd64.deb ...
Unpacking libxslt1.1:amd64 (1.1.39-0exp1ubuntu0.24.04.3) ...
Selecting previously unselected package wsl.
Preparing to unpack .../archives/wsl_0.2.1-3_all.deb ...
Unpacking wsl (0.2.1-3) ...
Selecting previously unselected package xsltproc.
Preparing to unpack .../xsltproc_1.1.39-0exp1ubuntu0.24.04.3_amd64.deb ...
Unpacking xsltproc (1.1.39-0exp1ubuntu0.24.04.3) ...
Setting up libxslt1.1:amd64 (1.1.39-0exp1ubuntu0.24.04.3) ...
Setting up libxml2-utils (2.9.14+dfsg-1.3ubuntu3.7) ...
Setting up wsl (0.2.1-3) ...
Setting up xsltproc (1.1.39-0exp1ubuntu0.24.04.3) ...
Processing triggers for libc-bin (2.39-0ubuntu8.7) ...
Processing triggers for man-db (2.12.0-4build2) ...
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$ ls
windows.pem
sathish_kumar@LAPTOP-RNN75O0I:~$ chmod 400 "windows.pem"
sathish_kumar@LAPTOP-RNN75O0I:~$
sathish_kumar@LAPTOP-RNN75O0I:~$ ssh -i "windows.pem" ubuntu@ec2-13-126-138-158.ap-south-1.compute.amazonaws.com
The authenticity of host 'ec2-13-126-138-158.ap-south-1.compute.amazonaws.com (13.126.138.158)' can't be established.
ED25519 key fingerprint is SHA256:r+bIzHy38p4bQyfqNNcCyGY9GrLW0GFOgYvFOEOD080.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'ec2-13-126-138-158.ap-south-1.compute.amazonaws.com' (ED25519) to the list of known hosts.
Welcome to Ubuntu 24.04.4 LTS (GNU/Linux 6.17.0-1007-aws x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Mar 25 09:17:28 UTC 2026

  System load:  0.0               Temperature:           -273.1 C
  Usage of /:   9.6% of 18.33GB   Processes:             109
  Memory usage: 6%                Users logged in:       0
  Swap usage:   0%                IPv4 address for ens5: 172.31.37.154

Expanded Security Maintenance for Applications is not enabled.

0 updates can be applied immediately.

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status


The list of available updates is more than a week old.
To check for new updates run: sudo apt update


The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ sudo apt update && sudo apt upgrade -y
Hit:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble InRelease
Get:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
Get:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
Get:4 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 Packages [15.0 MB]
Get:5 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
Get:6 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe Translation-en [5982 kB]
Get:7 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 Components [3871 kB]
Get:8 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 c-n-f Metadata [301 kB]
Get:9 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/multiverse amd64 Packages [269 kB]
Get:10 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/multiverse Translation-en [118 kB]
Get:11 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/multiverse amd64 Components [35.0 kB]
Get:12 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/multiverse amd64 c-n-f Metadata [8328 B]
Get:13 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [1847 kB]
Get:14 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main Translation-en [339 kB]
Get:15 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 Components [177 kB]
Get:16 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 c-n-f Metadata [16.9 kB]
Get:17 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [1619 kB]
Get:18 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe Translation-en [322 kB]
Get:19 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Components [386 kB]
Get:20 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 c-n-f Metadata [33.0 kB]
Get:21 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Packages [2837 kB]
Get:22 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/restricted Translation-en [656 kB]
Get:23 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Components [212 B]
Get:24 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Packages [32.2 kB]
Get:25 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse Translation-en [7520 B]
Get:26 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Components [940 B]
Get:27 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 c-n-f Metadata [500 B]
Get:28 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main amd64 Packages [40.4 kB]
Get:29 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main Translation-en [9208 B]
Get:30 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main amd64 Components [7340 B]
Get:31 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main amd64 c-n-f Metadata [368 B]
Get:32 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe amd64 Packages [30.7 kB]
Get:33 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe Translation-en [18.2 kB]
Get:34 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe amd64 Components [13.2 kB]
Get:35 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe amd64 c-n-f Metadata [1480 B]
Get:36 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/restricted amd64 Components [216 B]
Get:37 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/restricted amd64 c-n-f Metadata [116 B]
Get:38 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Packages [780 B]
Get:39 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/multiverse Translation-en [372 B]
Get:40 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Components [212 B]
Get:41 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 c-n-f Metadata [116 B]
Get:42 http://security.ubuntu.com/ubuntu noble-security/main amd64 Packages [1546 kB]
Get:43 http://security.ubuntu.com/ubuntu noble-security/main Translation-en [249 kB]
Get:44 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [21.5 kB]
Get:45 http://security.ubuntu.com/ubuntu noble-security/main amd64 c-n-f Metadata [10.7 kB]
Get:46 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Packages [1166 kB]
Get:47 http://security.ubuntu.com/ubuntu noble-security/universe Translation-en [225 kB]
Get:48 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [74.2 kB]
Get:49 http://security.ubuntu.com/ubuntu noble-security/universe amd64 c-n-f Metadata [20.8 kB]
Get:50 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Packages [2689 kB]
Get:51 http://security.ubuntu.com/ubuntu noble-security/restricted Translation-en [625 kB]
Get:52 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [212 B]
Get:53 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Packages [28.8 kB]
Get:54 http://security.ubuntu.com/ubuntu noble-security/multiverse Translation-en [6980 B]
Get:55 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [208 B]
Get:56 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 c-n-f Metadata [396 B]
Fetched 41.1 MB in 7s (5940 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
23 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Calculating upgrade... Done
The following NEW packages will be installed:
  linux-aws-6.17-headers-6.17.0-1009 linux-aws-6.17-tools-6.17.0-1009 linux-headers-6.17.0-1009-aws linux-image-6.17.0-1009-aws
  linux-modules-6.17.0-1009-aws linux-tools-6.17.0-1009-aws
The following packages will be upgraded:
  coreutils libnss-systemd libpam-systemd libssh-4 libsystemd-shared libsystemd0 libudev1 linux-aws linux-headers-aws linux-image-aws python3-cryptography
  python3-openssl snapd systemd systemd-dev systemd-resolved systemd-sysv udev vim vim-common vim-runtime vim-tiny xxd
23 upgraded, 6 newly installed, 0 to remove and 0 not upgraded.
22 standard LTS security updates
Need to get 134 MB of archives.
After this operation, 197 MB of additional disk space will be used.
Get:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 coreutils amd64 9.4-3ubuntu6.2 [1412 kB]
Get:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libnss-systemd amd64 255.4-1ubuntu8.14 [159 kB]
Get:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 systemd-dev all 255.4-1ubuntu8.14 [106 kB]
Get:4 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 systemd-resolved amd64 255.4-1ubuntu8.14 [296 kB]
Get:5 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libsystemd-shared amd64 255.4-1ubuntu8.14 [2074 kB]
Get:6 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libsystemd0 amd64 255.4-1ubuntu8.14 [435 kB]
Get:7 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 systemd-sysv amd64 255.4-1ubuntu8.14 [11.9 kB]
Get:8 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libpam-systemd amd64 255.4-1ubuntu8.14 [235 kB]
Get:9 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 systemd amd64 255.4-1ubuntu8.14 [3475 kB]
Get:10 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 udev amd64 255.4-1ubuntu8.14 [1875 kB]
Get:11 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libudev1 amd64 255.4-1ubuntu8.14 [177 kB]
Get:12 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 vim amd64 2:9.1.0016-1ubuntu7.10 [1882 kB]
Get:13 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 vim-common all 2:9.1.0016-1ubuntu7.10 [387 kB]
Get:14 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 vim-tiny amd64 2:9.1.0016-1ubuntu7.10 [804 kB]
Get:15 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 vim-runtime all 2:9.1.0016-1ubuntu7.10 [7282 kB]
Get:16 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 xxd amd64 2:9.1.0016-1ubuntu7.10 [64.3 kB]
Get:17 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libssh-4 amd64 0.10.6-2ubuntu0.4 [190 kB]
Get:18 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-modules-6.17.0-1009-aws amd64 6.17.0-1009.9~24.04.2 [39.9 MB]
Get:19 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-image-6.17.0-1009-aws amd64 6.17.0-1009.9~24.04.2 [15.9 MB]
Get:20 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-aws amd64 6.17.0-1009.9~24.04.2 [1736 B]
Get:21 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-image-aws amd64 6.17.0-1009.9~24.04.2 [2324 B]
Get:22 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-aws-6.17-headers-6.17.0-1009 all 6.17.0-1009.9~24.04.2 [14.5 MB]
Get:23 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-headers-6.17.0-1009-aws amd64 6.17.0-1009.9~24.04.2 [3728 kB]
Get:24 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-headers-aws amd64 6.17.0-1009.9~24.04.2 [2240 B]
Get:25 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-aws-6.17-tools-6.17.0-1009 amd64 6.17.0-1009.9~24.04.2 [3491 kB]
Get:26 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 linux-tools-6.17.0-1009-aws amd64 6.17.0-1009.9~24.04.2 [1634 B]
Get:27 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 python3-cryptography amd64 41.0.7-4ubuntu0.4 [815 kB]
Get:28 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 python3-openssl all 23.2.0-1ubuntu0.1 [48.1 kB]
Get:29 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 snapd amd64 2.73+ubuntu24.04.2 [34.6 MB]
Fetched 134 MB in 2s (85.8 MB/s)
(Reading database ... 72566 files and directories currently installed.)
Preparing to unpack .../coreutils_9.4-3ubuntu6.2_amd64.deb ...
Unpacking coreutils (9.4-3ubuntu6.2) over (9.4-3ubuntu6.1) ...
Setting up coreutils (9.4-3ubuntu6.2) ...
(Reading database ... 72566 files and directories currently installed.)
Preparing to unpack .../libnss-systemd_255.4-1ubuntu8.14_amd64.deb ...
Unpacking libnss-systemd:amd64 (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Preparing to unpack .../systemd-dev_255.4-1ubuntu8.14_all.deb ...
Unpacking systemd-dev (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Preparing to unpack .../systemd-resolved_255.4-1ubuntu8.14_amd64.deb ...
Unpacking systemd-resolved (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Preparing to unpack .../libsystemd-shared_255.4-1ubuntu8.14_amd64.deb ...
Unpacking libsystemd-shared:amd64 (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Preparing to unpack .../libsystemd0_255.4-1ubuntu8.14_amd64.deb ...
Unpacking libsystemd0:amd64 (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Setting up libsystemd0:amd64 (255.4-1ubuntu8.14) ...
(Reading database ... 72566 files and directories currently installed.)
Preparing to unpack .../systemd-sysv_255.4-1ubuntu8.14_amd64.deb ...
Unpacking systemd-sysv (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Preparing to unpack .../libpam-systemd_255.4-1ubuntu8.14_amd64.deb ...
Unpacking libpam-systemd:amd64 (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Preparing to unpack .../systemd_255.4-1ubuntu8.14_amd64.deb ...
Unpacking systemd (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Preparing to unpack .../udev_255.4-1ubuntu8.14_amd64.deb ...
Unpacking udev (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Preparing to unpack .../libudev1_255.4-1ubuntu8.14_amd64.deb ...
Unpacking libudev1:amd64 (255.4-1ubuntu8.14) over (255.4-1ubuntu8.12) ...
Setting up libudev1:amd64 (255.4-1ubuntu8.14) ...
(Reading database ... 72566 files and directories currently installed.)
Preparing to unpack .../00-vim_2%3a9.1.0016-1ubuntu7.10_amd64.deb ...
Unpacking vim (2:9.1.0016-1ubuntu7.10) over (2:9.1.0016-1ubuntu7.9) ...
Preparing to unpack .../01-vim-common_2%3a9.1.0016-1ubuntu7.10_all.deb ...
Unpacking vim-common (2:9.1.0016-1ubuntu7.10) over (2:9.1.0016-1ubuntu7.9) ...
Preparing to unpack .../02-vim-tiny_2%3a9.1.0016-1ubuntu7.10_amd64.deb ...
Unpacking vim-tiny (2:9.1.0016-1ubuntu7.10) over (2:9.1.0016-1ubuntu7.9) ...
Preparing to unpack .../03-vim-runtime_2%3a9.1.0016-1ubuntu7.10_all.deb ...
Unpacking vim-runtime (2:9.1.0016-1ubuntu7.10) over (2:9.1.0016-1ubuntu7.9) ...
Preparing to unpack .../04-xxd_2%3a9.1.0016-1ubuntu7.10_amd64.deb ...
Unpacking xxd (2:9.1.0016-1ubuntu7.10) over (2:9.1.0016-1ubuntu7.9) ...
Preparing to unpack .../05-libssh-4_0.10.6-2ubuntu0.4_amd64.deb ...
Unpacking libssh-4:amd64 (0.10.6-2ubuntu0.4) over (0.10.6-2ubuntu0.3) ...
Selecting previously unselected package linux-modules-6.17.0-1009-aws.
Preparing to unpack .../06-linux-modules-6.17.0-1009-aws_6.17.0-1009.9~24.04.2_amd64.deb ...
Unpacking linux-modules-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
Selecting previously unselected package linux-image-6.17.0-1009-aws.
Preparing to unpack .../07-linux-image-6.17.0-1009-aws_6.17.0-1009.9~24.04.2_amd64.deb ...
Unpacking linux-image-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
Preparing to unpack .../08-linux-aws_6.17.0-1009.9~24.04.2_amd64.deb ...
Unpacking linux-aws (6.17.0-1009.9~24.04.2) over (6.17.0-1007.7~24.04.1) ...
Preparing to unpack .../09-linux-image-aws_6.17.0-1009.9~24.04.2_amd64.deb ...
Unpacking linux-image-aws (6.17.0-1009.9~24.04.2) over (6.17.0-1007.7~24.04.1) ...
Selecting previously unselected package linux-aws-6.17-headers-6.17.0-1009.
Preparing to unpack .../10-linux-aws-6.17-headers-6.17.0-1009_6.17.0-1009.9~24.04.2_all.deb ...
Unpacking linux-aws-6.17-headers-6.17.0-1009 (6.17.0-1009.9~24.04.2) ...
Selecting previously unselected package linux-headers-6.17.0-1009-aws.
Preparing to unpack .../11-linux-headers-6.17.0-1009-aws_6.17.0-1009.9~24.04.2_amd64.deb ...
Unpacking linux-headers-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
Preparing to unpack .../12-linux-headers-aws_6.17.0-1009.9~24.04.2_amd64.deb ...
Unpacking linux-headers-aws (6.17.0-1009.9~24.04.2) over (6.17.0-1007.7~24.04.1) ...
Selecting previously unselected package linux-aws-6.17-tools-6.17.0-1009.
Preparing to unpack .../13-linux-aws-6.17-tools-6.17.0-1009_6.17.0-1009.9~24.04.2_amd64.deb ...
Unpacking linux-aws-6.17-tools-6.17.0-1009 (6.17.0-1009.9~24.04.2) ...
Selecting previously unselected package linux-tools-6.17.0-1009-aws.
Preparing to unpack .../14-linux-tools-6.17.0-1009-aws_6.17.0-1009.9~24.04.2_amd64.deb ...
Unpacking linux-tools-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
Preparing to unpack .../15-python3-cryptography_41.0.7-4ubuntu0.4_amd64.deb ...
Unpacking python3-cryptography (41.0.7-4ubuntu0.4) over (41.0.7-4ubuntu0.3) ...
Preparing to unpack .../16-python3-openssl_23.2.0-1ubuntu0.1_all.deb ...
Unpacking python3-openssl (23.2.0-1ubuntu0.1) over (23.2.0-1) ...
Preparing to unpack .../17-snapd_2.73+ubuntu24.04.2_amd64.deb ...
Unpacking snapd (2.73+ubuntu24.04.2) over (2.73+ubuntu24.04) ...
Setting up linux-aws-6.17-tools-6.17.0-1009 (6.17.0-1009.9~24.04.2) ...
Setting up systemd-dev (255.4-1ubuntu8.14) ...
Setting up xxd (2:9.1.0016-1ubuntu7.10) ...
Setting up vim-common (2:9.1.0016-1ubuntu7.10) ...
Setting up python3-cryptography (41.0.7-4ubuntu0.4) ...
Setting up libsystemd-shared:amd64 (255.4-1ubuntu8.14) ...
Setting up libssh-4:amd64 (0.10.6-2ubuntu0.4) ...
Setting up vim-runtime (2:9.1.0016-1ubuntu7.10) ...
Setting up linux-tools-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
Setting up linux-aws-6.17-headers-6.17.0-1009 (6.17.0-1009.9~24.04.2) ...
Setting up vim (2:9.1.0016-1ubuntu7.10) ...
Setting up python3-openssl (23.2.0-1ubuntu0.1) ...
Setting up systemd (255.4-1ubuntu8.14) ...
Setting up vim-tiny (2:9.1.0016-1ubuntu7.10) ...
Setting up linux-headers-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
Setting up udev (255.4-1ubuntu8.14) ...
Setting up systemd-resolved (255.4-1ubuntu8.14) ...
Setting up snapd (2.73+ubuntu24.04.2) ...
snapd.failure.service is a disabled or a static unit not running, not starting it.
snapd.gpio-chardev-setup.target is a disabled or a static unit not running, not starting it.
snapd.snap-repair.service is a disabled or a static unit not running, not starting it.
Setting up systemd-sysv (255.4-1ubuntu8.14) ...
Setting up linux-headers-aws (6.17.0-1009.9~24.04.2) ...
Setting up libnss-systemd:amd64 (255.4-1ubuntu8.14) ...
Setting up libpam-systemd:amd64 (255.4-1ubuntu8.14) ...
Setting up linux-image-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
I: /boot/vmlinuz is now a symlink to vmlinuz-6.17.0-1009-aws
I: /boot/initrd.img is now a symlink to initrd.img-6.17.0-1009-aws
Setting up linux-modules-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
Setting up linux-image-aws (6.17.0-1009.9~24.04.2) ...
Setting up linux-aws (6.17.0-1009.9~24.04.2) ...
Processing triggers for man-db (2.12.0-4build2) ...
Processing triggers for dbus (1.14.10-4ubuntu4.1) ...
Processing triggers for install-info (7.1-3build2) ...
Processing triggers for initramfs-tools (0.142ubuntu25.8) ...
update-initramfs: Generating /boot/initrd.img-6.17.0-1007-aws
Processing triggers for libc-bin (2.39-0ubuntu8.7) ...
Processing triggers for linux-image-6.17.0-1009-aws (6.17.0-1009.9~24.04.2) ...
/etc/kernel/postinst.d/initramfs-tools:
update-initramfs: Generating /boot/initrd.img-6.17.0-1009-aws
/etc/kernel/postinst.d/zz-update-grub:
Sourcing file `/etc/default/grub'
Sourcing file `/etc/default/grub.d/40-force-partuuid.cfg'
Sourcing file `/etc/default/grub.d/50-cloudimg-settings.cfg'
Generating grub configuration file ...
GRUB_FORCE_PARTUUID is set, will attempt initrdless boot
Found linux image: /boot/vmlinuz-6.17.0-1009-aws
Found initrd image: /boot/microcode.cpio /boot/initrd.img-6.17.0-1009-aws
Found linux image: /boot/vmlinuz-6.17.0-1007-aws
Found initrd image: /boot/microcode.cpio /boot/initrd.img-6.17.0-1007-aws
Warning: os-prober will not be executed to detect other bootable partitions.
Systems on them will not be added to the GRUB boot configuration.
Check GRUB_DISABLE_OS_PROBER documentation entry.
Adding boot menu entry for UEFI Firmware Settings ...
done
Scanning processes...
Scanning candidates...
Scanning linux images...

Pending kernel upgrade!
Running kernel version:
  6.17.0-1007-aws
Diagnostics:
  The currently running kernel version is not the expected kernel version 6.17.0-1009-aws.

Restarting the system to load the new kernel will not be handled automatically, so you should consider rebooting.

Restarting services...
 systemctl restart irqbalance.service multipathd.service packagekit.service polkit.service rsyslog.service ssh.service udisks2.service

Service restarts being deferred:
 systemctl restart ModemManager.service
 /etc/needrestart/restart.d/dbus.service
 systemctl restart networkd-dispatcher.service
 systemctl restart systemd-logind.service
 systemctl restart unattended-upgrades.service

No containers need to be restarted.

User sessions running outdated binaries:
 ubuntu @ session #3: apt[1568], sshd[1094]
 ubuntu @ user manager service: systemd[1099]

No VM guests are running outdated hypervisor (qemu) binaries on this host.
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ sudo apt install -y docker.io
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  bridge-utils containerd dns-root-data dnsmasq-base pigz runc ubuntu-fan
Suggested packages:
  ifupdown aufs-tools cgroupfs-mount | cgroup-lite debootstrap docker-buildx docker-compose-v2 docker-doc rinse zfs-fuse | zfsutils
The following NEW packages will be installed:
  bridge-utils containerd dns-root-data dnsmasq-base docker.io pigz runc ubuntu-fan
0 upgraded, 8 newly installed, 0 to remove and 0 not upgraded.
Need to get 76.1 MB of archives.
After this operation, 288 MB of additional disk space will be used.
Get:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 pigz amd64 2.8-1 [65.6 kB]
Get:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/main amd64 bridge-utils amd64 1.7.1-1ubuntu2 [33.9 kB]
Get:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 runc amd64 1.3.3-0ubuntu1~24.04.3 [8815 kB]
Get:4 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 containerd amd64 1.7.28-0ubuntu1~24.04.2 [38.4 MB]
Get:5 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 dns-root-data all 2024071801~ubuntu0.24.04.1 [5918 B]
Get:6 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 dnsmasq-base amd64 2.90-2ubuntu0.1 [376 kB]
Get:7 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 docker.io amd64 28.2.2-0ubuntu1~24.04.1 [28.3 MB]
Get:8 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 ubuntu-fan all 0.12.16+24.04.1 [34.2 kB]
Fetched 76.1 MB in 1s (90.1 MB/s)
Preconfiguring packages ...
Selecting previously unselected package pigz.
(Reading database ... 104819 files and directories currently installed.)
Preparing to unpack .../0-pigz_2.8-1_amd64.deb ...
Unpacking pigz (2.8-1) ...
Selecting previously unselected package bridge-utils.
Preparing to unpack .../1-bridge-utils_1.7.1-1ubuntu2_amd64.deb ...
Unpacking bridge-utils (1.7.1-1ubuntu2) ...
Selecting previously unselected package runc.
Preparing to unpack .../2-runc_1.3.3-0ubuntu1~24.04.3_amd64.deb ...
Unpacking runc (1.3.3-0ubuntu1~24.04.3) ...
Selecting previously unselected package containerd.
Preparing to unpack .../3-containerd_1.7.28-0ubuntu1~24.04.2_amd64.deb ...
Unpacking containerd (1.7.28-0ubuntu1~24.04.2) ...
Selecting previously unselected package dns-root-data.
Preparing to unpack .../4-dns-root-data_2024071801~ubuntu0.24.04.1_all.deb ...
Unpacking dns-root-data (2024071801~ubuntu0.24.04.1) ...
Selecting previously unselected package dnsmasq-base.
Preparing to unpack .../5-dnsmasq-base_2.90-2ubuntu0.1_amd64.deb ...
Unpacking dnsmasq-base (2.90-2ubuntu0.1) ...
Selecting previously unselected package docker.io.
Preparing to unpack .../6-docker.io_28.2.2-0ubuntu1~24.04.1_amd64.deb ...
Unpacking docker.io (28.2.2-0ubuntu1~24.04.1) ...
Selecting previously unselected package ubuntu-fan.
Preparing to unpack .../7-ubuntu-fan_0.12.16+24.04.1_all.deb ...
Unpacking ubuntu-fan (0.12.16+24.04.1) ...
Setting up dnsmasq-base (2.90-2ubuntu0.1) ...
Setting up runc (1.3.3-0ubuntu1~24.04.3) ...
Setting up dns-root-data (2024071801~ubuntu0.24.04.1) ...
Setting up bridge-utils (1.7.1-1ubuntu2) ...
Setting up pigz (2.8-1) ...
Setting up containerd (1.7.28-0ubuntu1~24.04.2) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /usr/lib/systemd/system/containerd.service.
Setting up ubuntu-fan (0.12.16+24.04.1) ...
Created symlink /etc/systemd/system/multi-user.target.wants/ubuntu-fan.service → /usr/lib/systemd/system/ubuntu-fan.service.
Setting up docker.io (28.2.2-0ubuntu1~24.04.1) ...
info: Selecting GID from range 100 to 999 ...
info: Adding group `docker' (GID 113) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /usr/lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /usr/lib/systemd/system/docker.socket.
Processing triggers for dbus (1.14.10-4ubuntu4.1) ...
Processing triggers for man-db (2.12.0-4build2) ...
Scanning processes...
Scanning candidates...
Scanning linux images...

Pending kernel upgrade!
Running kernel version:
  6.17.0-1007-aws
Diagnostics:
  The currently running kernel version is not the expected kernel version 6.17.0-1009-aws.

Restarting the system to load the new kernel will not be handled automatically, so you should consider rebooting.

Restarting services...

Service restarts being deferred:
 /etc/needrestart/restart.d/dbus.service
 systemctl restart networkd-dispatcher.service
 systemctl restart systemd-logind.service
 systemctl restart unattended-upgrades.service

No containers need to be restarted.

User sessions running outdated binaries:
 ubuntu @ session #3: sshd[1094]
 ubuntu @ user manager service: systemd[1099]

No VM guests are running outdated hypervisor (qemu) binaries on this host.
ubuntu@ip-172-31-37-154:~$ sudo systemctl sta
start   status
ubuntu@ip-172-31-37-154:~$ sudo systemctl start docker
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ sudo systemctl enable docker
ubuntu@ip-172-31-37-154:~$ sudo usermod -aG docker $USER
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ newgrp docker
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ docker --version
Docker version 28.2.2, build 28.2.2-0ubuntu1~24.04.1
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ # Download latest stable kubectl
curl -LO "https://dl.k8s.io/release/$(curl -sL https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Install
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Verify
kubectl version --client
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 55.8M  100 55.8M    0     0   304M      0 --:--:-- --:--:-- --:--:--  305M
Client Version: v1.35.3
Kustomize Version: v5.7.1
ubuntu@ip-172-31-37-154:~$ curl -LO "https://dl.k8s.io/release/$(curl -sL https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 55.8M  100 55.8M    0     0   250M      0 --:--:-- --:--:-- --:--:--  250M
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl version --client
Client Version: v1.35.3
Kustomize Version: v5.7.1
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0  128M    0 72505    0     0  85615      0  0:26:15 --:--:--  0:26:15 85602
  0  128M    0  570k    0     0   311k      0  0:07:03  0:00:01  0:07:02  311k

100  128M  100  128M    0     0  11.7M      0  0:00:10  0:00:10 --:--:-- 15.9M
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ sudo install minikube-linux-amd64 /usr/local/bin/minikube
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ minikube --versiom
Error: unknown flag: --versiom
See 'minikube --help' for usage.
ubuntu@ip-172-31-37-154:~$ minikube --version
Error: unknown flag: --version
See 'minikube --help' for usage.
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ minikube version
minikube version: v1.38.1
commit: c93a4cb9311efc66b90d33ea03f75f2c4120e9b0
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ minikube start --driver=docker
😄  minikube v1.38.1 on Ubuntu 24.04
✨  Using the docker driver based on user configuration
❗  Starting v1.39.0, minikube will default to "containerd" container runtime. See #21973 for more info.

🧯  The requested memory allocation of 3072MiB does not leave room for system overhead (total system memory: 3834MiB). You may face stability issues.
💡  Suggestion: Start minikube with less memory allocated: 'minikube start --memory=3072mb'

📌  Using Docker driver with root privileges
👍  Starting "minikube" primary control-plane node in "minikube" cluster
🚜  Pulling base image v0.0.50 ...
💾  Downloading Kubernetes v1.35.1 preload ...
    > preloaded-images-k8s-v18-v1...:  272.45 MiB / 272.45 MiB  100.00% 14.14 M
    > gcr.io/k8s-minikube/kicbase...:  519.58 MiB / 519.58 MiB  100.00% 15.80 M

🔥  Creating docker container (CPUs=2, Memory=3072MB) ...
🐳  Preparing Kubernetes v1.35.1 on Docker 29.2.1 ...
🔗  Configuring bridge CNI (Container Networking Interface) ...
🔎  Verifying Kubernetes components...
    ▪ Using image gcr.io/k8s-minikube/storage-provisioner:v5
🌟  Enabled addons: storage-provisioner, default-storageclass
🏄  Done! kubectl is now configured to use "minikube" cluster and "default" namespace by default
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ minikube status
minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl cluster-info
Kubernetes control plane is running at https://192.168.49.2:8443
CoreDNS is running at https://192.168.49.2:8443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get nodes
NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   56s   v1.35.1
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get nodes
NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   63s   v1.35.1
ubuntu@ip-172-31-37-154:~$ kubectl get namespaces
NAME              STATUS   AGE
default           Active   86s
kube-node-lease   Active   86s
kube-public       Active   86s
kube-system       Active   87s
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl create namespace dev
namespace/dev created
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get namespaces
NAME              STATUS   AGE
default           Active   116s
dev               Active   5s
kube-node-lease   Active   116s
kube-public       Active   116s
kube-system       Active   117s
ubuntu@ip-172-31-37-154:~$ kubectl create namespace staging
namespace/staging created
ubuntu@ip-172-31-37-154:~$ kubectl create namespace production
namespace/production created
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get namespaces
NAME              STATUS   AGE
default           Active   2m12s
dev               Active   21s
kube-node-lease   Active   2m12s
kube-public       Active   2m12s
kube-system       Active   2m13s
production        Active   4s
staging           Active   9s
ubuntu@ip-172-31-37-154:~$ cat <<EOF > dev-namespace.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: dev
  labels:
    environment: development
    team: backend
EOF
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ cat dev-namespace.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: dev
  labels:
    environment: development
    team: backend
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl apply -f dev-namespace.yaml
Warning: resource namespaces/dev is missing the kubectl.kubernetes.io/last-applied-configuration annotation which is required by kubectl apply. kubectl apply should only be used on resources created declaratively by either kubectl create --save-config or kubectl apply. The missing annotation will be patched automatically.
namespace/dev configured
ubuntu@ip-172-31-37-154:~$ kubectl get ns
NAME              STATUS   AGE
default           Active   3m43s
dev               Active   112s
kube-node-lease   Active   3m43s
kube-public       Active   3m43s
kube-system       Active   3m44s
production        Active   95s
staging           Active   100s
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl describe dev namespace
error: the server doesn't have a resource type "dev"
ubuntu@ip-172-31-37-154:~$ kubectl describe namespace dev
Name:         dev
Labels:       environment=development
              kubernetes.io/metadata.name=dev
              team=backend
Annotations:  <none>
Status:       Active

No resource quota.

No LimitRange resource.
ubuntu@ip-172-31-37-154:~$ kubectl run nginx --image=nginx --namespace=dev
pod/nginx created
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get pods
No resources found in default namespace.
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get pods -n dev
NAME    READY   STATUS    RESTARTS   AGE
nginx   1/1     Running   0          18s
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get pods --namespace=staging
No resources found in staging namespace.
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl run nginx --image=nginx --namespace=staging
pod/nginx created
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get pods --namespace=staging
NAME    READY   STATUS              RESTARTS   AGE
nginx   0/1     ContainerCreating   0          3s
ubuntu@ip-172-31-37-154:~$ kubectl run nginx --image=nginx --namespace=staging
Error from server (AlreadyExists): pods "nginx" already exists
ubuntu@ip-172-31-37-154:~$ kubectl get pods -n staging
NAME    READY   STATUS    RESTARTS   AGE
nginx   1/1     Running   0          27s
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get pods --all-namespaces
NAMESPACE     NAME                               READY   STATUS    RESTARTS        AGE
dev           nginx                              1/1     Running   0               102s
kube-system   coredns-7d764666f9-l7lxw           1/1     Running   0               6m27s
kube-system   etcd-minikube                      1/1     Running   0               6m33s
kube-system   kube-apiserver-minikube            1/1     Running   0               6m33s
kube-system   kube-controller-manager-minikube   1/1     Running   0               6m34s
kube-system   kube-proxy-4vmv4                   1/1     Running   0               6m28s
kube-system   kube-scheduler-minikube            1/1     Running   0               6m33s
kube-system   storage-provisioner                1/1     Running   1 (5m56s ago)   6m31s
staging       nginx                              1/1     Running   0               36s
ubuntu@ip-172-31-37-154:~$ kubectl get pods --all-ns
error: unknown flag: --all-ns
See 'kubectl get --help' for usage.
ubuntu@ip-172-31-37-154:~$ kubectl get pods -A
NAMESPACE     NAME                               READY   STATUS    RESTARTS        AGE
dev           nginx                              1/1     Running   0               2m5s
kube-system   coredns-7d764666f9-l7lxw           1/1     Running   0               6m50s
kube-system   etcd-minikube                      1/1     Running   0               6m56s
kube-system   kube-apiserver-minikube            1/1     Running   0               6m56s
kube-system   kube-controller-manager-minikube   1/1     Running   0               6m57s
kube-system   kube-proxy-4vmv4                   1/1     Running   0               6m51s
kube-system   kube-scheduler-minikube            1/1     Running   0               6m56s
kube-system   storage-provisioner                1/1     Running   1 (6m19s ago)   6m54s
staging       nginx                              1/1     Running   0               59s
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl config set-context --current --namespace=dev
Context "minikube" modified.
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl delete namespace staging
namespace "staging" deleted


ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get ns
NAME              STATUS   AGE
default           Active   8m2s
dev               Active   6m11s
kube-node-lease   Active   8m2s
kube-public       Active   8m2s
kube-system       Active   8m3s
production        Active   5m54s
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ kubectl get pods -A
NAMESPACE     NAME                               READY   STATUS    RESTARTS        AGE
dev           nginx                              1/1     Running   0               3m15s
kube-system   coredns-7d764666f9-l7lxw           1/1     Running   0               8m
kube-system   etcd-minikube                      1/1     Running   0               8m6s
kube-system   kube-apiserver-minikube            1/1     Running   0               8m6s
kube-system   kube-controller-manager-minikube   1/1     Running   0               8m7s
kube-system   kube-proxy-4vmv4                   1/1     Running   0               8m1s
kube-system   kube-scheduler-minikube            1/1     Running   0               8m6s
kube-system   storage-provisioner                1/1     Running   1 (7m29s ago)   8m4s
ubuntu@ip-172-31-37-154:~$ cat <<EOF > dev-quota.yaml
apiVersion: v1
kind: ResourceQuota
metadata:
  name: dev-quota
  namespace: dev
spec:
  hard:
    pods: "10"
    requests.cpu: "2"
    requests.memory: 2Gi
    limits.cpu: "4"
    limits.memory: 4Gi
EOF
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ cat dev-quota.yaml
apiVersion: v1
kind: ResourceQuota
metadata:
  name: dev-quota
  namespace: dev
spec:
  hard:
    pods: "10"
    requests.cpu: "2"
    requests.memory: 2Gi
    limits.cpu: "4"
    limits.memory: 4Gi
ubuntu@ip-172-31-37-154:~$ kubectl apply -f dev-quota.yaml
resourcequota/dev-quota created
ubuntu@ip-172-31-37-154:~$ kubectl describe resourcequota dev-quota -n dev
Name:            dev-quota
Namespace:       dev
Resource         Used  Hard
--------         ----  ----
limits.cpu       0     4
limits.memory    0     4Gi
pods             1     10
requests.cpu     0     2
requests.memory  0     2Gi
ubuntu@ip-172-31-37-154:~$ minikube dashboard --url
🔌  Enabling dashboard ...
    ▪ Using image docker.io/kubernetesui/dashboard:v2.7.0
    ▪ Using image docker.io/kubernetesui/metrics-scraper:v1.0.8
💡  Some dashboard features require the metrics-server addon. To enable all features please run:

        minikube addons enable metrics-server

🤔  Verifying dashboard health ...
🚀  Launching proxy ...
🤔  Verifying proxy health ...
http://127.0.0.1:40209/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/
^C
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$
ubuntu@ip-172-31-37-154:~$ minikube dashboard --url
🤔  Verifying dashboard health ...
🚀  Launching proxy ...
🤔  Verifying proxy health ...
http://127.0.0.1:40535/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/
