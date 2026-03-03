[ec2-user@ip-172-31-34-140 ~]$ mkdir my-scripts-project
cd my-scripts-project
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ ls
[ec2-user@ip-172-31-34-140 my-scripts-project]$ touch script1.sh
touch script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ ls
script1.sh  script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ touch script1.sh
touch script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$ l
-bash: l: command not found
[ec2-user@ip-172-31-34-140 my-scripts-project]$ ll
total 0
-rw-r--r--. 1 ec2-user ec2-user 0 Mar  3 07:41 script1.sh
-rw-r--r--. 1 ec2-user ec2-user 0 Mar  3 07:41 script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$ echo "echo Hello from Script1" > script1.sh
echo "echo Hello from Script2" > script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ cat script1.sh
echo Hello from Script1
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git init
-bash: git: command not found
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ cat /etc/os-release
NAME="Amazon Linux"
VERSION="2023"
ID="amzn"
ID_LIKE="fedora"
VERSION_ID="2023"
PLATFORM_ID="platform:al2023"
PRETTY_NAME="Amazon Linux 2023.10.20260216"
ANSI_COLOR="0;33"
CPE_NAME="cpe:2.3:o:amazon:amazon_linux:2023"
HOME_URL="https://aws.amazon.com/linux/amazon-linux-2023/"
DOCUMENTATION_URL="https://docs.aws.amazon.com/linux/"
SUPPORT_URL="https://aws.amazon.com/premiumsupport/"
BUG_REPORT_URL="https://github.com/amazonlinux/amazon-linux-2023"
VENDOR_NAME="AWS"
VENDOR_URL="https://aws.amazon.com/"
SUPPORT_END="2029-06-30"
[ec2-user@ip-172-31-34-140 my-scripts-project]$ sudo dnf install git -y
Last metadata expiration check: 1:02:12 ago on Tue Mar  3 06:40:53 2026.
Dependencies resolved.
============================================================================================================================================================
 Package                                Architecture                 Version                                        Repository                         Size
============================================================================================================================================================
Installing:
 git                                    x86_64                       2.50.1-1.amzn2023.0.1                          amazonlinux                        53 k
Installing dependencies:
 git-core                               x86_64                       2.50.1-1.amzn2023.0.1                          amazonlinux                       4.9 M
 git-core-doc                           noarch                       2.50.1-1.amzn2023.0.1                          amazonlinux                       2.8 M
 perl-Error                             noarch                       1:0.17029-5.amzn2023.0.2                       amazonlinux                        41 k
 perl-File-Find                         noarch                       1.37-477.amzn2023.0.7                          amazonlinux                        25 k
 perl-Git                               noarch                       2.50.1-1.amzn2023.0.1                          amazonlinux                        41 k
 perl-TermReadKey                       x86_64                       2.38-9.amzn2023.0.2                            amazonlinux                        36 k
 perl-lib                               x86_64                       0.65-477.amzn2023.0.7                          amazonlinux                        15 k

Transaction Summary
============================================================================================================================================================
Install  8 Packages

