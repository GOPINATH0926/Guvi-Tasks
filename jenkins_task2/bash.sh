ubuntu@ip-172-31-36-140:~$ sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version
Hit:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu noble-security InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
fontconfig is already the newest version (2.15.0-1.1ubuntu2).
The following additional packages will be installed:
  libcolord2 libepoxy0 libgtk-3-0t64 libgtk-3-bin libgtk-3-common libwayland-cursor0 libwayland-egl1
  openjdk-21-jre-headless
Suggested packages:
  colord gvfs libnss-mdns fonts-ipafont-gothic fonts-ipafont-mincho fonts-wqy-microhei | fonts-wqy-zenhei fonts-indic
The following NEW packages will be installed:
  libcolord2 libepoxy0 libgtk-3-0t64 libgtk-3-bin libgtk-3-common libwayland-cursor0 libwayland-egl1 openjdk-21-jre
  openjdk-21-jre-headless
0 upgraded, 9 newly installed, 0 to remove and 0 not upgraded.
Need to get 51.4 MB of archives.
After this operation, 220 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/main amd64 libcolord2 amd64 1.4.7-1build2 [149 kB]
Get:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/main amd64 libepoxy0 amd64 1.5.10-1build1 [220 kB]
Get:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/main amd64 libwayland-cursor0 amd64 1.22.0-2.1build1 [10.4 kB]
Get:4 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/main amd64 libwayland-egl1 amd64 1.22.0-2.1build1 [5628 B]
Get:5 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libgtk-3-common all 3.24.41-4ubuntu1.3 [1426 kB]
Get:6 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libgtk-3-0t64 amd64 3.24.41-4ubuntu1.3 [2913 kB]
Get:7 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 libgtk-3-bin amd64 3.24.41-4ubuntu1.3 [73.9 kB]
Get:8 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 openjdk-21-jre-headless amd64 21.0.10+7-1~24.04 [46.4 MB]
Get:9 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 openjdk-21-jre amd64 21.0.10+7-1~24.04 [232 kB]
Fetched 51.4 MB in 1s (58.8 MB/s)
Selecting previously unselected package libcolord2:amd64.
(Reading database ... 119584 files and directories currently installed.)
Preparing to unpack .../0-libcolord2_1.4.7-1build2_amd64.deb ...
Unpacking libcolord2:amd64 (1.4.7-1build2) ...
Selecting previously unselected package libepoxy0:amd64.
Preparing to unpack .../1-libepoxy0_1.5.10-1build1_amd64.deb ...
Unpacking libepoxy0:amd64 (1.5.10-1build1) ...
Selecting previously unselected package libwayland-cursor0:amd64.
Preparing to unpack .../2-libwayland-cursor0_1.22.0-2.1build1_amd64.deb ...
Unpacking libwayland-cursor0:amd64 (1.22.0-2.1build1) ...
Selecting previously unselected package libwayland-egl1:amd64.
Preparing to unpack .../3-libwayland-egl1_1.22.0-2.1build1_amd64.deb ...
Unpacking libwayland-egl1:amd64 (1.22.0-2.1build1) ...
Selecting previously unselected package libgtk-3-common.
Preparing to unpack .../4-libgtk-3-common_3.24.41-4ubuntu1.3_all.deb ...
Unpacking libgtk-3-common (3.24.41-4ubuntu1.3) ...
Selecting previously unselected package libgtk-3-0t64:amd64.
Preparing to unpack .../5-libgtk-3-0t64_3.24.41-4ubuntu1.3_amd64.deb ...
Unpacking libgtk-3-0t64:amd64 (3.24.41-4ubuntu1.3) ...
Selecting previously unselected package libgtk-3-bin.
Preparing to unpack .../6-libgtk-3-bin_3.24.41-4ubuntu1.3_amd64.deb ...
Unpacking libgtk-3-bin (3.24.41-4ubuntu1.3) ...
Selecting previously unselected package openjdk-21-jre-headless:amd64.
Preparing to unpack .../7-openjdk-21-jre-headless_21.0.10+7-1~24.04_amd64.deb ...
Unpacking openjdk-21-jre-headless:amd64 (21.0.10+7-1~24.04) ...
Selecting previously unselected package openjdk-21-jre:amd64.
Preparing to unpack .../8-openjdk-21-jre_21.0.10+7-1~24.04_amd64.deb ...
Unpacking openjdk-21-jre:amd64 (21.0.10+7-1~24.04) ...
Setting up openjdk-21-jre-headless:amd64 (21.0.10+7-1~24.04) ...
update-alternatives: using /usr/lib/jvm/java-21-openjdk-amd64/bin/java to provide /usr/bin/java (java) in auto mode
update-alternatives: using /usr/lib/jvm/java-21-openjdk-amd64/bin/jpackage to provide /usr/bin/jpackage (jpackage) in auto mode
update-alternatives: using /usr/lib/jvm/java-21-openjdk-amd64/bin/keytool to provide /usr/bin/keytool (keytool) in auto mode
update-alternatives: using /usr/lib/jvm/java-21-openjdk-amd64/bin/rmiregistry to provide /usr/bin/rmiregistry (rmiregistry) in auto mode
update-alternatives: using /usr/lib/jvm/java-21-openjdk-amd64/lib/jexec to provide /usr/bin/jexec (jexec) in auto mode
Setting up libcolord2:amd64 (1.4.7-1build2) ...
Setting up libepoxy0:amd64 (1.5.10-1build1) ...
Setting up libwayland-cursor0:amd64 (1.22.0-2.1build1) ...
Setting up libwayland-egl1:amd64 (1.22.0-2.1build1) ...
Setting up libgtk-3-common (3.24.41-4ubuntu1.3) ...
Processing triggers for libglib2.0-0t64:amd64 (2.80.0-6ubuntu3.8) ...
Setting up libgtk-3-0t64:amd64 (3.24.41-4ubuntu1.3) ...
Processing triggers for hicolor-icon-theme (0.17-2) ...
Processing triggers for libc-bin (2.39-0ubuntu8.7) ...
Setting up libgtk-3-bin (3.24.41-4ubuntu1.3) ...
Processing triggers for man-db (2.12.0-4build2) ...
Processing triggers for ca-certificates-java (20240118) ...
done.
Setting up openjdk-21-jre:amd64 (21.0.10+7-1~24.04) ...
Scanning processes...
Scanning linux images...