Total download size: 7.9 M
Installed size: 41 M
Downloading Packages:
(1/8): git-2.50.1-1.amzn2023.0.1.x86_64.rpm                                                                                 1.4 MB/s |  53 kB     00:00
(2/8): git-core-doc-2.50.1-1.amzn2023.0.1.noarch.rpm                                                                         42 MB/s | 2.8 MB     00:00
(3/8): perl-Error-0.17029-5.amzn2023.0.2.noarch.rpm                                                                         1.2 MB/s |  41 kB     00:00
(4/8): git-core-2.50.1-1.amzn2023.0.1.x86_64.rpm                                                                             50 MB/s | 4.9 MB     00:00
(5/8): perl-File-Find-1.37-477.amzn2023.0.7.noarch.rpm                                                                      789 kB/s |  25 kB     00:00
(6/8): perl-Git-2.50.1-1.amzn2023.0.1.noarch.rpm                                                                            1.3 MB/s |  41 kB     00:00
(7/8): perl-TermReadKey-2.38-9.amzn2023.0.2.x86_64.rpm                                                                      1.3 MB/s |  36 kB     00:00
(8/8): perl-lib-0.65-477.amzn2023.0.7.x86_64.rpm                                                                            550 kB/s |  15 kB     00:00
------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                        46 MB/s | 7.9 MB     00:00
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                    1/1
  Installing       : git-core-2.50.1-1.amzn2023.0.1.x86_64                                                                                              1/8
  Installing       : git-core-doc-2.50.1-1.amzn2023.0.1.noarch                                                                                          2/8
  Installing       : perl-lib-0.65-477.amzn2023.0.7.x86_64                                                                                              3/8
  Installing       : perl-TermReadKey-2.38-9.amzn2023.0.2.x86_64                                                                                        4/8
  Installing       : perl-File-Find-1.37-477.amzn2023.0.7.noarch                                                                                        5/8
  Installing       : perl-Error-1:0.17029-5.amzn2023.0.2.noarch                                                                                         6/8
  Installing       : perl-Git-2.50.1-1.amzn2023.0.1.noarch                                                                                              7/8
  Installing       : git-2.50.1-1.amzn2023.0.1.x86_64                                                                                                   8/8
  Running scriptlet: git-2.50.1-1.amzn2023.0.1.x86_64                                                                                                   8/8
  Verifying        : git-2.50.1-1.amzn2023.0.1.x86_64                                                                                                   1/8
  Verifying        : git-core-2.50.1-1.amzn2023.0.1.x86_64                                                                                              2/8
  Verifying        : git-core-doc-2.50.1-1.amzn2023.0.1.noarch                                                                                          3/8
  Verifying        : perl-Error-1:0.17029-5.amzn2023.0.2.noarch                                                                                         4/8
  Verifying        : perl-File-Find-1.37-477.amzn2023.0.7.noarch                                                                                        5/8
  Verifying        : perl-Git-2.50.1-1.amzn2023.0.1.noarch                                                                                              6/8
  Verifying        : perl-TermReadKey-2.38-9.amzn2023.0.2.x86_64                                                                                        7/8
  Verifying        : perl-lib-0.65-477.amzn2023.0.7.x86_64                                                                                              8/8

Installed:
  git-2.50.1-1.amzn2023.0.1.x86_64                    git-core-2.50.1-1.amzn2023.0.1.x86_64               git-core-doc-2.50.1-1.amzn2023.0.1.noarch
  perl-Error-1:0.17029-5.amzn2023.0.2.noarch          perl-File-Find-1.37-477.amzn2023.0.7.noarch         perl-Git-2.50.1-1.amzn2023.0.1.noarch
  perl-TermReadKey-2.38-9.amzn2023.0.2.x86_64         perl-lib-0.65-477.amzn2023.0.7.x86_64

Complete!
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git --version
git version 2.50.1
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git init
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
hint:
hint: Disable this message with "git config set advice.defaultBranchName false"
Initialized empty Git repository in /home/ec2-user/my-scripts-project/.git/
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch -m main
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git init
Reinitialized existing Git repository in /home/ec2-user/my-scripts-project/.git/
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch -m main
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git status
On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        script1.sh
        script2.sh

nothing added to commit but untracked files present (use "git add" to track)
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git add .
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git status
On branch main

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   script1.sh
        new file:   script2.sh

[ec2-user@ip-172-31-34-140 my-scripts-project]$ git commit -m "Initial commit"
[main (root-commit) 8eb5be1] Initial commit
 Committer: EC2 Default User <ec2-user@ip-172-31-34-140.ap-south-1.compute.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 2 files changed, 2 insertions(+)
 create mode 100644 script1.sh
 create mode 100644 script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git config --global user.name "GOPINATH0926"
git config --global user.email "gopianush860@gmail.com"
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch
* main
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git remote add origin https://github.com/GOPINATH0926/my-scripts-project.git
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git remote -v
origin  https://github.com/GOPINATH0926/my-scripts-project.git (fetch)
origin  https://github.com/GOPINATH0926/my-scripts-project.git (push)
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch -m main
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch
* main
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git push -u origin main
Username for 'https://github.com': GOPINATH0926
Password for 'https://GOPINATH0926@github.com':
remote: Invalid username or token. Password authentication is not supported for Git operations.
fatal: Authentication failed for 'https://github.com/GOPINATH0926/my-scripts-project.git/'
[ec2-user@ip-172-31-34-140 my-scripts-project]$ ssh-keygen -t ed25519 -C "gopianush860@gmail.com"
Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/ec2-user/.ssh/id_ed25519):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/ec2-user/.ssh/id_ed25519
Your public key has been saved in /home/ec2-user/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:Y8p2Zk6X3W7uxrifKoJNt4XGCtVr06bqRuCl27Jy5dY gopianush860@gmail.com
The key's randomart image is:
+--[ED25519 256]--+
|                 |
|                 |
|         .       |
|      . o .      |
|     . =S. +     |
|     .+o+.Oo+.   |
|      +@=*o*.o.  |
|    ..=*O.E ..+. |
|     o.*+o .oO*  |
+----[SHA256]-----+
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ cat ~/.ssh/id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAh02geZLiADY34rm7qNPOlIgMKhpYQ8/IsbqlpHuKVZ gopianush860@gmail.com
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git push -u origin main
Username for 'https://github.com': GOPINATH0926
Password for 'https://GOPINATH0926@github.com':
remote: Invalid username or token. Password authentication is not supported for Git operations.
fatal: Authentication failed for 'https://github.com/GOPINATH0926/my-scripts-project.git/'
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git remote set-url origin git@github.com:GOPINATH0926/my-scripts-project.git
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git remote -v
origin  git@github.com:GOPINATH0926/my-scripts-project.git (fetch)
origin  git@github.com:GOPINATH0926/my-scripts-project.git (push)
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ ssh -T git@github.com
The authenticity of host 'github.com (20.207.73.82)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Hi GOPINATH0926! You've successfully authenticated, but GitHub does not provide shell access.
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git push -u origin main
ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
[ec2-user@ip-172-31-34-140 my-scripts-project]$ https://github.com/GOPINATH0926/my-scripts-project.git
-bash: https://github.com/GOPINATH0926/my-scripts-project.git: No such file or directory
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git@github.com:GOPINATH0926/my-scripts-project.git
-bash: git@github.com:GOPINATH0926/my-scripts-project.git: No such file or directory
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git push -u origin main
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 2 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (4/4), 331 bytes | 331.00 KiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To github.com:GOPINATH0926/my-scripts-project.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git checkout -b feature-branch
Switched to a new branch 'feature-branch'
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch
* feature-branch
  main
[ec2-user@ip-172-31-34-140 my-scripts-project]$ '
>
> ^C
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ echo "echo Feature update" >> script1.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git add .
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git commit -m "Feature update"
[feature-branch 386c990] Feature update
 1 file changed, 1 insertion(+)
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git merge feature-branch
Updating 8eb5be1..386c990
Fast-forward
 script1.sh | 1 +
 1 file changed, 1 insertion(+)
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 2 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 325 bytes | 325.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To github.com:GOPINATH0926/my-scripts-project.git
   8eb5be1..386c990  main -> main
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ ^C
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git checkout -b rebase-branch
Switched to a new branch 'rebase-branch'
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch
  feature-branch
  main
* rebase-branch
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ echo "echo Rebase update" >> script2.sh
git add .
git commit -m "Rebase update"
[rebase-branch ac84bd8] Rebase update
 1 file changed, 1 insertion(+)
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ echo "This is a main update" >> script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git add .
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git commit -m "Main branch update"
[main 7df9ca9] Main branch update
 1 file changed, 1 insertion(+)
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git checkout rebase-branch
Switched to branch 'rebase-branch'
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git rebase main
Auto-merging script2.sh
CONFLICT (content): Merge conflict in script2.sh
error: could not apply ac84bd8... Rebase update
hint: Resolve all conflicts manually, mark them as resolved with
hint: "git add/rm <conflicted_files>", then run "git rebase --continue".
hint: You can instead skip this commit: run "git rebase --skip".
hint: To abort and get back to the state before "git rebase", run "git rebase --abort".
hint: Disable this message with "git config set advice.mergeConflict false"
Could not apply ac84bd8... # Rebase update
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ cat script2.sh
echo Hello from Script2
<<<<<<< HEAD
This is a main update
=======
echo Rebase update
>>>>>>> ac84bd8 (Rebase update)
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git branch
* (no branch, rebasing rebase-branch)
  feature-branch
  main
  rebase-branch