Pending kernel upgrade!
Running kernel version:
  6.17.0-1007-aws
Diagnostics:
  The currently running kernel version is not the expected kernel version 6.17.0-1009-aws.

Restarting the system to load the new kernel will not be handled automatically, so you should consider rebooting.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
openjdk version "21.0.10" 2026-01-20
OpenJDK Runtime Environment (build 21.0.10+7-Ubuntu-124.04)
OpenJDK 64-Bit Server VM (build 21.0.10+7-Ubuntu-124.04, mixed mode, sharing)
ubuntu@ip-172-31-36-140:~$ sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins
--2026-03-23 17:02:46--  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
Resolving pkg.jenkins.io (pkg.jenkins.io)... 151.101.210.133, 2a04:4e42:31::645
Connecting to pkg.jenkins.io (pkg.jenkins.io)|151.101.210.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1680 (1.6K) [application/octet-stream]
Saving to: ‘/etc/apt/keyrings/jenkins-keyring.asc’

/etc/apt/keyrings/jenkins-key 100%[=================================================>]   1.64K  --.-KB/s    in 0s

2026-03-23 17:02:46 (20.2 MB/s) - ‘/etc/apt/keyrings/jenkins-keyring.asc’ saved [1680/1680]

Hit:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports InRelease
Ign:4 https://pkg.jenkins.io/debian-stable binary/ InRelease
Get:5 https://pkg.jenkins.io/debian-stable binary/ Release [2044 B]
Get:6 https://pkg.jenkins.io/debian-stable binary/ Release.gpg [833 B]
Get:7 https://pkg.jenkins.io/debian-stable binary/ Packages [30.8 kB]
Hit:8 http://security.ubuntu.com/ubuntu noble-security InRelease
Fetched 33.7 kB in 1s (62.6 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  net-tools
The following NEW packages will be installed:
  jenkins net-tools
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 96.0 MB of archives.
After this operation, 97.2 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 net-tools amd64 2.10-0.1ubuntu4.4 [204 kB]
Get:2 https://pkg.jenkins.io/debian-stable binary/ jenkins 2.541.3 [95.8 MB]
Fetched 96.0 MB in 12s (8313 kB/s)
Selecting previously unselected package net-tools.
(Reading database ... 120026 files and directories currently installed.)
Preparing to unpack .../net-tools_2.10-0.1ubuntu4.4_amd64.deb ...
Unpacking net-tools (2.10-0.1ubuntu4.4) ...
Selecting previously unselected package jenkins.
Preparing to unpack .../jenkins_2.541.3_all.deb ...
Unpacking jenkins (2.541.3) ...
Setting up net-tools (2.10-0.1ubuntu4.4) ...
Setting up jenkins (2.541.3) ...
Created symlink /etc/systemd/system/multi-user.target.wants/jenkins.service → /usr/lib/systemd/system/jenkins.service.
Processing triggers for man-db (2.12.0-4build2) ...
Scanning processes...
Scanning linux images...

Pending kernel upgrade!
Running kernel version:
  6.17.0-1007-aws
Diagnostics:
  The currently running kernel version is not the expected kernel version 6.17.0-1009-aws.

Restarting the system to load the new kernel will not be handled automatically, so you should consider rebooting.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
ubuntu@ip-172-31-36-140:~$
ubuntu@ip-172-31-36-140:~$
ubuntu@ip-172-31-36-140:~$ sudo systemctl enable jenkins
Synchronizing state of jenkins.service with SysV service script with /usr/lib/systemd/systemd-sysv-install.
Executing: /usr/lib/systemd/systemd-sysv-install enable jenkins
ubuntu@ip-172-31-36-140:~$ sudo systemctl start jenkins
ubuntu@ip-172-31-36-140:~$
ubuntu@ip-172-31-36-140:~$
ubuntu@ip-172-31-36-140:~$ sudo cat /var/lib/jenkins/secrets/initialAdminPassword
ad819af987e44e88ab1019b50411a36e
ubuntu@ip-172-31-36-140:~$
ubuntu@ip-172-31-36-140:~$
ubuntu@ip-172-31-36-140:~$ ^C
ubuntu@ip-172-31-36-140:~$ mkdir jenkins-demo && cd jenkins-demo
git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint:
hint:   git config --global init.defaultBranch <name>
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint:   git branch -m <name>
Initialized empty Git repository in /home/ubuntu/jenkins-demo/.git/
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ cat > hello.sh << 'EOF'
#!/bin/bash
echo "========================================="
echo "  Build Triggered Successfully!"
echo "  Date: $(date)"
echo "  Hostname: $(hostname)"
echo "  Build Script Running..."
echo "========================================="
echo "Hello from Jenkins Auto Build!"
echo "All checks passed ✓"
EOF

chmod +x hello.sh
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ cat hello.sh
#!/bin/bash
echo "========================================="
echo "  Build Triggered Successfully!"
echo "  Date: $(date)"
echo "  Hostname: $(hostname)"
echo "  Build Script Running..."
echo "========================================="
echo "Hello from Jenkins Auto Build!"
echo "All checks passed ✓"
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git add .
git commit -m "Initial commit: Add hello.sh build script"
git branch -M main
[master (root-commit) 5a38771] Initial commit: Add hello.sh build script
 Committer: Ubuntu <ubuntu@ip-172-31-36-140.ap-south-1.compute.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 1 file changed, 9 insertions(+)
 create mode 100755 hello.sh
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ ssh-keygen -t ed25519 -C "gopianush860@gmail.com"
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/ubuntu/.ssh/id_ed25519):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/ubuntu/.ssh/id_ed25519
Your public key has been saved in /home/ubuntu/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:kBZfnHFf1r4gVm5S27/pNFmhIQJDsTiFW1qLg0WMzeQ gopianush860@gmail.com
The key's randomart image is:
+--[ED25519 256]--+
|    Bo+*..oo.   +|
|   ..*o*+.o. + o.|
|    oEX.o. .+.+o |
|   . *.o  .+.=o.o|
|      . S . +.. +|
|               .+|
|               +o|
|              .o.|
|              .. |
+----[SHA256]-----+
ubuntu@ip-172-31-36-140:~/jenkins-demo$ cat /home/ubuntu/.ssh/id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDWYLv7ChsLq3/1lGc1ab4DRWAu9WevpshKRg0Tk7W6M gopianush860@gmail.com
ubuntu@ip-172-31-36-140:~/jenkins-demo$ ssh -T git@github.com
The authenticity of host 'github.com (20.207.73.82)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Hi GOPINATH0926! You've successfully authenticated, but GitHub does not provide shell access.
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git remote -v
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git remote set-url origin git@github.com:GOPINATH0926/jenkins-demo.git
error: No such remote 'origin'
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git status
On branch main
nothing to commit, working tree clean
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git remote add origin git@github.com:GOPINATH0926/jenkins-demo.git
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git remote -v
origin  git@github.com:GOPINATH0926/jenkins-demo.git (fetch)
origin  git@github.com:GOPINATH0926/jenkins-demo.git (push)
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git push -u origin main
To github.com:GOPINATH0926/jenkins-demo.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'github.com:GOPINATH0926/jenkins-demo.git'
hint: Updates were rejected because the remote contains work that you do not
hint: have locally. This is usually caused by another repository pushing to
hint: the same ref. If you want to integrate the remote changes, use
hint: 'git pull' before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git pull origin main --rebase
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 5 (delta 0), reused 3 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (5/5), 1.07 KiB | 1.07 MiB/s, done.
From github.com:GOPINATH0926/jenkins-demo
 * branch            main       -> FETCH_HEAD
 * [new branch]      main       -> origin/main