[ec2-user@ip-172-31-34-140 my-scripts-project]$ client_loop: send disconnect: Connection reset
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads>  icacls win.pem /inheritance:r
processed file: win.pem
Successfully processed 1 files; Failed processing 0 files
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads>  icacls win.pem /grant:r "$($env:USERNAME):(R)"
processed file: win.pem
Successfully processed 1 files; Failed processing 0 files
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads>
PS C:\Users\Abhinath O\Downloads> ec2-13-127-209-193.ap-south-1.compute.amazonaws.com
ec2-13-127-209-193.ap-south-1.compute.amazonaws.com : The term 'ec2-13-127-209-193.ap-south-1.compute.amazonaws.com' is not recognized as the name of a
cmdlet, function, script file, or operable program. Check the spelling of the name, or if a path was included, verify that the path is correct and try
again.
At line:1 char:1
+ ec2-13-127-209-193.ap-south-1.compute.amazonaws.com
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (ec2-13-127-209-...e.amazonaws.com:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

PS C:\Users\Abhinath O\Downloads> ssh -i win.pem ec2-user@13.127.209.193
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
Last login: Tue Mar  3 06:39:42 2026 from 27.4.244.176
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$
[ec2-user@ip-172-31-34-140 ~]$ cd my-scripts-project/
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$  git checkout rebase-branch
script2.sh: needs merge
error: you need to resolve your current index first
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git remote set-url origin git@github.com:GOPINATH0926/my-scripts-project.git
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git remote -v
origin  git@github.com:GOPINATH0926/my-scripts-project.git (fetch)
origin  git@github.com:GOPINATH0926/my-scripts-project.git (push)
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$  git checkout rebase-branch
script2.sh: needs merge
error: you need to resolve your current index first
[ec2-user@ip-172-31-34-140 my-scripts-project]$ ls
script1.sh  script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$ cat script2.sh
echo Hello from Script2
<<<<<<< HEAD
This is a main update
=======
echo Rebase update
>>>>>>> ac84bd8 (Rebase update)
[ec2-user@ip-172-31-34-140 my-scripts-project]$ vi script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$ vi script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$ vi script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git add script2.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git rebase --continue
Aborting commit due to empty commit message.
error: could not commit staged changes.
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git rebase --continue
[detached HEAD 056facb] Rebase update
 1 file changed, 1 insertion(+)
Successfully rebased and updated refs/heads/rebase-branch.
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git status
On branch rebase-branch
nothing to commit, working tree clean
[ec2-user@ip-172-31-34-140 my-scripts-project]$ echo "Temporary change" >> script1.sh
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git status
On branch rebase-branch
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   script1.sh

no changes added to commit (use "git add" and/or "git commit -a")
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git stash
Saved working directory and index state WIP on rebase-branch: 056facb Rebase update
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git stash
No local changes to save
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git stash apply
On branch rebase-branch
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   script1.sh

no changes added to commit (use "git add" and/or "git commit -a")
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git stash list
stash@{0}: WIP on rebase-branch: 056facb Rebase update
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$
[ec2-user@ip-172-31-34-140 my-scripts-project]$ cat script1.sh
echo Hello from Script1
echo Feature update
Temporary change
[ec2-user@ip-172-31-34-140 my-scripts-project]$ git stash pop
error: Your local changes to the following files would be overwritten by merge:
        script1.sh
Please commit your changes or stash them before you merge.
Aborting
On branch rebase-branch
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   script1.sh
no changes added to commit (use "git add" and/or "git commit -a")
The stash entry is kept in case you need it again.



GITHUB link: https://github.com/GOPINATH0926/my-scripts-project