Successfully rebased and updated refs/heads/main.
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git push -u origin main
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 2 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 443 bytes | 443.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:GOPINATH0926/jenkins-demo.git
   9913130..ec7378d  main -> main
branch 'main' set up to track 'origin/main'.
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ git push
Everything up-to-date
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ http://13.233.92.215:8080/safeRestart
-bash: http://13.233.92.215:8080/safeRestart: No such file or directory
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ echo "# Trigger build $(date)" >> README.md
git add .
git commit -m "Test: trigger Jenkins auto build"
git push origin main
[main dd2168b] Test: trigger Jenkins auto build
 Committer: Ubuntu <ubuntu@ip-172-31-36-140.ap-south-1.compute.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 1 file changed, 1 insertion(+)
 create mode 100644 README.md
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 2 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 362 bytes | 362.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:GOPINATH0926/jenkins-demo.git
   ec7378d..dd2168b  main -> main
ubuntu@ip-172-31-36-140:~/jenkins-d
ubuntu@ip-172-31-36-140:~/jenkins-demo$ echo "trigger $(date)" >> README.md
git add .
git commit -m "trigger build"
git push origin main
[main 581577b] trigger build
 Committer: Ubuntu <ubuntu@ip-172-31-36-140.ap-south-1.compute.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 1 file changed, 1 insertion(+)
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 2 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 370 bytes | 370.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:GOPINATH0926/jenkins-demo.git
   3b9b575..581577b  main -> main
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$
ubuntu@ip-172-31-36-140:~/jenkins-demo$ Started by GitHub push by GOPINATH0926
Started by GitHub push by GOPINATH0926
Running as SYSTEM
Building in workspace /var/lib/jenkins/workspace/github-auto-build
